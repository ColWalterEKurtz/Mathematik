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

printf("%% 2021-12-08\n");
printf("\\begin{exercise}\n");
printf("      {ID-b6210a3033549a64a426a60c8939f2ffc15752c1}\n");
printf("      {Schießstand}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    \\xya{} und \\xyb{} sind auf dem Schießstand.\n");
printf("    Sie schießen abwechselnd. \\xya{} ist der\n");
printf("    bessere Schütze mit einer Trefferquote von\n");
printf("    \\pc{80} (\\xyb: \\pc{50}). Es fällt ein Schuss:\n");
printf("    Daneben! Mit welcher Wahrscheinlichkeit hat\n");
printf("    \\xyb{} geschossen?\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    %% </OUTLINE>\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    %% <OUTCOME>\n");
printf("    Ohne das Ergebnis eines Schusses zu kennen,\n");
printf("    wäre die Wahrscheinlichkeit geschossen zu\n");
printf("    haben für beide Schützen gleich groß, also\n");
printf("    \\SI{50}{\\percent}.\n");
printf("    Mit den vorab bekannten Trefferquoten\n");
printf("    erhält man damit dann auch die\n");
printf("    Pfadwahrscheinlichkeiten für $A\\cap T$\n");
printf("    bzw. $B\\cap T$:\n");
printf("    \\par\n");
printf("    \\begin{minipage}[c]{0.39\\linewidth}\n");
printf("      \\begin{fofotab}%%[t]\n");
printf("        %% Bezeichnungen\n");
printf("        \\lblA{$A$}\n");
printf("        \\lbla{$B$}\n");
printf("        \\lblB{$T$}\n");
printf("        \\lblb{$\\overline{T}$}\n");
printf("        %% Mitte\n");
printf("        \\andAB{\\num{0.4}}\n");
printf("        \\andAb{\\num{0.1}}\n");
printf("        \\andaB{\\num{0.25}}\n");
printf("        \\andab{\\num{0.25}}\n");
printf("        %% Rand\n");
printf("        \\sumA {\\num{0.5}}\n");
printf("        \\suma {\\num{0.5}}\n");
printf("        \\sumB {\\num{0.65}}\n");
printf("        \\sumb {\\num{0.35}}\n");
printf("        \\total{1}\n");
printf("      \\end{fofotab}\n");
printf("    \\end{minipage}%%\n");
printf("    \\begin{minipage}[c]{0.49\\linewidth}\n");
printf("      \\begin{itemize}\n");
printf("        \\renewcommand{\\itemsep}{-1ex}%%\n");
printf("        \\item[$A$:] \\glqq\\xya{} hat geschossen\\grqq\n");
printf("        \\item[$B$:] \\glqq\\xyb{} hat geschossen\\grqq\n");
printf("        \\item[$T$:] \\glqq Treffer\\grqq\n");
printf("        \\item[$\\overline{T}$:] \\glqq kein Treffer\\grqq\n");
printf("      \\end{itemize}\n");
printf("    \\end{minipage}%%\n");
printf("    \\par\n");
printf("    Mit bekanntem Ergebnis kann man dann die\n");
printf("    Wahrscheinlichkeit für den jeweiligen\n");
printf("    Schützen aktualisieren:\n");
printf("    \\begin{equation*}\n");
printf("      P_{\\overline{T}}(B)\n");
printf("      =\\frac{P(B\\cap\\overline{T})}{P(\\overline{T})}\n");
printf("      =\\frac{\\num{0.25}}{\\num{0.35}}\n");
printf("      =\\frac{5}{7}\n");
printf("      \\approx\\SI{71.4}{\\percent}\n");
printf("      %%5/7*100\n");
printf("    \\end{equation*}\n");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

