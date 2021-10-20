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
printf("      {ID-0c09acfe800d84e4fe27bb9e56e5ef0e3d18936b}\n");
printf("      {Ersatzteil}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Ein Ersatzteil wird auf zwei Maschinen gefertigt:\n");
printf("    Maschine A liefert pro Tag \\num{2000}, Maschine B\n");
printf("    \\num{5000} Stück. Bei Maschine A gibt es\n");
printf("    erfahrungsgemäß \\pc{3.5}, bei Maschine B \\pc{1.5}\n");
printf("    Ausschuss. Mit welcher Wahrscheinlichkeit stammt\n");
printf("    ein defektes Teil von Maschine A?\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    Zunächst erstellt man eine Vierfeldertafel mit\n");
printf("    absoluten Häufigkeiten. Dazu müssen manche\n");
printf("    Angaben aus der Aufgabenstellung erst\n");
printf("    umgerechnet werden:\\par\n");
printf("    \\begin{minipage}{0.46\\linewidth}\n");
printf("      \\begin{fofotab}%%[t]\n");
printf("        %% Bezeichnungen\n");
printf("        \\lblA{$A$}\n");
printf("        \\lbla{$B$}\n");
printf("        \\lblB{$d$}\n");
printf("        \\lblb{$\\overline{d}$}\n");
printf("        %% Mitte\n");
printf("        \\andAB{$\\num{0.035}\\cdot\\num{2000}$}\n");
printf("        \\andAb{}\n");
printf("        \\andaB{$\\num{0.015}\\cdot\\num{5000}$}\n");
printf("        \\andab{}\n");
printf("        %% Rand\n");
printf("        \\sumA {\\num{2000}}\n");
printf("        \\suma {\\num{5000}}\n");
printf("        \\sumB {}\n");
printf("        \\sumb {}\n");
printf("        \\total{}\n");
printf("      \\end{fofotab}\n");
printf("    \\end{minipage}%%\n");
printf("    \\begin{minipage}{0.53\\linewidth}\n");
printf("      \\begin{itemize}\n");
printf("        \\renewcommand{\\itemsep}{-1ex}%%\n");
printf("        \\item[$A$:] \\glqq das Ersatzteil stammt von Maschine A\\grqq\n");
printf("        \\item[$B$:] \\glqq das Ersatzteil stammt von Maschine B\\grqq\n");
printf("        \\item[$d$:] \\glqq das Ersatzteil ist defekt\\grqq\n");
printf("        \\item[$\\overline{d}$:] \\glqq das Ersatzteil ist nicht defekt\\grqq\n");
printf("      \\end{itemize}\n");
printf("    \\end{minipage}\\par\n");
printf("    %% </OUTLINE>\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    %% <OUTCOME>\n");
printf("    Aus den Angaben der Aufgabenstellung lassen sich\n");
printf("    folgende absoluten Werte ableiten:\\par\n");
printf("    \\begin{minipage}{0.4\\linewidth}\n");
printf("      \\begin{fofotab}%%[t]\n");
printf("        %% Bezeichnungen\n");
printf("        \\lblA{$A$}\n");
printf("        \\lbla{$B$}\n");
printf("        \\lblB{$d$}\n");
printf("        \\lblb{$\\overline{d}$}\n");
printf("        %% Mitte\n");
printf("        \\andAB{\\num{70}}\n");
printf("        %%0.035 * 2000\n");
printf("        \\andAb{\\num{1930}}\n");
printf("        \\andaB{\\num{75}}\n");
printf("        %%0.015 * 5000\n");
printf("        \\andab{\\num{4925}}\n");
printf("        %% Rand\n");
printf("        \\sumA {\\num{2000}}\n");
printf("        \\suma {\\num{5000}}\n");
printf("        \\sumB {\\num{145}}\n");
printf("        \\sumb {\\num{6855}}\n");
printf("        %%7000 - 145\n");
printf("        \\total{\\num{7000}}\n");
printf("      \\end{fofotab}\n");
printf("    \\end{minipage}%%\n");
printf("    \\begin{minipage}{0.53\\linewidth}\n");
printf("      \\begin{itemize}\n");
printf("        \\renewcommand{\\itemsep}{-1ex}%%\n");
printf("        \\item[$A$:] \\glqq das Ersatzteil stammt von Maschine A\\grqq\n");
printf("        \\item[$B$:] \\glqq das Ersatzteil stammt von Maschine B\\grqq\n");
printf("        \\item[$d$:] \\glqq das Ersatzteil ist defekt\\grqq\n");
printf("        \\item[$\\overline{d}$:] \\glqq das Ersatzteil ist nicht defekt\\grqq\n");
printf("      \\end{itemize}\n");
printf("    \\end{minipage}\\par\n");
printf("    Gesucht ist die (bedingte) Wahrscheinlichkeit\n");
printf("    mit der ein defektes Ersatzteil von Maschine\n");
printf("    A stammt, also:\n");
printf("    \\begin{equation*}\n");
printf("      P_{d}(A)=\\frac{P(A\\cap d)}{P(d)}\n");
printf("      =\\frac{\\;\\frac{70}{\\num{7000}}\\;}{\\;\\frac{145}{\\num{7000}}\\;}\n");
printf("      =\\frac{70}{145}\n");
printf("      =\\frac{14}{29}\n");
printf("      \\approx\\num{0.483}\n");
printf("    \\end{equation*}\n");
printf("    Ein defektes Ersatzteil wurde also mit\n");
printf("    einer Wahrscheinlichkeit von etwa \\pc{48.3}\n");
printf("    von Maschine A hergestellt.\n");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

