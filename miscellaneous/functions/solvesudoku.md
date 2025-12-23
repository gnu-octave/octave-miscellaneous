---
layout: "default"
permalink: "/functions/11_solvesudoku/"
pkg_name: "miscellaneous"
pkg_version: "1.3.2"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - solvesudoku"
category: "miscellaneous"
func_name: "solvesudoku"
navigation:
- id: "overview"
  name: "Overview"
  url: "/index"
- id: "Functions"
  name: "Function Reference"
  url: "/functions"
- id: "13_miscellaneous"
  name: "&nbsp;&nbsp;miscellaneous"
  url: "/functions/#13_miscellaneous"
  subitems:
- id: "news"
  name: "News"
  url: "/news"
---
<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line" id="index-ntrial_005d"><span class="category-def">Function File: </span><span><code class="def-type">[<var class="var">x</var>,</code> <strong class="def-name"><var class="var">ntrial</var>]</strong> <code class="def-code-arguments">= solvesudoku (<var class="var">s</var>)</code><a class="copiable-link" href="#index-ntrial_005d"></a></span></dt>
<dd><p>Solves a classical 9x9 sudoku. <var class="var">s</var> should be a 9x9 array with 
 numbers from 0:9. 0 indicates empty field.
 Returns the filled table or empty matrix if no solution exists.
 If requested, <var class="var">ntrial</var> returns the number of trial-and-error steps needed.
 </p></dd></dl>