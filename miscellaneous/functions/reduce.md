---
layout: "default"
permalink: "/functions/6_reduce/"
pkg_name: "miscellaneous"
pkg_version: "1.3.2"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - reduce"
category: "miscellaneous"
func_name: "reduce"
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
<dt class="deftypefn def-line" id="index-reduce"><span class="category-def">Function File: </span><span><code class="def-type"><var class="var">x</var> =</code> <strong class="def-name">reduce</strong> <code class="def-code-arguments">(<var class="var">function</var>, <var class="var">sequence</var>,<var class="var">initializer</var>)</code><a class="copiable-link" href="#index-reduce"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn def-line" id="index-reduce-1"><span class="category-def">Function File: </span><span><code class="def-type"><var class="var">x</var> =</code> <strong class="def-name">reduce</strong> <code class="def-code-arguments">(<var class="var">function</var>, <var class="var">sequence</var>)</code><a class="copiable-link" href="#index-reduce-1"></a></span></dt>
<dd><p>Implements the &rsquo;reduce&rsquo; operator like in Lisp, or Python.
 Apply function of two arguments cumulatively to the items of sequence, 
 from left to right, so as to reduce the sequence to a single value. For example,
 reduce(@(x,y)(x+y), [1, 2, 3, 4, 5]) calculates ((((1+2)+3)+4)+5).
 The left argument, x, is the accumulated value and the right argument, y, is the 
 update value from the sequence. If the optional initializer is present, it is 
 placed before the items of the sequence in the calculation, and serves as
 a default when the sequence is empty. If initializer is not given and sequence
 contains only one item, the first item is returned.
</p>
<div class="example">
<pre class="example-preformatted">  reduce(@plus,[1:10])
  &rArr; 55
      reduce(@(x,y)(x*y),[1:7]) 
  &rArr; 5040  (actually, 7!)
 </pre></div>

</dd></dl>