---
layout: "default"
permalink: "/functions/6_hc2ind/"
pkg_name: "miscellaneous"
pkg_version: "1.3.1"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - hc2ind"
category: "miscellaneous"
func_name: "hc2ind"
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
<dl class="first-deffn">
<dt class="deffn" id="index-_003d"><span class="category-def"><var class="var">k</var>: </span><span><strong class="def-name">=</strong> <var class="def-var-arguments">hc2ind (<var class="var">Z</var>)</var><a class="copiable-link" href="#index-_003d"></a></span></dt>
<dt class="deffnx def-cmd-deffn" id="index-_003d-1"><span class="category-def"><var class="var">k</var>: </span><span><strong class="def-name">=</strong> <var class="def-var-arguments">hc2ind (<var class="var">X</var>,<var class="var">Y</var>)</var><a class="copiable-link" href="#index-_003d-1"></a></span></dt>
<dd><p>Converts Hilbert curve to linear matrix indices.
</p> 
<div class="example">
<pre class="example-preformatted"> [x,y] = hilbert_curve (2);
 hc2ind (x, y);
 ans =
   1
   2
   4
   3
 </pre></div>
 
</dd></dl>