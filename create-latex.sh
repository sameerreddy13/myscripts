#!/bin/bash -e

# Args: none

read -p "Enter homework number (will be used for filename and doc title): " HNUM;
read -p "Enter course name: " COURSE;
NAME="hw$HNUM"
touch "$NAME.tex"
echo "\documentclass[12pt]{exam}
\usepackage[margin=0.5in]{geometry}
\usepackage{graphicx}
\usepackage{listings}
\usepackage{pdfpages}
\usepackage{seqsplit}
\usepackage{hyperref}
\usepackage{upquote}
\usepackage{nicefrac}
\usepackage{amssymb}
\usepackage{amsmath}
\usepackage{enumitem}
\newcommand{\R}{\mathbb{R}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\N}{\mathbb{N}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\F}{\mathbb{F}}

%%%%%%%%%%%% Fill this out %%%%%%%%%%%% 
\def\Name{Sameer Reddy}      % Your name
\def\SID{26111519}         % Your student ID number
\def\Course{$COURSE}     % Course

\printanswers  % Puts your answers in formatted solution boxes.

\def\Homework{$HNUM}
\def\Session{Spring 2018}

\qformat{\bf \thequestiontitle \hfill}

\title{Homework \Homework\\\ \large\Course\text{ - }\Session}
\author{\Name, SID \SID}
\date{}

\begin{document}
\maketitle

\begin{questions}
    \input{problem01.tex}
    \input{problem02.tex}
    \input{problem03.tex}
    \input{problem04.tex}
    \input{problem05.tex}
\end{questions}

\end{document}
" >> "$NAME.tex"
