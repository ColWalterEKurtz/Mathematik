clear all;

% numerische Werte
qm      = 408;
n       = 10200;
flaeche = 381;
anzahl  = n / qm * flaeche;

% formatierte Werte
ins_qm      = sprintf("%d", qm);
ins_n       = sprintf("%d", n);
ins_flaeche = sprintf("%d", flaeche);
ins_anzahl  = sprintf("%d", anzahl);

printf("\\begin{exercise}\n");
printf("      {ID-c6876eea13925ded3dee36ac8880e5fd2e4ae720}\n");
printf("      {Dachpfannen}\n");
printf("  \\ifproblem\\problem\n");
printf("    Für das Decken eines Daches von \\simm{%s} werden \\num{%s} Dachpfannen benötigt.\n", ins_qm, ins_n);
printf("    Wie viele Dachpfannen benötigt man für ein \\simm{%s} großes Dach?\n", ins_flaeche);
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Für ein \\simm{%s} großes Dach werden \\num{%s} Dachpfannen benötigt.\n", ins_flaeche, ins_anzahl);
printf("  \\fi\n");
printf("\\end{exercise}\n");

