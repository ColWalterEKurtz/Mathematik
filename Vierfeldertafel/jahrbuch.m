clear all;

addpath 'Octave/';

% Aufteilung der Tabelle
alt  = [1 true];
jung = [1 false];
mann = [2 true];
frau = [2 false];

% vorgegebene Werte
A = fofota_init();
A = fofota_setand(A, alt, mann, 5000);
A = fofota_setsum(A, mann,     60000);
A = fofota_setsum(A, alt,      11000);
A = fofota_settot(A,          130000);

% vollstaendige Vierfeldertafel
B = fofota_complete(A);

% relative Haeufigkeiten
C = B ./ fofota_gettot(B);

% Wahrscheinlichkeiten der restlichen Aufgaben in [%]
exbP = fofota_getsum(C, mann) * 100;
excP = fofota_getsum(C, jung) * 100;
exdP = fofota_getand(C, frau, alt) / fofota_getsum(C, alt) * 100;
exeP = fofota_getand(C, mann, jung) / fofota_getsum(C, mann) * 100;

% formatierte Werte
ins_exbP = sprintf("%.1f", exbP);
ins_excP = sprintf("%.1f", excP);
ins_exdP = sprintf("%.1f", exdP);
ins_exeP = sprintf("%.1f", exeP);

printf("\\begin{exercise}\n");
printf("      {ID-a6fbbe61f9c57e3037a4f66cfc110c9ab172dfc0}\n");
printf("      {Jahrbuch}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Dem statistischen Jahrbuch einer Stadt ist folgende Tabelle entnommen:\n");
printf("    \\begin{center}\n");
printf("      \\begin{fourfoldtable}\n");
printf("        \\Apos{70 Jahre oder älter}%%\n");
printf("        \\Aneg{unter 70 Jahre alt}%%\n");
printf("        \\Bpos{Männer}%%\n");
printf("        \\Bneg{Frauen}%%\n");
printf("        %s\n", fofota_cat(A, "%d"));
printf("      \\end{fourfoldtable}\n");
printf("    \\end{center}\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Berechne die gelöschten Angaben!\n");
printf("      \\item Mit welcher Wahrscheinlichkeit ist eine zufällig ausgewählte\n");
printf("            Person ein Mann?\n");
printf("      \\item Mit welcher Wahrscheinlichkeit ist eine zufällig ausgewählte\n");
printf("            Person unter 70 Jahre alt?\n");
printf("      \\item Mit welcher Wahrscheinlichkeit ist eine zufällig ausgewählte\n");
printf("            Person, die 70 Jahre oder älter ist, eine Frau?\n");
printf("      \\item Mit welcher Wahrscheinlichkeit ist eine zufällig ausgewählte\n");
printf("            Person, die ein Mann ist, unter 70 Jahre alt?\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Die vollständige Tabelle enthält folgende Werte:\n");
printf("            \\begin{center}\n");
printf("              \\begin{fourfoldtable}\n");
printf("                \\Apos{70 Jahre oder älter}%%\n");
printf("                \\Aneg{unter 70 Jahre alt}%%\n");
printf("                \\Bpos{Männer}%%\n");
printf("                \\Bneg{Frauen}%%\n");
printf("                %s\n", fofota_cat(B, "%d"));
printf("              \\end{fourfoldtable}\n");
printf("            \\end{center}\n");
printf("      \\item Die Wahrscheinlichkeit dafür, dass eine zufällig ausgewählte\n");
printf("            Person ein Mann ist, beträgt ca. \\pc{%s}.\n", ins_exbP);
printf("      \\item Die Wahrscheinlichkeit dafür, dass eine zufällig ausgewählte\n");
printf("            Person unter 70 Jahre alt ist, beträgt ca. \\pc{%s}.\n", ins_excP);
printf("      \\item Die Wahrscheinlichkeit dafür, dass eine zufällig ausgewählte\n");
printf("            Person, die 70 Jahre oder älter ist, eine Frau ist, beträgt\n");
printf("            ca. \\pc{%s}.\n", ins_exdP);
printf("      \\item Die Wahrscheinlichkeit dafür, dass eine zufällig ausgewählte\n");
printf("            Person, die ein Mann ist, unter 70 Jahre alt ist, beträgt\n");
printf("            ca. \\pc{%s}.\n", ins_exeP);
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

