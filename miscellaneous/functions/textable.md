---
layout: "default"
permalink: "/functions/8_textable/"
pkg_name: "miscellaneous"
pkg_version: "1.3.1"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - textable"
category: "miscellaneous"
func_name: "textable"
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
<dt class="deftypefn" id="index-textable"><span class="category-def">Function File: </span><span><strong class="def-name">textable</strong> <code class="def-code-arguments">(<var class="var">matrix</var>)</code><a class="copiable-link" href="#index-textable"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-textable-1"><span class="category-def">Function File: </span><span><strong class="def-name">textable</strong> <code class="def-code-arguments">(<var class="var">matrix</var>, <var class="var">params</var>, &hellip;)</code><a class="copiable-link" href="#index-textable-1"></a></span></dt>
<dd><p>Save <var class="var">matrix</var> in LaTeX format (tabular or array).
</p>
<p>The input matrix must be numeric and two dimensional.
</p>
<p>The generated LaTeX source can be saved directly to a file with the option
 <code class="command">file</code>. The file can then be inserted in any latex document by using
 the <code class="code">\input{latex file name without .tex}</code> statement.
</p>
<p>Available parameters are:
 </p><ul class="itemize mark-bullet">
<li><code class="code">file</code>: filename to save the generated LaTeX source. Requires a string
 as value.
 </li><li><code class="code">rlines</code>: display row lines.
 </li><li><code class="code">clines</code>: display column lines.
 </li><li><code class="code">align</code>: column alignment. Valid values are &lsquo;l&rsquo;, &lsquo;c&rsquo; and &lsquo;r&rsquo; for
 center, left and right (default).
 </li><li><code class="code">math</code>: create table in array environment inside displaymath
 environment. It requires a string as value which will be the name of the matrix.
 </li></ul>

<p>The basic usage is to generate the source for a table without lines and right
 alignment (default values):
 </p><div class="example">
<pre class="example-preformatted"> </pre><div class="group"><pre class="example-preformatted"> textable (data)
     &rArr;
        \begin{tabular}{rrr}
            0.889283 &amp; 0.949328 &amp; 0.205663 \\
            0.225978 &amp; 0.426528 &amp; 0.189561 \\
            0.245896 &amp; 0.466162 &amp; 0.225864 \\
        \end{tabular}
 </pre></div><pre class="example-preformatted"> </pre></div>

<p>Alternatively, the source can be saved directly into a file:
 </p><div class="example">
<pre class="example-preformatted"> </pre><div class="group"><pre class="example-preformatted"> textable (data, &quot;file&quot;, &quot;data.tex&quot;);
 </pre></div><pre class="example-preformatted"> </pre></div>

<p>The appearance of the table can be controled with switches and key values. The
 following generates a table with both row and column lines (rlines and clines),
 and center alignment:
 </p><div class="example">
<pre class="example-preformatted"> </pre><div class="group"><pre class="example-preformatted"> textable (data, &quot;rlines&quot;, &quot;clines&quot;, &quot;align&quot;, &quot;c&quot;)
     &rArr;
        \begin{tabular}{|c|c|c|}
            \hline 
            0.889283 &amp; 0.949328 &amp; 0.205663 \\
            \hline 
            0.225978 &amp; 0.426528 &amp; 0.189561 \\
            \hline 
            0.245896 &amp; 0.466162 &amp; 0.225864 \\
            \hline 
        \end{tabular}
 </pre></div><pre class="example-preformatted"> </pre></div>

<p>Finnally, for math mode, it is also possible to place the matrix in an array
 environment and name the matrix:
 </p><div class="example">
<pre class="example-preformatted"> </pre><div class="group"><pre class="example-preformatted"> textable (data, &quot;math&quot;, &quot;matrix-name&quot;)
     &rArr;
        \begin{displaymath}
          \mathbf{matrix-name} =
          \left(
          \begin{array}{*{ 3 }{rrr}}
            0.889283 &amp; 0.949328 &amp; 0.205663 \\
            0.225978 &amp; 0.426528 &amp; 0.189561 \\
            0.245896 &amp; 0.466162 &amp; 0.225864 \\
          \end{array}
          \right)
        \end{displaymath}
 </pre></div><pre class="example-preformatted"> </pre></div>


<p><strong class="strong">See also:</strong> csv2latex, publish.
 </p></dd></dl>