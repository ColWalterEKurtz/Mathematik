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

printf("%% 2021-11-11\n");
printf("\\begin{exercise}\n");
printf("      {ID-694850175e5d27550fcac2047853a8ad829b4e19}\n");
printf("      {Zweifel}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Eine angenommene Wahrscheinlichkeit $p$ soll nicht\n");
printf("    bezweifelt werden, wenn eine beobachtete Häufigkeit\n");
printf("    innerhalb des zugehörigen $2\\sigma$-Intervalls liegt.\n");
printf("    Man vermutet $p=\\num{0.75}$.\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Muss man diese Vermutung anzweifeln, wenn\n");
printf("            \\begin{enumerate}[1.]\n");
printf("              \\setlength{\\itemsep}{-1ex}%%\n");
printf("              \\item bei \\num{100} Versuchen \\num{70} Treffer\n");
printf("              \\item bei \\num{400} Versuchen \\num{280} Treffer\n");
printf("            \\end{enumerate}\n");
printf("            beobachtet werden?\n");
printf("      \\item In welchem Bereich darf die relative\n");
printf("            Trefferhäufigkeit bei $n=\\num{1000}$\n");
printf("            Versuchen liegen, damit man die\n");
printf("            Wahrscheinlichkeit $p=\\num{0.75}$\n");
printf("            nicht zu bezweifeln braucht?\n");
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

