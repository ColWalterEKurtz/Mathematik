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
printf("      {ID-141a39f9b876d741e156bea9ccd6368c30f71592}\n");
printf("      {Blau oder Nichtblau, das ist hier die Frage}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    An Freitagen fehlen \\xya{} und \\xxb{} oft\n");
printf("    in der Schule. \\xya{} fehlt freitags mit einer\n");
printf("    Wahrscheinlichkeit von \\num{0.3} und \\xxb{}\n");
printf("    ist mit einer Wahrscheinlichkeit von \\num{0.45}\n");
printf("    nicht da. Die Wahrscheinlichkeit dafür,\n");
printf("    dass beide anwesend sind, beträgt nur \\num{0.4}.\n");
printf("    Sind die Abwesenheit von \\xya{} und die\n");
printf("    Abwesenheit von \\xxb{} an Freitagen unabhängige\n");
printf("    Ereignisse?\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    Wenn zwei Ereignisse $A$ und $B$ stochastisch\n");
printf("    unabhängig voneinander sind, gilt folgender\n");
printf("    Zusammenhang:\n");
printf("    \\begin{equation*}\n");
printf("      P(A\\cap B)=P(A)\\cdot P_{A}(B)=P(A)\\cdot P(B)\n");
printf("    \\end{equation*}\n");
printf("    Das Ereignis $A$ beeinflusst das Eintreten\n");
printf("    von Ereignis $B$ also überhaupt nicht:\n");
printf("    \\begin{equation*}\n");
printf("      P(B)\n");
printf("      =\n");
printf("      P_{A}(B)\n");
printf("      =\n");
printf("      \\frac{P(A\\cap B)}{P(A)}\n");
printf("    \\end{equation*}\n");
printf("    %% </OUTLINE>\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    %% <OUTCOME>\n");
printf("    Mit den Angaben aus der Aufgabenstellung lässt\n");
printf("    sich folgende Vierfeldertafel aufstellen:\\par\n");
printf("    \\begin{minipage}{0.4\\linewidth}\n");
printf("      \\begin{fofotab}%%[t]\n");
printf("        %% Bezeichnungen\n");
printf("        \\lblA{$A$}\n");
printf("        \\lbla{$\\overline{A}$}\n");
printf("        \\lblB{$B$}\n");
printf("        \\lblb{$\\overline{B}$}\n");
printf("        %% Mitte\n");
printf("        \\andAB{\\num{0.4}}\n");
printf("        \\andAb{\\num{0.3}}\n");
printf("        \\andaB{\\num{0.15}}\n");
printf("        \\andab{\\num{0.15}}\n");
printf("        %% Rand\n");
printf("        \\sumA {\\num{0.7}}\n");
printf("        \\suma {\\num{0.3}}\n");
printf("        \\sumB {\\num{0.55}}\n");
printf("        \\sumb {\\num{0.45}}\n");
printf("        \\total{1}\n");
printf("      \\end{fofotab}%%\n");
printf("    \\end{minipage}%%\n");
printf("    \\begin{minipage}{0.58\\linewidth}\n");
printf("      \\begin{itemize}\n");
printf("        \\renewcommand{\\itemsep}{-1ex}%%\n");
printf("        \\item[$A$:] \\glqq\\xya{} ist anwesend\\grqq\n");
printf("        \\item[$\\overline{A}$:] \\glqq\\xya{} ist nicht anwesend\\grqq\n");
printf("        \\item[$B$:] \\glqq\\xxb{} ist anwesend\\grqq\n");
printf("        \\item[$\\overline{B}$:] \\glqq\\xxb{} ist nicht anwesend\\grqq\n");
printf("      \\end{itemize}\n");
printf("    \\end{minipage}\\par\n");
printf("    Wenn die An- bzw. Abwesenheit von \\xya{} die\n");
printf("    An- bzw. Abwesenheit von \\xxb{} nicht\n");
printf("    beeinflussen würde, müsste für die gemeinsame\n");
printf("    An- bzw. Abwesenheit gelten:\n");
printf("    \\begin{equation*}\n");
printf("      \\begin{split}\n");
printf("        P(A\\cap B)\n");
printf("        &=P(A)\\cdot P(B)\n");
printf("        \\\\\n");
printf("        P(A\\cap\\overline{B})\n");
printf("        &=P(A)\\cdot P(\\overline{B})\n");
printf("        \\\\\n");
printf("        P(\\overline{A}\\cap B)\n");
printf("        &=P(\\overline{A})\\cdot P(B)\n");
printf("        \\\\\n");
printf("        P(\\overline{A}\\cap\\overline{B})\n");
printf("        &=P(\\overline{A})\\cdot P(\\overline{B})\n");
printf("      \\end{split}\n");
printf("    \\end{equation*}\n");
printf("    Das Nachrechnen mit den Werten aus der\n");
printf("    Vierfeldertafel ergibt:\n");
printf("    \\begin{equation*}\n");
printf("      P(A)\\cdot P(B)=\n");
printf("      \\num{0.7}\\cdot\\num{0.55}=\\num{0.385}\n");
printf("      \\neq\n");
printf("      \\num{0.4}=P(A\\cap B)\n");
printf("    \\end{equation*}\n");
printf("    Wenn \\xya{} und \\xxb{} unabhängig voneinander\n");
printf("    in der Schule fehlen würden, dann wären sie nur\n");
printf("    an \\pc{38.5} aller Freitage gemeinsam anwesend.\n");
printf("    Da sie aber an \\pc{40} aller Freitage gemeinsam\n");
printf("    anwesend sind, scheint die Anwesenheit der bzw.\n");
printf("    des Einen die Anwesenheit des bzw. der Anderen\n");
printf("    positiv zu beeinflussen.\n");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

