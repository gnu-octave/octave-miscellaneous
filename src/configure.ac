AC_PREREQ([2.67])
AC_INIT([Octave-Forge miscellaneous package], [1.2.0+])
AC_CONFIG_HEADERS([config.h])

# Avoid warnings for redefining AH-generated preprocessor symbols of
# Octave.
AH_TOP([#include "undef-ah-octave.h"])

AC_CONFIG_MACRO_DIRS([m4])

## these are C headers required for text_waitbar
AC_CHECK_HEADER([term.h],
  [],
  [AC_CHECK_HEADER([termcap.h],
    [],
    [AC_CHECK_HEADER([ncurses/termcap.h],
      [],
      [AC_MSG_ERROR([Unable to find ncurses library headers.])]
    ])
  ])
)

AC_PROG_CXX
AC_LANG(C++)

## this is required for the units.m function
AC_CHECK_PROG(UNITS_AVAILABLE, units, yes)
if test x"$UNITS_AVAILABLE" != x"yes" ; then
  AC_MSG_ERROR([The program GNU Units is required to install $PACKAGE_NAME.])
fi

dnl Check for mkoctfile
AC_CHECK_PROG(MKOCTFILE,mkoctfile,mkoctfile)
test -z "$MKOCTFILE" &&	AC_MSG_WARN([no mkoctfile found on path])

# check for some octave functionality
save_altsyms_CXX="$CXX"
save_altsyms_CXXFLAGS="$CXXFLAGS"
save_altsyms_LDFLAGS="$LDFLAGS"
save_altsyms_LIBS="$LIBS"
OCTINCLUDEDIR=${OCTINCLUDEDIR:-`$MKOCTFILE -p INCFLAGS`}
OCTLIBDIR=${OCTLIBDIR:-`$MKOCTFILE -p OCTLIBDIR`}
CXX=`${MKOCTFILE} -p CXX`
CXXFLAGS="$OCTINCLUDEDIR $CXXFLAGS"
LDFLAGS="-L$OCTLIBDIR $LDFLAGS"
LIBS="-loctinterp $LIBS"

OF_OCTAVE_LIST_ALT_SYMS([
[dnl
  [oct_randu],
  [octave::rand_uniform<double>],
  [[octave::rand_uniform<double> ();]],
  [OCTAVE__RAND_UNIFORM],
  [[#include <randmtzig.h>]],
  [[#include <randmtzig.h>]]
],

[dnl
  [is_numeric],
  [isnumeric],
  [[octave_value ().isnumeric ();]],
  [OV_ISNUMERIC],
  [],
  []
]

],[oct-alt-includes.h])

CXX=$save_altsyms_CXX
CXXFLAGS=$save_altsyms_CXXFLAGS
LDFLAGS=$save_altsyms_LDFLAGS
LIBS=$save_altsyms_LIBS

AC_OUTPUT(Makefile)
