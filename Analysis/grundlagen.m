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

printf("\\begin{exercise}\n");
printf("      {ID-6bd5c0ce3c9ca56f18b875a693dc8ab24de09529}\n");
printf("      {Grundlagen}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Gegeben sei die Funktion $f:\\mathbb{R}\\to\\mathbb{R}$ mit:\n");
printf("    \\begin{equation*}\n");
printf("      %%<OCTAVE>\n");
printf("      f(x)=\\frac{\\num{1}}{\\num{4}}x^{4}-x^{3}-\\frac{\\num{1}}{\\num{2}}x^{2}+\\num{3}x\n");
printf("      %%</OCTAVE>\n");
printf("      %%p = [1/4 0 -2 0 2];\n");
printf("      %%q = mypolyshift(p, 1, -1/4);\n");
printf("      %%printf(\"f(x)=%%s\\n\", mypolystr(q, \"x\", [0 0 0 0 1]));\n");
printf("    \\end{equation*}\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Bestätigen Sie durch eine Rechnung, dass die\n");
printf("            Funktion $f$ bei $x=2$ eine Nullstelle besitzt.\n");
printf("      \\item Bestimmen Sie auch alle anderen Nullstellen von $f$.\n");
printf("      \\item Besitzt die Funktion $f$ an der Stelle $x=1$\n");
printf("            einen Hoch-, Tief- oder Sattelpunkt?\n");
printf("      \\item Bestimmen Sie auch alle anderen Extrem- und\n");
printf("            Sattelpunkte von $f$.\n");
printf("      \\item Ermitteln Sie die Wendepunkte von $f$.\n");
printf("      \\item Geben Sie für jeden Wendepunkt die Gleichung\n");
printf("            der Wendetangente an.\n");
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

