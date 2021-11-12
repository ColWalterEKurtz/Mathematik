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
printf("      {ID-f013e484cc05effc9be0e8b927a11ae7fe6223af}\n");
printf("      {Impfschutz}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    In einem Flüchtlingslager leben \\num{1680} Personen,\n");
printf("    von denen nur \\pc{30} einen Impfschutz gegen Masern\n");
printf("    besitzen.\n");
printf("    Bei einem Masernausbruch im Lager erkranken \\pc{50}\n");
printf("    der nicht Geimpften, aber nur \\pc{20} der Geimpften.\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Erstelle eine Vierfeldertafel zu der genannten\n");
printf("            Situation.\n");
printf("      \\item Stelle die Situation in zwei verschiedenen\n");
printf("            Baumdiagrammen dar und gib die\n");
printf("            Wahrscheinlichkeiten alle Ergebnisse an.\n");
printf("      \\item Bei einer erkrankten Person wird der\n");
printf("            Impfstatus überprüft. Berechne die\n");
printf("            Wahrscheinlichkeit dafür, dass diese Person\n");
printf("            nicht geimpft ist.\n");
printf("      \\item Es wird der Impfstatus von drei zufälllig\n");
printf("            ausgewählten Personen überprüft.\n");
printf("            Gib eine entsprechende\n");
printf("            Wahrscheinlichkeitsverteilung an.\n");
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

