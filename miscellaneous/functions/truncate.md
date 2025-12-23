---
layout: "default"
permalink: "/functions/8_truncate/"
pkg_name: "miscellaneous"
pkg_version: "1.3.2"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - truncate"
category: "miscellaneous"
func_name: "truncate"
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
<dt class="deftypefn def-line" id="index-truncate"><span class="category-def">Function File: </span><span><code class="def-type"><var class="var">y</var> =</code> <strong class="def-name">truncate</strong> <code class="def-code-arguments">(<var class="var">x</var>, <var class="var">order</var>, <var class="var">method</var>)</code><a class="copiable-link" href="#index-truncate"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn def-line" id="index-truncate-1"><span class="category-def">Function File: </span><span><code class="def-type"><var class="var">y</var> =</code> <strong class="def-name">truncate</strong> <code class="def-code-arguments">(&hellip;, <var class="var">method</var>)</code><a class="copiable-link" href="#index-truncate-1"></a></span></dt>
<dd><p>Truncates <var class="var">X</var> to <var class="var">order</var> of magnitude.
</p>
<p>The optional argument <var class="var">method</var> can be a hanlde to a function used to
 truncate the number. Default is <code class="code">round</code>.
</p>
<p>Examples:
 </p><div class="example">
<pre class="example-preformatted">    format long
    x = 987654321.123456789;
    order = [3:-1:0 -(1:3)]';
    y = truncate (x,order)
 y =
   987654000.000000
   987654300.000000
   987654320.000000
   987654321.000000
   987654321.100000
   987654321.120000
   987654321.123000

    format
    [truncate(0.127,-2), truncate(0.127,-2,@floor)]
 ans =
    0.13000   0.12000

 </pre></div>


<p><strong class="strong">See also:</strong> round,fix,ceil,floor.
 </p></dd></dl>