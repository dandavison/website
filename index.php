<?php echo '<?xml version="1.0" encoding="iso-8859-1" ?>'; ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
               "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"
lang="en" xml:lang="en">
<head>
<title>Dan Davison</title>
<meta http-equiv="Content-Type" content="text/html;charset=iso-8859-1"/>
<meta name="generator" content="Org-mode"/>
<meta name="generated" content="2009-06-11 20:08:32 EDT"/>
<meta name="author" content="Dan Davison"/>
<meta name="description" content=""/>
<meta name="keywords" content=""/>
<style type="text/css">
 <!--/*--><![CDATA[/*><!--*/
  html { font-family: Times, serif; font-size: 12pt; }
  .title  { text-align: center; }
  .todo   { color: red; }
  .done   { color: green; }
  .tag    { background-color: #add8e6; font-weight:normal }
  .target { }
  .timestamp { color: #bebebe; }
  .timestamp-kwd { color: #5f9ea0; }
  p.verse { margin-left: 3% }
  pre {
	border: 1pt solid #AEBDCC;
	background-color: #F3F5F7;
	padding: 5pt;
	font-family: courier, monospace;
        font-size: 90%;
        overflow:auto;
  }
  table { border-collapse: collapse; }
  td, th { vertical-align: top; }
  dt { font-weight: bold; }
  div.figure { padding: 0.5em; }
  div.figure p { text-align: center; }
  .linenr { font-size:smaller }
  .code-highlighted {background-color:#ffff00;}
  .org-info-js_info-navigation { border-style:none; }
  #org-info-js_console-label { font-size:10px; font-weight:bold;
                               white-space:nowrap; }
  .org-info-js_search-highlight {background-color:#ffff00; color:#000000;
                                 font-weight:bold; }
  /*]]>*/-->
</style>
<link rel="stylesheet" type="text/css" href="dan.css" />
<script type="text/javascript">
<!--/*--><![CDATA[/*><!--*/
 function CodeHighlightOn(elem, id)
 {
   var target = document.getElementById(id);
   if(null != target) {
     elem.cacheClassElem = elem.className;
     elem.cacheClassTarget = target.className;
     target.className = "code-highlighted";
     elem.className   = "code-highlighted";
   }
 }
 function CodeHighlightOff(elem, id)
 {
   var target = document.getElementById(id);
   if(elem.cacheClassElem)
     elem.className = elem.cacheClassElem;
   if(elem.cacheClassTarget)
     target.className = elem.cacheClassTarget;
 }
/*]]>*///-->
</script>
</head>
<body>
<div id="content">
<h1 class="title">Dan Davison</h1>


<div class="figure">
<p><img src="dan.jpg"  alt="dan.jpg" /></p>
</div>


<div id="table-of-contents">
<h2>Table of Contents</h2>
<div id="text-table-of-contents">
<ul>
<li><a href="#sec-1"></a></li>
<li><a href="#sec-2">Publications </a></li>
<li><a href="#sec-3">Population genetics software </a>
<ul>
<li><a href="#sec-3.1">shellfish </a></li>
<li><a href="#sec-3.2">psi </a></li>
</ul>
</li>
<li><a href="#sec-4">Other software </a>
<ul>
<li><a href="#sec-4.1">lines and slice </a></li>
<li><a href="#sec-4.2">org-R </a></li>
</ul>
</li>
<li><a href="#sec-5">Etc </a>
<ul>
<li><a href="#sec-5.1">plant photos </a></li>
</ul>
</li>
</ul>
</div>
</div>

<div id="outline-container-1" class="outline-2">
<h2 id="sec-1"></h2>
<div class="outline-text-2" id="text-1">

<p>I'm a postdoc in <a href="http://www.stats.ox.ac.uk/people/academic_staff/peter_donnelly">Peter Donnelly</a>'s group, in the Statistics Department
at Oxford University. I use population genetic data to study
population structure, speciation and 'species-level' systematics. I'm
currently working on analyses of large data sets of SNP genotypes of
humans in the UK and continental Europe. I did my Ph.D. in the
Committee on Evolutionary Biology at the University of Chicago,
working in <a href="http://pritch.bsd.uchicago.edu">Jonathan Pritchard</a>'s group and in the Bird Division of the
Field Museum of Natural History in Chicago with <a href="http://fm1.fieldmuseum.org/aa/staff_page.cgi?staff=hackett">Shannon Hackett</a>.
</p>
</div>

</div>

<div id="outline-container-2" class="outline-2">
<h2 id="sec-2">Publications </h2>
<div class="outline-text-2" id="text-2">

<ul>
<li>
D Davison, J Pritchard and G Coop (2009) An approximate likelihood
for genetic data under a model with recombination and population
splitting. <b>Theoretical Population Biology</b> 75(4):331-345
</li>
<li>
H Dugdale, T Burke, D Davison, S Baker, C Bueshing, S Ellwood, C
Newman, D Macdonald (2009) Application of genetic techniques to
validate female teat size as a reliable indicator of annual
breeding success in a medium-sized carnivore (submitted)
</li>
<li>
A Young, H Barnes, D Davison, S Neubauer and J Schneider (2009)
Fast Left Ventricular Mass and Volume in Mice with
Three-Dimensional Guide-Point Modeling. <b>Journal of Magnetic      Resonance Imagery</b>. Accepted.
</li>
<li>
S Myles, D Davison, J Barrett, M Stoneking and N Timpson (2008)
Worldwide population differentiation at disease-associated SNPs <b>BMC      Medical Genomics</b> 1(1):22
</li>
<li>
Wellcome Trust Case Control Consortium (2007) Genome-wide
association study of 14,000 cases of seven common diseases and
3,000 shared controls. <b>Nature</b> 447:661-678
</li>
<li>
<a href="pub/dsrtn.pdf">My Ph.D. dissertation</a> : "Inferences about the evolutionary history
of geographically structured populations: the intersection of
population genetics, biogeography and systematics"

</li>
</ul>
</div>

</div>

<div id="outline-container-3" class="outline-2">
<h2 id="sec-3">Population genetics software </h2>
<div class="outline-text-2" id="text-3">


</div>

<div id="outline-container-3.1" class="outline-3">
<h3 id="sec-3.1"><a href="software/shellfish/shellfish.php">shellfish</a> </h3>
<div class="outline-text-3" id="text-3.1">

<p>PCA for very large data sets of SNP genotypes. Computations are
automatically performed in parallel on a computing cluster, and on
a single multi-processor machine.
</p></div>

</div>

<div id="outline-container-3.2" class="outline-3">
<h3 id="sec-3.2"><a href="./software/psi.php">psi</a> </h3>
<div class="outline-text-3" id="text-3.2">

<p>Parallel implementation of the Pritchard et al. (2000) "Admixture Model" (EM, MCMC or VB)
</p></div>
</div>

</div>

<div id="outline-container-4" class="outline-2">
<h2 id="sec-4">Other software </h2>
<div class="outline-text-2" id="text-4">


</div>

<div id="outline-container-4.1" class="outline-3">
<h3 id="sec-4.1"><a href="./software/lines-and-slice.php">lines and slice</a> </h3>
<div class="outline-text-3" id="text-4.1">

<p>Rapid extraction of lines and columns from tabular text
files. Especially useful for large files, such as genome-wide
genotype data.
</p></div>

</div>

<div id="outline-container-4.2" class="outline-3">
<h3 id="sec-4.2"><a href="http://orgmode.org/worg/org-tutorials/org-R/org-R.php">org-R</a> </h3>
<div class="outline-text-3" id="text-4.2">

<p>An interface for using <code>R</code> code within emacs org-mode.
</p></div>
</div>

</div>

<div id="outline-container-5" class="outline-2">
<h2 id="sec-5">Etc </h2>
<div class="outline-text-2" id="text-5">


</div>

<div id="outline-container-5.1" class="outline-3">
<h3 id="sec-5.1"><a href="plants/floras/index.php">plant photos</a> </h3>
<div class="outline-text-3" id="text-5.1">

<p>Taxonomically organised flower photographs
</p>


</div>
</div>
</div>
<div id="postamble">
</div>
</div>
</body>
</html>
