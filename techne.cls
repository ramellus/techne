\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{techne}[thesis class]

\LoadClass[
paper=a4,
twoside,
pagesize,
12pt,              
BCOR=4mm,             
cleardoublepage=empty,
numbers=noenddot,
titlepage,]{memoir}
\setsecnumdepth{subsection}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%						 PACKAGES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{
	amsmath,
amsfonts,
amssymb,
amsthm,
epstopdf,
epigraph,
yfonts,
xcolor,
graphicx,
dsfont,
newlfont,
emptypage,
listings,
color,
booktabs,	
subfiles,
lmodern,
fancyhdr,
titlesec,
tikz,
thmtools,
stmaryrd,
lipsum,
fontspec,
marginnote
}

\RequirePackage[margin=1in]{geometry}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{eulervm, palatino}
\RequirePackage[colorlinks=true,allcolors=red]{hyperref}
\RequirePackage[tocgraduated]{tocstyle}
\usetocstyle{allwithdot}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%						 COLOURS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\definecolor{679}{HTML}{318A8C}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%						 THEOREMS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newtheoremstyle{custom-up}% name of the style to be used
{6pt}% measure of space to leave above the theorem. E.g.: 3pt
{3pt}% measure of space to leave below the theorem. E.g.: 3pt
{}% name of font to use in the body of the theorem
{}% measure of space to indent
{\scshape}% name of head font
{}% punctuation between head and body
{2pt}% space after theorem head; " " = normal interword space
{\indent{\thmname{#1} \hskip0.8mm\textbf{\fontfamily{pag}{\footnotesize{\textcolor{679}{\thmnumber{#2}}}}}}\hskip1.5mm{\thmnote{(#3)\hskip0.7mm}}}%

\newtheoremstyle{custom-wt}% name of the style to be used
{6pt}% measure of space to leave above the theorem. E.g.: 3pt
{3pt}% measure of space to leave below the theorem. E.g.: 3pt
{}% name of font to use in the body of the theorem
{}% measure of space to indent
{\scshape}% name of head font
{}% punctuation between head and body
{3pt}% space after theorem head; " " = normal interword space
{{\thmname{#1}}\hskip1mm\thmnote{(#3)}}%


\newtheoremstyle{custom-it}% name of the style to be used
{6pt}% measure of space to leave above the theorem. E.g.: 3pt
{}% measure of space to leave below the theorem. E.g.: 3pt
{\itshape}% name of font to use in the body of the theorem
{}% measure of space to indent
{\scshape}% name of head font
{}% punctuation between head and body
{2pt}% space after theorem head; " " = normal interword space
{\indent{\thmname{#1} \hskip0.8mm\textbf{\fontfamily{pag}{\footnotesize{\textcolor{679}{\thmnumber{#2}}}}}}\hskip1.5mm{\thmnote{(#3)\hskip0.7mm}}}%

\theoremstyle{custom-up}
\newtheorem*{axiom}{axiom}
\newtheorem*{question}{question}
\newtheorem{definition}{definition}[section]

\theoremstyle{custom-wt}
\newtheorem*{example}{example}
\newtheorem*{remark}{remark}
\newtheorem*{claim}{claim}

\theoremstyle{custom-it}
\newtheorem{theorem}[definition]{theorem}
\newtheorem{corollary}[definition]{corollary} 
\newtheorem{lemma}[definition]{lemma} 
\newtheorem{proposition}[definition]{proposition} 
\newtheorem*{theorem*}{theorem}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%						 TITLES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\pretitle{\vfill\begin{center}\fontfamily{pag}\HUGE}
	\posttitle{\par\end{center}\vskip 0.5em}
\predate{\begin{center}\large\scshape\MakeLowercase}
	\postdate{\par\end{center}\vfill}

\titleformat{\chapter}[display]
{\filcenter\large}
{\fontsize{50}{60}{\fontfamily{pag}\fbox{\bfseries\thechapter}}}
{0pt}
{\fontsize{25}{35}\scshape}

\titleformat{\section}[hang]
{\large}
{\fontsize{20}{25}{\fontfamily{pag}{{\bfseries\textcolor{679}{\fbox{\thesection}}} \hspace{0.07cm}}}}
{0pt}
{\fontsize{20}{25}\scshape}

\titleformat{\subsection}[hang]
{\large}
{\fontsize{15}{16}{\fontfamily{pag}{{\bfseries\textcolor{679}{\thesubsection}}  \hspace{0.025cm} {\large |} \hspace{0.05cm}}}}
{0pt}
{\fontsize{17}{20}\bfseries}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%						 PROOF
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\declaretheoremstyle[%
spaceabove=-4pt,%
spacebelow=6pt,%
headfont=\normalfont\scshape,%
postheadspace=3pt,%
qed=\qedsymbol%
]{prfstyle} 
\declaretheorem[name={proof},style=prfstyle,unnumbered,
]{prf}

\renewenvironment{proof}{\begin{prf}}{%
	\end{prf}\ignorespacesafterend
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%						 SHORTCUTS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\bb}[1]{\mathbb{#1}}
\newcommand{\ds}[1]{\mathds{#1}}
\newcommand{\fk}[1]{\mathfrak{#1}}
\newcommand{\sff}[1]{\mathsf{#1}}
\newcommand{\cl}[1]{\mathcal{#1}}
\newcommand{\comp}[1]{#1^{\mathsf{c}}}
\newcommand{\powerset}[1]{\cl{P}(#1)}
\newcommand{\finset}[1]{\cl{P}_{\mathsf{fin}}(#1)}
\newcommand{\struct}[1]{\mathds{#1}} % use this for "famous" sets and the like
\newcommand{\sm}{\smallsetminus}
\newcommand{\quot}[2]{{#1}/{#2}}
\newcommand{\wt}[1]{\widetilde{#1}}
\newcommand{\into}{\hookrightarrow}
\newcommand{\then}{\rightarrow}
\newcommand{\meet}{\land}
\newcommand{\join}{\lor}
\newcommand{\onto}{\twoheadrightarrow}
\newcommand{\NN}{\struct{N}}
\newcommand{\QQ}{\struct{Q}}
\newcommand{\ZZ}{\struct{Z}}
\newcommand{\RR}{\struct{R}}
\newcommand{\CC}{\struct{C}}
\newcommand{\Q}[1]{\struct{Q}_{#1}}
\newcommand{\Z}[1]{\struct{Z}_{#1}}
\renewcommand{\emph}[1]{\textbf{#1}}
\renewcommand{\geq}{\geqslant}
\renewcommand{\leq}{\leqslant}
\renewcommand{\phi}{\varphi}
\renewcommand{\epsilon}{\varepsilon}
\newcommand{\interior}[1]{{#1}^{\circ}}
\newcommand{\satisfies}{\vDash}
\newcommand{\follows}{\vdash}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%						 BIB
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[backend=biber,style=alphabetic,sorting=ynt]{biblatex}
\RequirePackage{hyperref}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%						 HEADER
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{fancy}
\fancyhead[LE,RO]{Techné: a thesis template}
\fancyhead[LO,RE]{\leftmark}
\fancyfoot[C]{\thepage}