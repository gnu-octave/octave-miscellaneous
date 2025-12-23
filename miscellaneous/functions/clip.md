---
layout: "default"
permalink: "/functions/4_clip/"
pkg_name: "miscellaneous"
pkg_version: "1.3.2"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - clip"
category: "miscellaneous"
func_name: "clip"
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
<dt class="deftypefn def-line" id="index-clip"><span class="category-def">Function File: </span><span><code class="def-type"><var class="var">x</var> =</code> <strong class="def-name">clip</strong> <code class="def-code-arguments">(<var class="var">x</var>)</code><a class="copiable-link" href="#index-clip"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn def-line" id="index-clip-1"><span class="category-def">Function File: </span><span><code class="def-type"><var class="var">x</var> =</code> <strong class="def-name">clip</strong> <code class="def-code-arguments">(<var class="var">x</var>, <var class="var">hi</var>)</code><a class="copiable-link" href="#index-clip-1"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn def-line" id="index-clip-2"><span class="category-def">Function File: </span><span><code class="def-type"><var class="var">x</var> =</code> <strong class="def-name">clip</strong> <code class="def-code-arguments">(<var class="var">x</var>, [<var class="var">lo</var>, <var class="var">hi</var>])</code><a class="copiable-link" href="#index-clip-2"></a></span></dt>
<dd><p>Clip <var class="var">x</var> values outside the range.to the value at the boundary of the
 range.
</p>
<p>Range boundaries, <var class="var">lo</var> and <var class="var">hi</var>, default to 0 and 1 respectively.
</p>
<p><var class="var">x</var> = clip (<var class="var">x</var>)
   Clip to range [0, 1]
</p>
<p><var class="var">x</var> = clip (<var class="var">x</var>, <var class="var">hi</var>)
   Clip to range [0, <var class="var">hi</var>]
</p>
<p><var class="var">x</var> = clip (<var class="var">x</var>, [<var class="var">lo</var>, <var class="var">hi</var>])
   Clip to range [<var class="var">lo</var>, <var class="var">hi</var>]
 </p></dd></dl>