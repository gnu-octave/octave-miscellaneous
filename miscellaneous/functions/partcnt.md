---
layout: "default"
permalink: "/functions/7_partcnt/"
pkg_name: "miscellaneous"
pkg_version: "1.3.2"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - partcnt"
category: "miscellaneous"
func_name: "partcnt"
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
<dt class="deftypefn def-line" id="index-partcnt_0028n_0029"><span class="category-def">Loadable Function: </span><span><code class="def-type"><var class="var">p</var> =</code> <strong class="def-name">partcnt(<var class="var">n</var>)</strong><a class="copiable-link" href="#index-partcnt_0028n_0029"></a></span></dt>
<dd>
<a class="index-entry-id" id="index-partition-count"></a>

<p>Calculate integer partition count. Argument <var class="var">n</var> be scalar, vector
or matrix of non-negative numbers. A partition is the sum decomposition 
of integers. 
</p>
<p>Example:
</p><div class="example">
<pre class="example-preformatted">partcnt([1, 5; 17 -3])
</pre></div>
<p>returns
</p><div class="example">
<pre class="example-preformatted">ans =
    1     7
  297   NaN
</pre></div>

<p>Reference:
Joerg Arndt: Algorithms for programmers (http://www.jjj.de), 2006.
</p>
</dd></dl>

<p><strong class="strong">See also:</strong> partint.
</p>