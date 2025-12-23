---
layout: "default"
permalink: "/functions/5_units/"
pkg_name: "miscellaneous"
pkg_version: "1.3.2"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - units"
category: "miscellaneous"
func_name: "units"
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
<dt class="deftypefn def-line" id="index-units"><span class="category-def">Function File: </span><span><strong class="def-name">units</strong> <code class="def-code-arguments">(<var class="var">fromUnit</var>, <var class="var">toUnit</var>)</code><a class="copiable-link" href="#index-units"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn def-line" id="index-units-1"><span class="category-def">Function File: </span><span><strong class="def-name">units</strong> <code class="def-code-arguments">(<var class="var">fromUnit</var>, <var class="var">toUnit</var>, <var class="var">x</var>)</code><a class="copiable-link" href="#index-units-1"></a></span></dt>
<dd><p>Return the conversion factor from <var class="var">fromUnit</var> to <var class="var">toUnit</var> measurements.
</p>
<p>This is an octave interface to the <strong class="strong">GNU Units</strong> program which comes
 with an annotated, extendable database defining over two thousand 
 measurement units.  See <code class="code">man units</code> or 
 <a class="url" href="http://www.gnu.org/software/units">http://www.gnu.org/software/units</a> for more information.
 If the optional argument <var class="var">x</var> is supplied, return that argument
 multiplied by the conversion factor.  For example, to 
 convert three values from miles per hour into meters per second:
</p>
<div class="example">
<pre class="example-preformatted"> units (&quot;mile/hr&quot;, &quot;m/sec&quot;, [30, 55, 75])
 ans =

   13.411  24.587  33.528
 </pre></div>
</dd></dl>