#!/bin/bash -e

# Args: new filename
if [[ $# -eq 0 ]]; then
    echo 'Missing argument: new filename'
    exit 1
fi
P=$1
touch "$P.tex"
echo "\titledquestion{}

\begin{solution}\\\\
\end{solution}" >> "$P.tex"