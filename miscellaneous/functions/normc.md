---
layout: "default"
permalink: "/functions/5_normc/"
pkg_name: "miscellaneous"
pkg_version: "1.3.2"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - normc"
category: "miscellaneous"
func_name: "normc"
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
<dt class="deftypefn def-line" id="index-normc"><span class="category-def">Function File: </span><span><code class="def-type"><var class="var">x</var> =</code> <strong class="def-name">normc</strong> <code class="def-code-arguments">(<var class="var">M</var>)</code><a class="copiable-link" href="#index-normc"></a></span></dt>
<dd><p>Normalize the columns of a matrix to a length of 1 and return the matrix.
</p>
<div class="example">
<pre class="example-preformatted">   M=[1,2; 3,4];
   normc(M)

   ans =

   0.31623   0.44721
   0.94868   0.89443

 </pre></div>

<p><strong class="strong">See also:</strong> normr.
 </p></dd></dl>