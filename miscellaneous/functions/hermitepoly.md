---
layout: "default"
permalink: "/functions/11_hermitepoly/"
pkg_name: "miscellaneous"
pkg_version: "1.3.1"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - hermitepoly"
category: "miscellaneous"
func_name: "hermitepoly"
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
<dt class="deftypefn" id="index-hermitepoly"><span class="category-def">Function File: </span><span><code class="def-type"><var class="var">coefs</var>=</code> <strong class="def-name">hermitepoly</strong> <code class="def-code-arguments">(<var class="var">order</var>,<var class="var">x</var>)</code><a class="copiable-link" href="#index-hermitepoly"></a></span></dt>
<dd> 
<p>Compute the coefficients of the Hermite polynomial, given the 
 <var class="var">order</var>. We calculate the Hermite polynomial using the recurrence
 relations, Hn+1(x) = 2x.Hn(x) - 2nHn-1(x).
</p> 
<p>If the value <var class="var">x</var> is specified, the polynomial is also evaluated,
 otherwise just the return the coefficients.
</p> 
</dd></dl>