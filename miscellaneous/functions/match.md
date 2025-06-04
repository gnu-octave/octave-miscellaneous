---
layout: "default"
permalink: "/functions/5_match/"
pkg_name: "miscellaneous"
pkg_version: "1.3.1"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - match"
category: "miscellaneous"
func_name: "match"
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
<dt class="deftypefn" id="index-_003d"><span class="category-def">Function File: </span><span><code class="def-type"><var class="var">result</var></code> <strong class="def-name">=</strong> <code class="def-code-arguments"> match ( <var class="var">fun_handle</var>, <var class="var">iterable</var> )</code><a class="copiable-link" href="#index-_003d"></a></span></dt>
<dd><p>match is filter, like Lisp&rsquo;s ( &amp; numerous other language&rsquo;s ) function for
 Python has a built-in filter function which takes two arguments,
 a function and a list, and returns a list. &rsquo;match&rsquo; performs the same
 operation like filter in Python. The match applies the
 function to each of the element in the <var class="var">iterable</var> and collects
 that the result of a function applied to each of the data structure&rsquo;s
 elements in turn, and the return values are collected as a list of 
 input arguments, whenever the function-result is &rsquo;true&rsquo; in Octave
 sense. Anything (1,true,?) evaluating to true, the argument is
 saved into the return value.
</p>
<p><var class="var">fun_handle</var> can either be a function name string or a
 function handle (recommended).
</p> 
<p>Typically you can use it as,
 </p><div class="example">
<pre class="example-preformatted"> match(@(x) ( x &gt;= 1 ), [-1 0 1 2])
       &rArr;   1   2
 </pre></div>

<p><strong class="strong">See also:</strong> reduce, cellfun, arrayfun, cellfun, structfun, spfun.
 </p></dd></dl>