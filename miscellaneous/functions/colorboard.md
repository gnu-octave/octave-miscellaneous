---
layout: "default"
permalink: "/functions/10_colorboard/"
pkg_name: "miscellaneous"
pkg_version: "1.3.2"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - colorboard"
category: "miscellaneous"
func_name: "colorboard"
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
<dt class="deftypefn def-line" id="index-_0028m_002c"><span class="category-def">Function File: </span><span><code class="def-type">colorboard</code> <strong class="def-name">(<var class="var">m</var>,</strong> <code class="def-code-arguments"><var class="var">palette</var>, <var class="var">options</var>)</code><a class="copiable-link" href="#index-_0028m_002c"></a></span></dt>
<dd><p>Displays a color board corresponding to a numeric matrix <var class="var">m</var>.
 <var class="var">m</var> should contain zero-based indices of colors.
 The available range of indices is given by the <var class="var">palette</var> argument,
 which can be one of the following:
</p>
<ul class="itemize mark-bullet">
<li>&quot;b&amp;w&quot;
   Black &amp; white, using reverse video mode. This is the default if <var class="var">m</var> is logical.
 </li><li>&quot;ansi8&quot;
   The standard ANSI 8 color palette. This is the default unless <var class="var">m</var> is logical.
 </li><li>&quot;aix16&quot;
   The AIXTerm extended 16-color palette. Uses codes 100:107 for bright colors.
 </li><li>&quot;xterm16&quot;
   The first 16 system colors of the Xterm 256-color palette.
 </li><li>&quot;xterm216&quot;
   The 6x6x6 color cube of the Xterm 256-color palette.
   In this case, matrix can also be passed as a MxNx3 RGB array with values 0..5.
 </li><li>&quot;grayscale&quot;
   The 24 grayscale levels of the Xterm 256-color palette.
 </li><li>&quot;xterm256&quot;
   The full Xterm 256-color palette. The three above palettes together.
 </li></ul>

<p><var class="var">options</var> comprises additional options. The recognized options are:
</p> 
<ul class="itemize mark-bullet">
<li>&quot;indent&quot;
   The number of spaces by which the board is indented. Default 2.
 </li><li>&quot;spaces&quot;
   The number of spaces forming one field. Default 2.
 </li><li>&quot;horizontalseparator&quot;
   The character used for horizontal separation of the table. Default &quot;#&quot;.
 </li><li>&quot;verticalseparator&quot;
   The character used for vertical separation of the table. Default &quot;|&quot;.
 </li></ul>
</dd></dl>