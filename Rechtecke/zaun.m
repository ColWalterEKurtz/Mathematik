clear all;

flaeche = 576;
kostenM = 80;
laenge  = 36;

kostenQ = sqrt(flaeche) * 4 * kostenM;
breite  = flaeche / laenge;
kostenR = (2 * laenge + 2 * breite) * kostenM;

ins_flaeche = sprintf("%d", flaeche);
ins_kostenM = sprintf("%d", kostenM);
ins_laenge  = sprintf("%d", laenge);
ins_kostenQ = sprintf("%d", kostenQ);
ins_kostenR = sprintf("%d", kostenR);

printf("\\begin{exercise}\n");
printf("      {ID-2e77e688457c5f54cabfbd6fe149b0961f44ec3a}\n");
printf("      {Zaun}\n");
printf("  \\ifproblem\\problem\n");
printf("    Die Einzäunung einer Fläche von \\simm{%s} kostet \\eur{%s} pro Meter.\n", ins_flaeche, ins_kostenM);
printf("    Wie viel kostet der Zaun, wenn die Fläche quadratisch ist?\n");
printf("    Wie viel kostet der Zaun, wenn die Fläche rechteckig und\n");
printf("    eine Seite \\simeter{%s} lang ist?\n", ins_laenge);
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Wenn die Fläche quadratisch ist,\n");
printf("            kostet der Zaun insgesamt \\eur{%s}.\n", ins_kostenQ);
printf("      \\item Wenn eine Seite der Fläche \\simeter{%s} lang ist,\n", ins_laenge);
printf("            kostet der Zaun insgesamt \\eur{%s}.\n", ins_kostenR);
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

