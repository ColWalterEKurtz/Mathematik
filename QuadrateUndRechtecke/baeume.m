clear all;

addpath 'Octave/';

laenge  = 180;
breite  = 105;
abstand = 15;
anzahl  = (2 * laenge + 2 * breite) / abstand;

ins_laenge  = sprintf("%d", laenge);
ins_breite  = sprintf("%d", breite);
ins_abstand = sprintf("%d", abstand);
ins_anzahl  = sprintf("%d", anzahl);

printf("\\begin{exercise}\n");
printf("      {ID-8b358c0af0700d0c6b68c2bab22d52df1cf12a62}\n");
printf("      {Bäume}\n");
printf("  \\ifproblem\\problem\n");
printf("    Ein Gärtner soll rund um einen Platz, der \\simeter{%s} lang und \\simeter{%s}\n", ins_laenge, ins_breite);
printf("    breit ist, Bäume im Abstand von \\simeter{%s} anpflanzen. Wie viele Bäume\n", ins_abstand);
printf("    braucht er?\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Er muss insgesamt \\num{%s} Bäume pflanzen.\n", ins_anzahl);
printf("  \\fi\n");
printf("\\end{exercise}\n");

