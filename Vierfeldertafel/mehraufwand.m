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

printf("%% 2021-11-10\n");
printf("\\begin{exercise}\n");
printf("      {ID-27075c56c55ae65c15ebcc1e203ff793d84cfc18}\n");
printf("      {Mehraufwand}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    In einer nicht genannten Schule des Siegerlands\n");
printf("    fehlt im Schnitt bei \\pc{60} der Klausuren\n");
printf("    wenigstens ein Schüler bzw. eine Schülerin,\n");
printf("    sodass eine Nachschreibeklausur erstellt werden\n");
printf("    muss.\n");
printf("    Insgesamt sind \\pc{20} aller Klausuren Matheklausuren,\n");
printf("    und \\pc{50} aller nachgeschriebenen Klausuren keine\n");
printf("    Matheklausuren.\n");
printf("    Überprüfe die Ereignisse\n");
printf("    \\begin{itemize}\n");
printf("      \\item[$E_1$:] \\glqq Es handelt sich um eine\n");
printf("                    Matheklausur\\grqq{} und\n");
printf("      \\item[$E_2$:] \\glqq Es muss eine Nachschreibeklausur\n");
printf("                    erstellt werden\\grqq\n");
printf("    \\end{itemize}\n");
printf("    auf stochastische Unabhängigkeit.\n");
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

