
---
chapter: Introduction
...
You probably found all the files from [@Gunn:2001:pdflatex]. Table [#tbl:results] illustrates the results of my work.

| Training Error | Testing Error |
|----------------|---------------|
| 0              | $\infty$      |

Table: The Results {#tbl:results}

Figure [#fig:colourful] shows why this is the case.

![figure](figure.eps "A Colourful picture"){#fig:colourful}

This page shows you a subfigure example in Figure \fref{Figure:figsubex}.

<!-- Subfigures aren't supported :( -->

\begin{figure}[!htb]
  \centering
  \subfigure[The left caption]{
    \includegraphics[width=4.2cm]{figure}
    \label{Figure:figsubex:left}
  }
  \subfigure[The right caption]{
    \includegraphics[width=4.2cm]{figure}
    \label{Figure:figsubex:right}
  }
  \caption{A doubly colourful picture.}
  \label{Figure:figsubex}
\end{figure}
