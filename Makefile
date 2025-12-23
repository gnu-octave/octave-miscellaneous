## Makefile to simplify Octave Forge package maintenance tasks

PACKAGE = $(shell $(SED) -n -e 's/^Name: *\(\w\+\)/\1/p' DESCRIPTION | $(TOLOWER))
VERSION = $(shell $(SED) -n -e 's/^Version: *\(\w\+\)/\1/p' DESCRIPTION | $(TOLOWER))
DEPENDS = $(shell $(SED) -n -e 's/^Depends[^,]*, \(.*\)/\1/p' DESCRIPTION | $(SED) 's/ *([^()]*),*/ /g')

RELEASE_DIR     = $(PACKAGE)-$(VERSION)
RELEASE_TARBALL = $(PACKAGE)-$(VERSION).tar.gz
HTML_DIR        = $(PACKAGE)-html
HTML_TARBALL    = $(PACKAGE)-html.tar.gz

MD5SUM    ?= md5sum
SED       ?= sed
TAR       ?= tar
GREP      ?= grep

vcs := $(if $(wildcard .hg),hg,$(if $(wildcard .git),git,unknown))
ifeq ($(vcs),hg)
release_dir_dep := .hg/dirstate
HG           := hg
HG_CMD        = $(HG) --config alias.$(1)=$(1) --config defaults.$(1)= $(1)
HG_ID        := $(shell $(call HG_CMD,identify) --id | sed -e 's/+//' )
REPO_TIMESTAMP := $(firstword $(shell $(call HG_CMD,log) --rev $(HG_ID) --template '{date|hgdate}'))
endif
ifeq ($(vcs),git)
release_dir_dep := .git/index
GIT          := git
REPO_TIMESTAMP := $(firstword $(shell $(GIT) log -n1 --date=unix --format="%ad"))
endif

TAR_REPRODUCIBLE_OPTIONS := --sort=name --mtime="@$(REPO_TIMESTAMP)" --owner=0 --group=0 --numeric-owner
TAR_OPTIONS  := --format=ustar $(TAR_REPRODUCIBLE_OPTIONS)

# Follow jwe suggestion on not hinreting these vars from
# the enviroment, so they can be set as command line arguemnts
MKOCTFILE := mkoctfile
OCTAVE    := octave --no-gui

TOLOWER = $(SED) -e 'y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'

AUTOCONF_TARGETS := src/configure src/Makefile

CC_SOURCES  := $(wildcard src/*.cc)
PKG_ADD     := $(shell $(GREP) -sPho '(?<=(//|\#\#) PKG_ADD: ).*' \
                         $(CC_SOURCES))

.PHONY: help dist html release install all check run doc clean maintainer-clean

help:
	@echo "Targets:"
	@echo "   dist             - Create $(RELEASE_TARBALL) for release"
	@echo "   html             - Create $(HTML_TARBALL) for release"
	@echo "   release          - Create both of the above and show md5sums"
	@echo
	@echo "   install          - Install the package in GNU Octave"
	@echo "   all              - Build all oct files"
	@echo "   check            - Execute package tests (w/o install)"
	@echo "   run              - Run Octave with development in PATH (no install)"
	@echo "   doc              - Build Texinfo package manual"
	@echo
	@echo "   clean            - Remove releases, html documentation, and oct files"
	@echo "   maintainer-clean - Additionally remove all generated files"

$(RELEASE_DIR): $(release_dir_dep)
	@echo "Creating package version $(VERSION) release ..."
	-rm -rf $@
ifeq (${vcs},hg)
	$(HG) archive --exclude ".hg*" --exclude Makefile --type files $@
endif
ifeq (${vcs},git)
	git archive --format=tar --prefix="$@/" HEAD | $(TAR) -x
endif
	cd "$@/src" && $(SHELL) ./bootstrap && $(RM) -r "autom4te.cache"
	chmod -R a+rX,u+w,go-w $@

$(RELEASE_TARBALL): $(RELEASE_DIR)
	$(TAR) -cf - $(TAR_OPTIONS) "$(notdir $<)" | gzip -9n > "$@"
	-rm -rf $<

$(HTML_DIR): install
	@echo "Generating HTML documentation. This may take a while ..."
	-rm -rf $@
	$(OCTAVE) --silent \
	  --eval 'graphics_toolkit ("gnuplot");' \
	  --eval 'pkg load generate_html $(PACKAGE);' \
	  --eval 'generate_package_html ("$(PACKAGE)", "$@", "octave-forge");'
	chmod -R a+rX,u+w,go-w $@

$(HTML_TARBALL): $(HTML_DIR)
	$(TAR) -cf - $(TAR_OPTIONS) "$(notdir $<)" | gzip -9n > "$@"
	-rm -rf $<

dist: $(RELEASE_TARBALL)

html: $(HTML_TARBALL)

release: dist html
	@$(MD5SUM) $(RELEASE_TARBALL) $(HTML_TARBALL)

install: $(RELEASE_TARBALL)
	@echo "Installing package locally ..."
	$(OCTAVE) --silent --eval 'pkg install $(RELEASE_TARBALL);'

all:  autoconf_target
	cd src && $(MAKE) $@

check: all
	$(OCTAVE) --silent \
	  --eval 'if(!isempty("$(DEPENDS)")); pkg load $(DEPENDS); endif;' \
	  --eval '$(PKG_ADD); ' \
	  --eval 'addpath (fullfile ([pwd filesep "inst"]));' \
	  --eval 'addpath (fullfile ([pwd filesep "src"]));' \
	  --eval "__run_test_suite__ ({fullfile(pwd, 'inst')}, {})"

run: all
	$(OCTAVE) --silent --persist \
          --eval 'if(!isempty("$(DEPENDS)")); pkg load $(DEPENDS); endif;' \
	  --eval 'addpath (fullfile ([pwd filesep "inst"]));' \
	  --eval 'addpath (fullfile ([pwd filesep "src"]));' \
	  --eval '$(PKG_ADD)'

doc:

clean:
	-rm -rf $(RELEASE_DIR) $(RELEASE_TARBALL) $(HTML_TARBALL) $(HTML_DIR)
	-test -f src/Makefile && $(MAKE) -C src $@ || true

distclean: clean
	-test -f src/Makefile && $(MAKE) -C src $@ || true

maintainer-clean: clean

#
# Recipes for testing purposes
#
src/configure: src/configure.ac
	cd src && $(SHELL) ./bootstrap

src/Makefile: src/Makefile.in src/configure
	cd src && ./configure

autoconf_target: $(AUTOCONF_TARGETS)


