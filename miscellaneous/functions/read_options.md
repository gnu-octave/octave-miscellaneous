---
layout: "default"
permalink: "/functions/12_readoptions/"
pkg_name: "miscellaneous"
pkg_version: "1.3.2"
pkg_description: "Miscellaneous tools that don't fit somewhere else."
title: "Miscellaneous Toolkit - read_options"
category: "miscellaneous"
func_name: "read_options"
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
<dt class="deftypefn def-line" id="index-read_005foptions"><span class="category-def">Function File: </span><span><code class="def-type"><var class="var">[op,nread]</var> =</code> <strong class="def-name">read_options</strong> <code class="def-code-arguments">( args, varargin )</code><a class="copiable-link" href="#index-read_005foptions"></a></span></dt>
<dd><p>The function read_options parses arguments to a function as,
 [ops,nread] = read_options (args,...) - Read options
</p>
<p>The input being <var class="var">args</var> a list of options and values.
 The options can be any of the following,
</p>
<p>&rsquo;op0&rsquo;    , string : Space-separated names of opt taking no argument  &lt;&rdquo;&gt;
</p> 
<p>&rsquo;op1&rsquo;    , string : Space-separated names of opt taking one argument &lt;&rdquo;&gt;
</p> 
<p>&rsquo;extra&rsquo;  , string : Name of nameless trailing arguments.             &lt;&rdquo;&gt;
</p> 
<p>&rsquo;default&rsquo;, struct : Struct holding default option values           &lt;none&gt;
</p> 
<p>&rsquo;prefix&rsquo; , int    : If false, only accept whole opt names. Otherwise, &lt;0&gt;
                     recognize opt from first chars, and choose 
                     shortest if many opts start alike.
</p> 
<p>&rsquo;nocase&rsquo; , int    : If set, ignore case in option names               &lt;0&gt;
</p> 
<p>&rsquo;quiet&rsquo;  , int    : Behavior when a non-string or unknown opt is met  &lt;0&gt;
              0    - Produce an error
              1    - Return quietly (can be diagnosed by checking &rsquo;nread&rsquo;)
</p> 
<p>&rsquo;skipnan&rsquo;, int    : Ignore NaNs if there is a default value.
     Note : At least one of &rsquo;op0&rsquo; or &rsquo;op1&rsquo; should be specified.
</p> 
<p>The output variables are,
 <var class="var">ops</var>      : struct : Struct whose key/values are option names/values
 <var class="var">nread</var>    : int    : Number of elements of args that were read
</p>
<p>USAGE 
 </p><div class="example">
<pre class="example-preformatted"> # Define options and defaults
 op0 = &quot;is_man is_plane flies&quot;
 default = struct (&quot;is_man&quot;,1, &quot;flies&quot;,0);

                              # Read the options

 s = read_options (list (all_va_args), &quot;op0&quot;,op0,&quot;default&quot;,default)

                              # Create variables w/ same name as options

 [is_man, is_plane, flies] = getfields (s,&quot;is_man&quot;, &quot;is_plane&quot;, &quot;flies&quot;)
 pre 2.1.39 function [op,nread] = read_options (args, ...)
 </pre></div>
</dd></dl>