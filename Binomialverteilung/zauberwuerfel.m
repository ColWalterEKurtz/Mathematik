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
printf("      {ID-42fd0af614f33ebcf89128ac8ec7fe2fdccf5d99}\n");
printf("      {Zauberwürfel}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Ein Zauberwürfel liefert die \\glqq6\\grqq{} mit\n");
printf("    Wahrscheinlichkeit $p=\\SI{80}{\\percent}$.\n");
printf("    Bestimmen Sie ein möglichst kleines Intervall\n");
printf("    $[\\num{0.8}-d;\\num{0.8}+d]$ in dem mindestens\n");
printf("    \\SI{95}{\\percent} aller relativen Häufigkeiten\n");
printf("    zu erwarten sind, wenn man $n=\\num{25}$,\n");
printf("    $n=\\num{100}$ bzw. $n=\\num{400}$ Versuche macht.\n");
printf("    \\par\n");
printf("    Formulieren Sie eine \\glqq je-desto Aussage\\grqq\n");
printf("    zum Einfluss des Stichprobenumfangs $n$.\n");
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

