AC_PREREQ([2.67])
AC_INIT([Octave-Forge miscellaneous package],[1.3.2])
AC_CONFIG_HEADERS([config.h])

# Avoid warnings for redefining AH-generated preprocessor symbols of
# Octave.
AH_TOP([#include "undef-ah-octave.h"])

AC_CONFIG_MACRO_DIRS([m4])

AC_PROG_GREP
AC_PROG_SED

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
test -z "$MKOCTFILE" &&	AC_MSG_ERROR([no mkoctfile found on path])

dnl Check for octave-config
AC_CHECK_PROG(OCTAVE_CONFIG,octave-config,octave-config)
test -z "OCTAVE_CONFIG" && OCTAVE_CONFIG=$MKOCTFILE

# try get around possible spaces in the path
if test "X${IGNORE_MINGW_PATH_MODIFICATION}" == "X"; then
  MSYSTEM="${MSYSTEM}"
else
  MSYSTEM="none"
fi

if test "X${IGNORE_MINGW_PATH_MODIFICATION}" == "X"; then
case X$MSYSTEM in
  XMINGW*)
    # try demangle spaces in escaped input strings
    MKOCTFILE=`echo $MKOCTFILE | $SED "s,\\\\\ ,?,g"`
    OCTAVE_CONFIG=`echo $OCTAVE_CONFIG | $SED "s,\\\\\ ,?,g"`
    ;;
  *)
    ;;
esac
fi

# check for some octave functionality
save_altsyms_CXX="$CXX"
save_altsyms_CXXFLAGS="$CXXFLAGS"
save_altsyms_LDFLAGS="$LDFLAGS"
save_altsyms_LIBS="$LIBS"
OCTINCLUDEDIR="${OCTINCLUDEDIR:-`$MKOCTFILE -p OCTINCLUDEDIR`}/.."
OCTLIBDIR=${OCTLIBDIR:-`$MKOCTFILE -p OCTLIBDIR`}

case X$MSYSTEM in
  XMINGW64*)
    OCTAVE_HOME=`${MKOCTFILE} -p OCTAVE_HOME | $SED 's,\\\\,/,g'`
    # change \ to / and replace octave home part with mingw part
    OCTINCLUDEDIR=`echo $OCTINCLUDEDIR | $SED -e 's,\\\\,/,g' -e "s,${OCTAVE_HOME},/mingw64,g"`
    OCTLIBDIR=`echo $OCTLIBDIR | $SED -e 's,\\\\,/,g' -e "s,${OCTAVE_HOME},/mingw64,g"`
    ;;
  XMINGW32*)
    OCTAVE_HOME=`${MKOCTFILE} -p OCTAVE_HOME | $SED 's,\\\\,/,g'`
    # change \ to / and replace octave home part with mingw part
    OCTINCLUDEDIR=`echo $OCTINCLUDEDIR | $SED -e 's,\\\\,/,g' -e "s,${OCTAVE_HOME},/mingw32,g"`
    OCTLIBDIR=`echo $OCTLIBDIR | $SED -e 's,\\\\,/,g -e "s,${OCTAVE_HOME},/mingw32,g"'`
    ;;
  *)
    ;;
esac

CXX=`${MKOCTFILE} -p CXX`
CXXFLAGS="-I$OCTINCLUDEDIR $CXXFLAGS"
LDFLAGS="-L$OCTLIBDIR $LDFLAGS"
LIBS="-loctinterp $LIBS"

OF_OCTAVE_LIST_ALT_SYMS([
[dnl
  [oct_randu],
  [octave::rand_uniform<double>],
  [[octave::rand_uniform<double> ();]],
  [OCTAVE__RAND_UNIFORM],
  [[#include <octave/randmtzig.h>]],
  [[#include <octave/randmtzig.h>]]
],

[dnl
  [is_cell],
  [iscell],
  [[octave_value ().iscell ();]],
  [OV_ISCELL],
  [],
  []
],

[dnl
  [is_numeric_type],
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

AC_CONFIG_FILES([Makefile])
AC_OUTPUT
