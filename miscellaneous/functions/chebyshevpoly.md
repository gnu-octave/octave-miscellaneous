---
layout: "default"
permalink: "/functions/13_chebyshevpoly/"
pkg_name: "miscellaneous"
pkg_version: "1.3.1"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - chebyshevpoly"
category: "miscellaneous"
func_name: "chebyshevpoly"
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
<dt class="deftypefn" id="index-chebyshevpoly"><span class="category-def">Function File: </span><span><code class="def-type"><var class="var">coefs</var>=</code> <strong class="def-name">chebyshevpoly</strong> <code class="def-code-arguments">(<var class="var">kind</var>,<var class="var">order</var>,<var class="var">x</var>)</code><a class="copiable-link" href="#index-chebyshevpoly"></a></span></dt>
<dd> 
<p>Compute the coefficients of the Chebyshev polynomial, given the 
 <var class="var">order</var>. We calculate the Chebyshev polynomial using the recurrence
 relations Tn+1(x) = (2*x*Tn(x) - Tn-1(x)). The <var class="var">kind</var> can be set to
 compute the first or second kind Chebyshev polynomial.
</p>
<p>If the value <var class="var">x</var> is specified, the polynomial is evaluated at <var class="var">x</var>,
 otherwise just the coefficients of the polynomial are returned.
</p> 
<p>This is NOT the generalized Chebyshev polynomial.
</p>
</dd></dl>