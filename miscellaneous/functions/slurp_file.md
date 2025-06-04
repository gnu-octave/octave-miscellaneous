---
layout: "default"
permalink: "/functions/10_slurpfile/"
pkg_name: "miscellaneous"
pkg_version: "1.3.1"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - slurp_file"
category: "miscellaneous"
func_name: "slurp_file"
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
<dt class="deftypefn" id="index-slurp_005ffile"><span class="category-def">Function File: </span><span><code class="def-type"><var class="var">s</var> =</code> <strong class="def-name">slurp_file</strong> <code class="def-code-arguments">( f )</code><a class="copiable-link" href="#index-slurp_005ffile"></a></span></dt>
<dd><p>slurp_file return a whole text file <var class="var">f</var> as a string <var class="var">s</var>.
</p>
<p><var class="var">f</var> : string : filename
 <var class="var">s</var> : string : contents of the file
</p>
<p>If <var class="var">f</var> is not an absolute filename, and 
 is not an immediately accessible file, slurp_file () 
 will look for <var class="var">f</var> in the path.
 </p></dd></dl>