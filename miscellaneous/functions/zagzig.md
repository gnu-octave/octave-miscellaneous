---
layout: "default"
permalink: "/functions/6_zagzig/"
pkg_name: "miscellaneous"
pkg_version: "1.3.2"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - zagzig"
category: "miscellaneous"
func_name: "zagzig"
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
<dt class="deftypefn def-line" id="index-zagzig"><span class="category-def">Function File: </span><span><strong class="def-name">zagzig</strong> <code class="def-code-arguments">(<var class="var">mtrx</var>)</code><a class="copiable-link" href="#index-zagzig"></a></span></dt>
<dd><p>Returns zagzig walk-off of the elements of <var class="var">mtrx</var>.
 Essentially it walks the matrix in a Z-fashion.
</p>  
<p>mat = 
   1   4   7
   2   5   8
   3   6   9
 then zagzag(mat) gives the output,
 [1 4 2 3 5 7 8 6 9], by walking as
 shown in the figure from pt 1 in that order of output.
 The argument <var class="var">mtrx</var> should be a MxN matrix. One use of
 zagzig the use with picking up DCT coefficients
 like in the JPEG algorithm for compression.
</p>
<p>An example of zagzig use:
 </p><div class="example">
<pre class="example-preformatted"> </pre><div class="group"><pre class="example-preformatted"> mat = reshape(1:9,3,3);
 zagzag(mat)
 ans =[1 4 2 3 5 7 8 6 9]

 </pre></div><pre class="example-preformatted"> </pre></div>

</dd></dl>

<p><strong class="strong">See also:</strong> zigzag.
</p>