---
layout: "default"
permalink: "/functions/12_infoskeleton/"
pkg_name: "miscellaneous"
pkg_version: "1.3.1"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - infoskeleton"
category: "miscellaneous"
func_name: "infoskeleton"
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
<dt class="deftypefn" id="index-index_005fstr_002c"><span class="category-def">Function File: </span><span><code class="def-type">infoskeleton(<var class="var">prototype</var>,</code> <strong class="def-name"><var class="var">index_str</var>,</strong> <code class="def-code-arguments"><var class="var">see_also</var>)</code><a class="copiable-link" href="#index-index_005fstr_002c"></a></span></dt>
<dd><p>Generate TeXinfo skeleton documentation of <var class="var">prototype</var>.
</p>
<p>Optionally <var class="var">index_str</var> and <var class="var">see_also</var> can be specified.
</p>
<p>Usage of this function is typically,
 </p><div class="example">
<pre class="example-preformatted"> infoskeleton('[V,Q] = eig( A )','linear algebra','eigs, chol, qr, det')
 </pre></div>

<p><strong class="strong">See also:</strong> info.
 </p></dd></dl>