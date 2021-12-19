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
printf("      {ID-aeb06ea89571cbb9ea16bcfab3b10f98b697785e}\n");
printf("      {Zwei Kneipen}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    In einem Dorf gibt es zwei Kneipen.\n");
printf("    Zu Beginn gehen \\pc{30} regelmäßig in die\n");
printf("    Kneipe A, \\pc{25} in die Kneipe B und\n");
printf("    \\pc{45} gehen in keine der beiden Kneipen.\n");
printf("    Die folgende Übergangstabelle zeigt das\n");
printf("    Wechselverhalten der Kneipenbesucher pro\n");
printf("    Monat.\n");
printf("    \\begin{center}\n");
printf("      \\begingroup\n");
printf("        \\setlength{\\tabcolsep}{0.75em}%%\n");
printf("        \\renewcommand{\\arraystretch}{1.2}%%\n");
printf("        \\begin{tabular}{|c|c|c|c|}\n");
printf("          \\hline\n");
printf("                 & von A      & von B     & von K     \\\\\n");
printf("          \\hline\n");
printf("          nach A & \\num{0.4}  & \\num{0.2} & \\num{0.1} \\\\\n");
printf("          \\hline\n");
printf("          nach B & \\num{0.25} & \\num{0.6} & \\num{0.2} \\\\\n");
printf("          \\hline\n");
printf("          nach K & \\num{0.35} & \\num{0.2} & \\num{0.7} \\\\\n");
printf("          \\hline\n");
printf("        \\end{tabular}\n");
printf("      \\endgroup\n");
printf("    \\end{center}\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      %%\\setlength{\\itemsep}{-1ex}%%\n");
printf("      \\item Erstellen Sie ein Übergangsdiagramm, das das\n");
printf("            Wechselverhalten der Kneipenbesucher beschreibt.\n");
printf("      \\item Bestimmen Sie die Übergangsmatrix für das\n");
printf("            Wechselverhelten der Kneipenbesucher.\n");
printf("      \\item Geben Sie die Anfangsverteilung als Zustandsvektor an.\n");
printf("      \\item Berechnen Sie die Verteilung der Kneipenbesucher\n");
printf("            nach einem Monat und nach zwei Monaten.\n");
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

