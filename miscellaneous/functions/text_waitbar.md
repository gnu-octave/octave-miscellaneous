---
layout: "default"
permalink: "/functions/12_textwaitbar/"
pkg_name: "miscellaneous"
pkg_version: "1.3.1"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - text_waitbar"
category: "miscellaneous"
func_name: "text_waitbar"
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
<dt class="deftypefn" id="index-text_005fwaitbar"><span class="category-def">Loadable Function: </span><span><strong class="def-name">text_waitbar</strong> <code class="def-code-arguments">(<var class="var">frac</var>)</code><a class="copiable-link" href="#index-text_005fwaitbar"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-text_005fwaitbar-1"><span class="category-def">Loadable Function: </span><span><strong class="def-name">text_waitbar</strong> <code class="def-code-arguments">(<var class="var">frac</var>, <var class="var">msg</var>)</code><a class="copiable-link" href="#index-text_005fwaitbar-1"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-text_005fwaitbar-2"><span class="category-def">Loadable Function: </span><span><strong class="def-name">text_waitbar</strong> <code class="def-code-arguments">(0, <var class="var">n</var>)</code><a class="copiable-link" href="#index-text_005fwaitbar-2"></a></span></dt>
<dd><p>Display text-based waitbar/progress bar.
</p>
<p>This function is similar to the <code class="code">waitbar</code> function but is a text, rather
than graphical bar. The waitbar is filled to fraction <var class="var">frac</var> which must
be in the range [0, 1]. Values exactly equal to 0 or 1 clear the waitbar.
</p>
<p>The optional message <var class="var">msg</var> sets the waitbar caption. If Octave is running
in a smart terminal, the width is automatically detected, and <var class="var">msg</var> is
displayed in the waitbar (and truncated if it is too long). Otherwise,
<var class="var">msg</var> is not displayed and the width is initialized to a default of 50
characters, or it can be set to <var class="var">n</var> characters with
<code class="code">text_waitbar (0, <var class="var">n</var>)</code>. If no terminal is detected (such as when
Octave is run in batch mode and output is redirected), no output is
generated.
</p>
<p>Additional arguments are ignored for compatibility with the graphical
counterpart of this function but there are no guarantees of perfect
compatibility.
</p>

<p><strong class="strong">See also:</strong> waitbar.
</p></dd></dl>