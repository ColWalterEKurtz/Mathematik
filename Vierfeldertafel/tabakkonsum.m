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

printf("%% 2021-12-03\n");
printf("\\begin{exercise}\n");
printf("      {ID-570ec2b5c46d080cddf6769bb433b0dac809c5e9}\n");
printf("      {Tabakkonsum}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    An einem Berufskolleg wurden alle \\num{674}\n");
printf("    Schülerinnen und Schüler befragt, ob sie\n");
printf("    rauchen oder nicht. Das Ergebnis der\n");
printf("    Befragung sieht wie folgt aus:\n");
printf("    \\num{82} der insgesamt \\num{293} männlichen\n");
printf("    Schüler gaben an zu rauchen.\n");
printf("    \\num{250} Schülerinnen gaben an, nicht zu\n");
printf("    rauchen.\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Stelle den Sachzusammenhang in einer\n");
printf("            Vierfeldertafel dar.\n");
printf("      \\item Mit welcher Wahrscheinlichkeit ist\n");
printf("            eine zufällig ausgewählte Person\n");
printf("            weiblich und Nichtraucherin?\n");
printf("      \\item Mit welcher Wahrscheinlichkeit ist\n");
printf("            eine Schülerin Nichtraucherin?\n");
printf("      \\item Untersuche ob die Merkmale\n");
printf("            \\textit{Geschlecht} und\n");
printf("            \\textit{Tabakkonsum} stochastisch\n");
printf("            unabhängig voneinander sind.\n");
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

