---
layout: "default"
permalink: "/functions/7_partint/"
pkg_name: "miscellaneous"
pkg_version: "1.3.2"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - partint"
category: "miscellaneous"
func_name: "partint"
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
<dt class="deftypefn def-line" id="index-partint_0028n_0029"><span class="category-def">Loadable Function: </span><span><code class="def-type"><var class="var">p</var> =</code> <strong class="def-name">partint(<var class="var">n</var>)</strong><a class="copiable-link" href="#index-partint_0028n_0029"></a></span></dt>
<dd>
<a class="index-entry-id" id="index-partition"></a>

<p>Calculate all integer partitions. Argument <var class="var">n</var> be 
a positive number. A partition is the sum decomposition 
of integers. 
</p>
<p>Example:
</p><div class="example">
<pre class="example-preformatted">partint(4)
</pre></div>
<p>returns
</p><div class="example">
<pre class="example-preformatted">ans =
  4  0  0  0
  2  1  0  0
  0  2  0  0
  1  0  1  0
  0  0  0  1
</pre></div>

<p>This means
</p>

<p>Note:
</p>
<p>partint(n) * [1:n]&rsquo; == n
</p>
<p>Reference:
Joerg Arndt: Algorithms for programmers (http://www.jjj.de), 2006.
</p>
</dd></dl>

<p><strong class="strong">See also:</strong> partcnt.
</p>