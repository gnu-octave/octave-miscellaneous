---
layout: "default"
permalink: "/functions/9_csv2latex/"
pkg_name: "miscellaneous"
pkg_version: "1.3.1"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - csv2latex"
category: "miscellaneous"
func_name: "csv2latex"
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
<dt class="deftypefn" id="index-csv_005fsep_002c"><span class="category-def">: </span><span><code class="def-type">csv2latex(<var class="var">csv_file</var>,</code> <strong class="def-name"><var class="var">csv_sep</var>,</strong> <code class="def-code-arguments"><var class="var">latex_file</var>)</code><a class="copiable-link" href="#index-csv_005fsep_002c"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-csv_005fsep_002c-1"><span class="category-def">: </span><span><code class="def-type">csv2latex(<var class="var">csv_file</var>,</code> <strong class="def-name"><var class="var">csv_sep</var>,</strong> <code class="def-code-arguments"><var class="var">latex_file</var>,              <var class="var">tabular_alignments</var>)</code><a class="copiable-link" href="#index-csv_005fsep_002c-1"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-csv_005fsep_002c-2"><span class="category-def">: </span><span><code class="def-type">csv2latex(<var class="var">csv_file</var>,</code> <strong class="def-name"><var class="var">csv_sep</var>,</strong> <code class="def-code-arguments"><var class="var">latex_file</var>,              <var class="var">tabular_alignments</var>, <var class="var">has_hline</var>)</code><a class="copiable-link" href="#index-csv_005fsep_002c-2"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-csv_005fsep_002c-3"><span class="category-def">: </span><span><code class="def-type">csv2latex(<var class="var">csv_file</var>,</code> <strong class="def-name"><var class="var">csv_sep</var>,</strong> <code class="def-code-arguments"><var class="var">latex_file</var>,                 <var class="var">tabular_alignments</var>, <var class="var">has_hline</var>, <var class="var">column_titles</var>)</code><a class="copiable-link" href="#index-csv_005fsep_002c-3"></a></span></dt>
<dt class="deftypefnx def-cmd-deftypefn" id="index-csv_005fsep_002c-4"><span class="category-def">: </span><span><code class="def-type">csv2latex(<var class="var">csv_file</var>,</code> <strong class="def-name"><var class="var">csv_sep</var>,</strong> <code class="def-code-arguments"><var class="var">latex_file</var>,              <var class="var">tabular_alignments</var>, <var class="var">has_hline</var>,              <var class="var">column_titles</var>, <var class="var">row_titles</var>)</code><a class="copiable-link" href="#index-csv_005fsep_002c-4"></a></span></dt>
<dd>
<p>Creates a latex file from a csv file. The generated latex file contains a 
 tabular with all values of the csv file. The tabular can be decorated with 
 row and column titles. The generated latex file can be inserted in any latex
 document by using the &rsquo;\input{latex file name without .tex}&rsquo; statement.
</p>
<p>csv_file - the path to an existing csv file<br>
 csv_sep - the seperator of the csv values<br>
 latex_file - the path of the latex file to create<br>
 tabular_alignments - the tabular alignment preamble
    (default = {&rsquo;l&rsquo;,&rsquo;l&rsquo;,...})<br>
 has_hline - indicates horizontal line seperator (default = false)<br>
 column_titles - array with the column titles of the tabular
    (default = {})<br>
 row_titles - array with the row titles of the tabular (default = {})<br>
</p>
<p>Examples:
</p>
<div class="example">
<pre class="example-preformatted"> # creates the latex file 'example.tex' from the csv file 'example.csv' 
 csv2latex(&quot;example.csv&quot;, '\t', &quot;example.tex&quot;);

 # creates the latex file with horizontal and vertical lines
 csv2latex('example.csv', '\t', 'example.tex', {'|l|', 'l|'}, true);
 
 # creates the latex file with row and column titles
 csv2latex('example.csv', '\t', 'example.tex', {'|l|', 'l|'}, true, 
            {'Column 1', 'Column 2', 'Column 3'}, {'Row 1', 'Row 2'});
 </pre></div>
</dd></dl>