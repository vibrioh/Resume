% Intro Options
\ProvidesClass{junhu_resume}[2017/09/01 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=1.25cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}
\usepackage{siunitx}

% Cite publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary]{Helvetica Light}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text]{Helvetica Neue UltraLight}

% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\textblockorigin{0mm}{5mm} % start everyth
\newcommand{\lastupdated}{\begin{textblock}{60}(155,0)
\color{date}\fontspec{Helvetica Neue Light}\fontsize{8pt}{10pt}\selectfont 
Last Updated on
\today
\end{textblock}}

\newcommand{\leftdetails}[1]{\begin{textblock}{60}(170,5)
\color{date}\fontspec{Helvetica Neue Light}\fontsize{8pt}{10pt}\selectfont 
#1
\end{textblock}}


% Name command
\newcommand{\namesection}[2]{
	\vspace{1pt}
	{
		\sffamily
		\fontspec{Helvetica Neue UltraLight}\fontsize{48pt}{8cm}\selectfont #1 
		\fontspec{Helvetica Neue Light}\selectfont #2
	} %\\
	\vspace{10pt}
%	\centering{ \color{headings}\fontspec{Heiti TC Medium}\fontsize{11pt}{14pt}\selectfont #3}
%	\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
%	\vspace{-15pt}
}

\newcommand{\infosection}[1]{
	\vspace{26pt}
%	\centering{
%		\sffamily
%		\fontspec{Helvetica Neue UltraLight}\fontsize{40pt}{10cm}\selectfont #1 
%		\fontspec{Helvetica Neue Light}\selectfont #2
%	} \\
%	\vspace{-10pt}
	{ \color{headings}\fontspec{Heiti TC Medium}\fontsize{11pt}{14pt}\selectfont #1}
%	\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
%	\vspace{-15pt}
}

\newcommand{\sepsection}{
%	\centering{
%		\sffamily
%		\fontspec{Helvetica Neue UltraLight}\fontsize{40pt}{10cm}\selectfont #1 
%		\fontspec{Helvetica Neue Light}\selectfont #2
%	} \\
	\vspace{3pt}
%	\centering{ \color{headings}\fontspec{Heiti TC Medium}\fontsize{11pt}{14pt}\selectfont #1}
	\noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
	\vspace{-16pt}
}

\newcommand{\smallsep}[0]{\vspace{1pt}}

\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec{Helvetica Light}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{} {0em}{}

% Subeadings command
\titleformat{\subsection}{\color{subheadings}
\fontspec{Helvetica}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\runsubsection}[1]{\color{subheadings}
\fontspec{Helvetica}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\scshape\fontspec{Heiti SC Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{\color{headings}\raggedright\scshape\fontspec{Heiti TC Medium}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Locationnew command
\newcommand{\locationnew}[1]{\color{headings}\raggedright\scshape\fontspec{Heiti TC Medium}\fontsize{9pt}{10pt}\selectfont {#1} \normalfont}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}

% Littleection seperators command
\newcommand{\littlesectionsep}[0]{\vspace{2pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}


