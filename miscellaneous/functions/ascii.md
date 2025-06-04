---
layout: "default"
permalink: "/functions/5_ascii/"
pkg_name: "miscellaneous"
pkg_version: "1.3.1"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - ascii"
category: "miscellaneous"
func_name: "ascii"
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
- id: "news"
  name: "News"
  url: "/news"
---
<dl class="first-deftypefn">
<dt class="deftypefn" id="index-ascii"><span class="category-def">Function File: </span><span><strong class="def-name">ascii</strong> <code class="def-code-arguments">()</code><a class="copiable-link" href="#index-ascii"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-ascii-1"><span class="category-def">Function File: </span><span><strong class="def-name">ascii</strong> <code class="def-code-arguments">(<var class="var">columns</var>)</code><a class="copiable-link" href="#index-ascii-1"></a></span></dt>
<dd><p>Print ASCII table.
</p>
<p>If this function is called without any input argument and without any output
 argument then prints a nice ASCII-table (excluding special characters with
 hexcode 0x00 to 0x20).  The input argument <var class="var">columns</var> specifies the
 number of columns and defaults to 4.
</p>
<p>If it is called with one output argument then return the ASCII table as
 a string without displaying anything.  Run <code class="code">demo ascii</code> for examples.
</p>

<p><strong class="strong">See also:</strong> char, isascii, toascii.
 </p></dd></dl>