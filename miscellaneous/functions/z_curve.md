---
layout: "default"
permalink: "/functions/7_zcurve/"
pkg_name: "miscellaneous"
pkg_version: "1.3.2"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - z_curve"
category: "miscellaneous"
func_name: "z_curve"
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
<dt class="deftypefn def-line" id="index-z_005fcurve"><span class="category-def">Function file: </span><span><code class="def-type"><var class="var">x</var>, <var class="var">y</var></code> <strong class="def-name">z_curve</strong> <code class="def-code-arguments">(<var class="var">n</var>)</code><a class="copiable-link" href="#index-z_005fcurve"></a></span></dt>
<dd><p>Creates an iteration of the Z-order space-filling curve with <var class="var">n</var> points. 
 The argument <var class="var">n</var> must be of the form <code class="code">2^M</code>, where <var class="var">m</var> is an 
 integer greater than 0.
</p> 
<div class="example">
<pre class="example-preformatted"> n = 8
 [x ,y] = z_curve (n);
 line (x, y, &quot;linewidth&quot;, 4, &quot;color&quot;, &quot;blue&quot;);
 </pre></div>
 
</dd></dl>