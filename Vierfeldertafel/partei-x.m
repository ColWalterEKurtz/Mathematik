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
printf("      {ID-34efd2ea792a89d08c0372a8c3e375ac914a7ae7}\n");
printf("      {Partei X}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Bei einer Meinungsumfrage wurden die Wähler\n");
printf("    eines bestimmten Wahllokals nach der\n");
printf("    Stimmabgabe befragt, ob sie für Partei X\n");
printf("    gestimmt hätten. Dabei gaben \\pc{3} an, sie\n");
printf("    gewählt zu haben, \\pc{97} nannten andere\n");
printf("    Parteien. Nach Auszählung der Stimmen ergab\n");
printf("    sich in diesem Wahllokal ein Stimmenanteil\n");
printf("    von \\pc{8} für Partei X. Wir gehen davon aus,\n");
printf("    dass die Wähler, die sich nach der Wahl zu\n");
printf("    Partei X bekannten, diese auch wirklich\n");
printf("    gewählt haben.\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Wie viel Prozent der Befragten haben\n");
printf("            gelogen?\n");
printf("      \\item Wie viel Prozent der Wähler von Partei\n");
printf("            X haben gelogen?\n");
printf("    \\end{enumerate}\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    %% </OUTLINE>\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    %% <OUTCOME>\n");
printf("    \\begin{minipage}[c]{0.38\\linewidth}\n");
printf("      \\begin{fofotab}%%[t]\n");
printf("        %% Bezeichnungen\n");
printf("        \\lblA{$X$}\n");
printf("        \\lbla{$\\overline{X}$}\n");
printf("        \\lblB{$B$}\n");
printf("        \\lblb{$\\overline{B}$}\n");
printf("        %% Mitte\n");
printf("        \\andAB{\\num{0.03}}\n");
printf("        \\andAb{\\num{0.05}}\n");
printf("        \\andaB{\\num{0}}\n");
printf("        \\andab{\\num{0.92}}\n");
printf("        %% Rand\n");
printf("        \\sumA {\\num{0.08}}\n");
printf("        \\suma {\\num{0.92}}\n");
printf("        \\sumB {\\num{0.03}}\n");
printf("        \\sumb {\\num{0.97}}\n");
printf("        \\total{1}\n");
printf("      \\end{fofotab}\n");
printf("    \\end{minipage}%%\n");
printf("    \\begin{minipage}[c]{0.49\\linewidth}\n");
printf("      \\begin{itemize}\n");
printf("        \\renewcommand{\\itemsep}{-1ex}%%\n");
printf("        \\item[$X$:]\\glqq Partei X gewählt\\grqq\n");
printf("        \\item[$\\overline{X}$:]\\glqq Partei X nicht gewählt\\grqq\n");
printf("        \\item[$B$:]\\glqq zu Partei X bekannt\\grqq\n");
printf("        \\item[$\\overline{B}$:]\\glqq nicht zu Partei X bekannt\\grqq\n");
printf("      \\end{itemize}\n");
printf("    \\end{minipage}\\par\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Die Befragten können theoretisch auf\n");
printf("            zwei verschiedene Arten lügen:\n");
printf("            \\begin{equation*}\n");
printf("              P(\\text{\\glqq Lüge\\grqq})\n");
printf("              =P(X\\cap\\overline{B})+P(\\overline{X}\\cap B)\n");
printf("              =\\num{0.05}+\\num{0}=\\SI{5}{\\percent}\n");
printf("            \\end{equation*}\n");
printf("      \\item Sucht man die Unehrlichen nur im Kreis\n");
printf("            der Wähler von Partei X, kann man dies\n");
printf("            als bedingte Wahrscheinlichkeit\n");
printf("            berechnen:\n");
printf("            \\begin{equation*}\n");
printf("              P_{X}(\\overline{B})\n");
printf("              =\\frac{P(X\\cap\\overline{B})}{P(X)}\n");
printf("              =\\frac{\\num{0.05}}{\\num{0.08}}\n");
printf("              =\\SI{62.5}{\\percent}\n");
printf("              %%5/8*100\n");
printf("            \\end{equation*}\n");
printf("    \\end{enumerate}\n");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

