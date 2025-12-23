---
layout: "default"
permalink: "/functions/5_normr/"
pkg_name: "miscellaneous"
pkg_version: "1.3.2"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - normr"
category: "miscellaneous"
func_name: "normr"
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
<dt class="deftypefn def-line" id="index-normr"><span class="category-def">Function File: </span><span><code class="def-type"><var class="var">x</var> =</code> <strong class="def-name">normr</strong> <code class="def-code-arguments">(<var class="var">M</var>)</code><a class="copiable-link" href="#index-normr"></a></span></dt>
<dd><p>Normalize the rows of a matrix to a length of 1 and return the matrix.
</p>
<div class="example">
<pre class="example-preformatted">   M=[1,2; 3,4];
   normr(M)

   ans =

   0.44721   0.89443
   0.60000   0.80000

 </pre></div>

<p><strong class="strong">See also:</strong> normc.
 </p></dd></dl>