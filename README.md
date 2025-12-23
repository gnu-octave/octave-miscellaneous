Introduction
============

The Octave Miscellaneous package provides tools that don't fit anywhere else.

Functions include:

| Function | Description
|--- | ---
| ascii	        | Print ASCII table.
| cell2cell	    | Return a one-dimensional cell array, extending along dimension DIM.
| chebyshevpoly	| Compute the coefficients of the Chebyshev polynomial, given the ORDER.
| clip	        | Clip X values outside the range.to the value at the boundary of the range.
| colorboard	| Displays a color board corresponding to a numeric matrix M.
| csv2latex	    | Creates a latex file from a csv file.
| gameoflife	| Runs the Conways' game of life from a given initial state.
| hermitepoly	| Compute the coefficients of the Hermite polynomial, given the ORDER.
| hilbert_curve	| Creates an iteration of the Hilbert space-filling curve with N points.
| hc2ind	    | Converts Hilbert curve to linear matrix indices.
| idxmatrix	    | Create matrix of subindexes
| infoskeleton	| Generate TeXinfo skeleton documentation of PROTOTYPE.
| laguerrepoly	| Compute the coefficients of the Laguerre polynomial, given the ORDER.
| legendrepoly	| Compute the coefficients of the Legendre polynomial, given the ORDER.
| match	        | Match Filter like Pythons filter function
| normc	        | Normalize the columns of a matrix to a length of 1 and return the matrix.
| normr	        | Normalize the rows of a matrix to a length of 1 and return the matrix.
| nze	        | Extract nonzero elements of X.
| partcnt       | Calculate integer partition count.
| partint	    | Calculate all integer partitions.
| peano_curve	| Creates an iteration of the Peano space-filling curve with N points.
| physical_constant	| Get physical constant ARG.
| read_options	| The function read_options parses arguments to a function.
| reduce	    | Implements the 'reduce' operator like in Lisp, or Python.
| rolldices	    | Returns N random numbers from the 1:6 range, displaying a visual selection effect.
| sample	    | Return M unique random integer values from 0..N-1, sorted in ascending order.
| slurp_file	| slurp_file return a whole text file F as a string S.
| solvesudoku	| Solves a classical 9x9 sudoku.
| text_waitbar	| Display text-based waitbar/progress bar.
| textable	    | Save MATRIX in LaTeX format (tabular or array).
| truncate	    | Truncates X to ORDER of magnitude.
| units	        | Return the conversion factor from FROMUNIT to TOUNIT measurements.
| zagzig	    | Returns zagzig walk-off of the elements of MTRX.
| z_curve	    | Creates an iteration of the Z-order space-filling curve with N points.
| zigzag	    | Returns zigzag walk-off of the elements of MTRX.

Requirements
============

* Octave >= 4.0.0

* GNU Units to support unit conversion

* Termcap or ncurses


Installing
==========

To install, run the octave package manager:

1. If running Windows, the package may already be installed:

   pkg list miscellaneous

2. To install from internet sources:
   pkg install -forge miscellaneous

3. To install from a local tarball.
   pkg install miscellaneous-XXXXXXX.tar.gz
   Where XXXXXXX is the version of the the downloaded tarball.

Usage:
======

1. Load the package.
   pkg load miscellaneous
   (Required each time Octave is started)

2. Start using the functions!

Documentation
==============

See the function list for octave-miscellaneous on [octave github](https://gnu-octave.github.io/octave-miscellaneous/functions/) for function documentation.

Known limitations and bugs
==========================

