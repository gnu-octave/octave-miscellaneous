---
layout: "default"
permalink: "/functions/9_idxmatrix/"
pkg_name: "miscellaneous"
pkg_version: "1.3.1"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - idxmatrix"
category: "miscellaneous"
func_name: "idxmatrix"
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
<dl class="first-deffn first-defun-alias-first-deffn">
<dt class="deffn defun-alias-deffn" id="index-m-_003d"><span class="category-def">Function: </span><span><strong class="def-name"><var class="var">m</var> =</strong> <var class="def-var-arguments">idxmatrix (<var class="var">sz</var>)</var><a class="copiable-link" href="#index-m-_003d"></a></span></dt>
<dd><p>Create matrix of subindexes
</p>
<p>Create a matrix with each element correspoding
 to its subindex in the matrix, i.e.
</p>
<div class="example">
<pre class="example-preformatted">     <var class="var">m</var>(i,j,k) = i * 100 + j * 10 + k = ijk
 </pre></div>

<p>The input <var class="var">sz</var> defines the size of the matrix.
</p>
<p>Example:
</p>
<div class="example">
<pre class="example-preformatted">

 M = idxmatrix ([2 3 2])
 ans(:,:,1) =

   111   121   131
   211   221   231

ans(:,:,2) =

   112   122   132
   212   222   232
 </pre></div>


<p><strong class="strong">See also:</strong> sub2ind.
 </p></dd></dl>