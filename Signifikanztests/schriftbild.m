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
printf("      {ID-ca6c03c794748d25f56267062a38152ef6ec05f7}\n");
printf("      {Schriftbild}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    \\xxa{} behauptet, sie könne aus dem Schriftbild\n");
printf("    einer Klassenarbeit das Geschlecht des Autors\n");
printf("    bzw. der Autorin mit mindestens \\SI{80}{\\percent}\n");
printf("    Wahrscheinlichkeit erkennen.\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Konstruieren Sie einen passenden Signifikanztest\n");
printf("            auf dem \\SI{5}{\\percent}-Signifikanzniveau zum\n");
printf("            Stichprobenumfang $n=30$.\n");
printf("      \\item Wie fällt das Testergebnis aus, wenn \\xxa{}\n");
printf("            bei \\num{30} Proben nur \\num{20} Treffer landet?\n");
printf("      \\item Würde \\xxas{} Testergebnis ausreichen, um\n");
printf("            die Hypothese $p=\\num{0.5}$ (\\xxa{} rät nur)\n");
printf("            auf dem \\SI{5}{\\percent}-Signifikanzniveau\n");
printf("            verwerfen zu können?\n");
printf("      \\item Berechnen Sie die Irrtumswahrscheinlichkeiten\n");
printf("            1. und 2. Art. wenn nur die beiden Alternativen\n");
printf("            $p=\\num{0.5}$ und $p=\\num{0.8}$ miteinander\n");
printf("            verglichen werden sollen.\n");
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

