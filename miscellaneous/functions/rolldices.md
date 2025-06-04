---
layout: "default"
permalink: "/functions/9_rolldices/"
pkg_name: "miscellaneous"
pkg_version: "1.3.1"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - rolldices"
category: "miscellaneous"
func_name: "rolldices"
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
<dt class="deftypefn" id="index-_0028n_0029"><span class="category-def">Function File: </span><span><code class="def-type">rolldices</code> <strong class="def-name">(<var class="var">n</var>)</strong><a class="copiable-link" href="#index-_0028n_0029"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-_0028n_002c"><span class="category-def">Function File: </span><span><code class="def-type">rolldices</code> <strong class="def-name">(<var class="var">n</var>,</strong> <code class="def-code-arguments"><var class="var">nrep</var>, <var class="var">delay</var>)</code><a class="copiable-link" href="#index-_0028n_002c"></a></span></dt>
<dd><p>Returns <var class="var">n</var> random numbers from the 1:6 range, displaying a visual selection
 effect.
</p>
<p><var class="var">nrep</var> sets the number of rolls, <var class="var">delay</var> specifies time between
 successive rolls in seconds. Default is nrep = 25 and delay = 0.1.
</p>
<p>Requires a terminal with ANSI escape sequences enabled.
 </p></dd></dl>