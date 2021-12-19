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

printf("%% 2021-11-21\n");
printf("\\begin{exercise}\n");
printf("      {ID-03292f3e823fab5b93f11265f51e3a644de33b1a}\n");
printf("      {Das System}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Ein System ist nach jeder Minute in einem der\n");
printf("    Zustände $Z_1$, $Z_2$, $Z_3$ oder $Z_4$.\n");
printf("    Die zugehörige Übergangsmatrix $U$ hat folgende\n");
printf("    Gestalt:\n");
printf("    \\begin{equation*}\n");
printf("      U=\n");
printf("      \\begin{pmatrix}\n");
printf("        \\frac{2}{5} & \\frac{1}{4} & \\frac{1}{4} & 0 \\\\[1ex]\n");
printf("        \\frac{1}{5} & 0           & \\frac{1}{2} & 0 \\\\[1ex]\n");
printf("        \\frac{1}{5} & \\frac{1}{2} & 0           & 0 \\\\[1ex]\n");
printf("        \\frac{1}{5} & \\frac{1}{4} & \\frac{1}{4} & 1\n");
printf("      \\end{pmatrix}\n");
printf("    \\end{equation*}\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Zeichnen Sie ein Prozessdiagramm, das\n");
printf("            den stochastischen Prozess beschreibt.\n");
printf("      \\item Am Anfang ist das System in Zustand $Z_1$.\n");
printf("            Berechnen Sie die Zustandsverteilung nach\n");
printf("            zwei Minuten.\n");
printf("      \\item Wie groß ist die Wahrscheinlichkeit, dass\n");
printf("            sich das System nach \\num{10} Minuten\n");
printf("            noch nicht in Zustand $Z_4$ befindet?\n");
printf("      \\item Beschreiben Sie eine Situation, bei der\n");
printf("            $U$ die zugehörige Übergangsmatrix ist.\n");
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

