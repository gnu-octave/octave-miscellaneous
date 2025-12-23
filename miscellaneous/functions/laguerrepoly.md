---
layout: "default"
permalink: "/functions/12_laguerrepoly/"
pkg_name: "miscellaneous"
pkg_version: "1.3.2"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - laguerrepoly"
category: "miscellaneous"
func_name: "laguerrepoly"
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
<dt class="deftypefn def-line" id="index-laguerrepoly"><span class="category-def">Function File: </span><span><code class="def-type"><var class="var">coefs</var>=</code> <strong class="def-name">laguerrepoly</strong> <code class="def-code-arguments">(<var class="var">order</var>,<var class="var">x</var>)</code><a class="copiable-link" href="#index-laguerrepoly"></a></span></dt>
<dd> 
<p>Compute the coefficients of the Laguerre polynomial, given the 
 <var class="var">order</var>. We calculate the Laguerre polynomial using the recurrence
 relations, Ln+1(x) = inv(n+1)*((2n+1-x)Ln(x) - nLn-1(x)).
</p> 
<p>If the value <var class="var">x</var> is specified, the polynomial is also evaluated,
 otherwise just the return the coefficients of the polynomial are returned.
</p> 
<p>This is NOT the generalized Laguerre polynomial.
</p>
</dd></dl>