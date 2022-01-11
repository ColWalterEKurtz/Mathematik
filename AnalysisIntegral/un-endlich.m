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

printf("%% 2022-01-04\n");
printf("\\begin{exercise}\n");
printf("      {ID-bdbf8ab09e6506a7833d9745fb169fcebe1a30c4}\n");
printf("      {(Un-)Endlich?}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Gegeben sei die Funktion\n");
printf("    $f:\\mathbb{R}\\setminus\\{0\\}\\to\\mathbb{R}$ mit:\n");
printf("    \\begin{equation*}\n");
printf("      f(x)=\\frac{1}{x}\n");
printf("    \\end{equation*}\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Skizzieren Sie den Graphen von $f$.\n");
printf("      \\item Bestimmen Sie die Gleichung der Tangente\n");
printf("            an den Graphen von $f$ im Punkt\n");
printf("            $P\\left(1\\;\\middle|\\;f(1)\\right)$.\n");
printf("      \\item Der Graph von $f$ und die $x$-Achse\n");
printf("            schließen für $x>1$ eine nach rechts\n");
printf("            unbeschränkte Fläche ein.\n");
printf("            Zeigen Sie, dass der Flächeninhalt dieser\n");
printf("            Fläche nicht begrenzt ist.\n");
printf("      \\item Der Graph von $f$ soll über dem Intervall\n");
printf("            $[1;z]$ um die $x$-Achse rotieren.\n");
printf("            Bestimmen Sie $z$ so, dass der dabei\n");
printf("            entstehende Rotationskörper das Volumen\n");
printf("            $\\frac{3}{4}\\pi$ besitzt.\n");
printf("            Zeigen Sie, dass das Volumen des\n");
printf("            Rotationskörpers für $z\\to\\infty$\n");
printf("            endlich ist.\n");
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

