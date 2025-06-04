---
layout: "default"
permalink: "/functions/10_gameoflife/"
pkg_name: "miscellaneous"
pkg_version: "1.3.1"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - gameoflife"
category: "miscellaneous"
func_name: "gameoflife"
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
<dt class="deftypefn" id="index-gameoflife"><span class="category-def">Function File: </span><span><code class="def-type">B =</code> <strong class="def-name">gameoflife</strong> <code class="def-code-arguments">(A, ngen, delay)</code><a class="copiable-link" href="#index-gameoflife"></a></span></dt>
<dd><p>Runs the Conways&rsquo; game of life from a given initial state for a given
 number of generations and visualizes the process.
 If ngen is infinity, the process is run as long as A changes.
 Delay sets the pause between two frames. If zero, visualization is not done.
 </p></dd></dl>