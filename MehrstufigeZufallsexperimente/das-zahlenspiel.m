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
printf("      {ID-24161ee77a4665a7a943c0a0da8fdf751fe347f8}\n");
printf("      {Das Zahlenspiel}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Bei einem Spiel wird eine Urne eingesetzt, in der\n");
printf("    sich 4 Kugeln mit der Aufschrift \\glqq 0\\grqq,\n");
printf("    2 Kugeln mit der Aufschrift \\glqq 1\\grqq, 3 Kugeln\n");
printf("    mit der Aufschrift \\glqq 2\\grqq{} und eine Kugel\n");
printf("    mit der Aufschrift \\glqq 3\\grqq{} befinden.\n");
printf("    Man zahlt \\eur{1} als Einsatz und zieht zufällig\n");
printf("    eine Kugel. Dann erhält man der Beschriftung\n");
printf("    entsprechend Geld zurück. Zieht man z.\\,B. eine\n");
printf("    Kugel mit aufgedruckter \\glqq 2\\grqq{} erhält man\n");
printf("    \\eur{2} zurück.\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Gib den Ergebnisraum $\\Omega$ an.\n");
printf("      \\item Gib den Ereignisraum $\\mathcal{P}(\\Omega)$ an.\n");
printf("      \\item Berechne die Mächtigkeit des Ereignisraums.\n");
printf("      \\item Gib eine Wahrscheinlichkeitsverteilung für\n");
printf("            das Spiel an.\n");
printf("      \\item Überprüfe das Spiel auf Fairness.\n");
printf("    \\end{enumerate}\n");
printf("    Ein anderes Spiel nutzt die gleiche Urne mit den\n");
printf("    gleichen Kugeln, es darf aber zweimal gezogen werden.\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\setcounter{enumi}{5}\n");
printf("      \\item Zeichne ein Baumdiagramm.\n");
printf("      \\item Berechne die Wahrscheinlichkeiten für folgende\n");
printf("            Ereignisse:\n");
printf("            \\begin{enumerate}[i.]\n");
printf("              \\item Es werden nur Kuglen mit der Aufschrift\n");
printf("                    \\glqq 0\\grqq{} gezogen.\n");
printf("              \\item Es wird mindestens eine Kugel mit\n");
printf("                    der Aufschrift \\glqq 0\\grqq{}\n");
printf("                    gezogen.\n");
printf("              \\item Es wird keine Kugel mit der\n");
printf("                    Aufschrift \\glqq 0\\grqq{}\n");
printf("                    gezogen.\n");
printf("            \\end{enumerate}\n");
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

