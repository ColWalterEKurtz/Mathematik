clear all;

addpath 'Octave/';

% Position der Attribute innerhalb der Tabelle
ju = [1 true];
ma = [1 false];
be = [2 true];
nb = [2 false];

% gegebene Werte
A = fofota_init();
A = fofota_setsum(A, ju,     16);
A = fofota_setsum(A, ma,     14);
A = fofota_setsum(A, be,     20);
A = fofota_setand(A, ju, be, 13);

% Berechnung der fehlenden Werte
B = fofota_complete(A);

% Formatierung
ins_jungen                   = sprintf("%d", fofota_getsum(A, ju));
ins_maedchen                 = sprintf("%d", fofota_getsum(A, ma));
ins_jungeUndBestanden        = sprintf("%d", fofota_getand(A, ju, be));
ins_bestanden                = sprintf("%d", fofota_getsum(A, be));
ins_maedchenUndDurchgefallen = sprintf("%d", fofota_getand(B, ma, nb));

printf("\\begin{exercise}\n");
printf("      {ID-5442ca44082f03531796efdd1b3f80a687e8e9aa}\n");
printf("      {Mathematiktest}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Die \\num{%s} Jungen und \\num{%s} Mädchen einer Schulklasse nehmen an einem\n", ins_jungen, ins_maedchen);
printf("    Mathematiktest teil. \\num{%s} Jungen bestehen. Insgesamt bestehen \\num{%s}\n", ins_jungeUndBestanden, ins_bestanden);
printf("    Schülerinnen und Schüler den Test. Wie viele Mädchen bestehen den\n");
printf("    Test nicht?\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\\par\n");
printf("    Die Angaben aus der Aufgabenstellung lassen sich z.\\,B. auf folgende\n");
printf("    Weise in einer Vierfeldertafel darstellen:\n");
printf("    \\begin{center}\n");
printf("      \\begin{fourfoldtable}\n");
printf("        \\Apos{Junge}%%\n");
printf("        \\Aneg{Mädchen}%%\n");
printf("        \\Bpos{bestanden}%%\n");
printf("        \\Bneg{$\\overline{\\text{bestanden}}$}%%\n");
printf("        %s%%\n", fofota_cat(A, "%d"));
printf("      \\end{fourfoldtable}%%\n");
printf("    \\end{center}\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    Insgesamt bestehen \\num{%s} Mädchen den Mathematiktest nicht.\n", ins_maedchenUndDurchgefallen);
printf("    \\begin{center}\n");
printf("      \\begin{fourfoldtable}\n");
printf("        \\Apos{Junge}%%\n");
printf("        \\Aneg{Mädchen}%%\n");
printf("        \\Bpos{bestanden}%%\n");
printf("        \\Bneg{$\\overline{\\text{bestanden}}$}%%\n");
printf("        %s%%\n", fofota_cat(B, "%d"));
printf("      \\end{fourfoldtable}%%\n");
printf("    \\end{center}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

