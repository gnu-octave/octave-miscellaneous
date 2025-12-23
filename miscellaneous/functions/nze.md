---
layout: "default"
permalink: "/functions/3_nze/"
pkg_name: "miscellaneous"
pkg_version: "1.3.2"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - nze"
category: "miscellaneous"
func_name: "nze"
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
<dt class="deftypefn def-line" id="index-nze"><span class="category-def">Function File: </span><span><code class="def-type">[<var class="var">y</var>, <var class="var">f</var>] =</code> <strong class="def-name">nze</strong> <code class="def-code-arguments">(<var class="var">x</var>)</code><a class="copiable-link" href="#index-nze"></a></span></dt>
<dd><p>Extract nonzero elements of <var class="var">x</var>. Equivalent to <code class="code"><var class="var">x</var>(<var class="var">x</var> != 0)</code>.
 Optionally, returns also linear indices.
 </p></dd></dl>