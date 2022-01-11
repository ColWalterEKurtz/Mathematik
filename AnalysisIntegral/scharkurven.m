clear all;

addpath 'Octave/';

% --
% sd
% --
%
% string decimal
%
% x       number to convert
% opt(1)  maxdcp
% opt(2)  addbrn
% opt(3)  addbrf
% opt(4)  addsgn
% opt(5)  addtex
%
function str = sd(x, opt = [7 0 0 0 1])
  str = myn2s(x, opt(1), opt(2), opt(3), opt(4), opt(5));
endfunction

% --
% sf
% --
%
% string fraction
%
% x       number to convert
% opt(1)  maxdcp
% opt(2)  addbrn
% opt(3)  addbrf
% opt(4)  addsgn
% opt(5)  addtex
%
function str = sf(x, opt = [0 0 0 0 1])
  str = myn2s(x, opt(1), opt(2), opt(3), opt(4), opt(5));
endfunction

%%% NO CALCULATIONS YET %%%

printf("%% 2022-01-05\n");
printf("\\begin{exercise}\n");
printf("      {ID-f8021628875a81d19a6f399de8c15f6d6839cb09}\n");
printf("      {Scharkurven}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Gegeben sei die Funktionenschar $f_a:\\mathbb{R}\\to\\mathbb{R}$ mit\n");
printf("    \\begin{equation*}\n");
printf("      f_a(x)=\\frac{x+a}{e^x}\n");
printf("      \\quad\\text{und}\\quad\n");
printf("      a\\in\\mathbb{R}.\n");
printf("    \\end{equation*}\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      %%\\setlength{\\itemsep}{-1ex}%%\n");
printf("      %%\\setcounter{enumi}{0}%%\n");
printf("      \\item Skizzieren Sie die Graphen von $f_1$ und $f_3$.\n");
printf("      \\item Die beiden gezeichneten Kurven, die\n");
printf("            $x$-Achse und die Gerade $x=c$ mit $c>-1$\n");
printf("            begrenzen eine Fläche.\n");
printf("            Berechnen Sie ihren Inhalt $A(c)$.\n");
printf("            Zeigen Sie, dass $A(c)$ mit $c$ streng\n");
printf("            monoton wächst und berechnen Sie\n");
printf("            $\\displaystyle\\lim_{c\\to\\infty}A(c)$.\n");
printf("      \\item Bestimmen Sie den maximalen Abstand von\n");
printf("            $f_1$ und $f_3$ für $x>0$.\n");
printf("      \\item Zeigen Sie, dass Scharkurven zu verschiedenen\n");
printf("            Parameterwerten keine gemeinsamen Punkte\n");
printf("            besitzen.\n");
printf("    \\end{enumerate}\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    %% </OUTLINE>\n");
printf("  %%\\fi\n");
printf("  %%\\ifoutcome\\outcome\\par\n");
printf("    %% <OUTCOME>\n");
printf("    %% </OUTCOME>\n");
printf("  %%\\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

