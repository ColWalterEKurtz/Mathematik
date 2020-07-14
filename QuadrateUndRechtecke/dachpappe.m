clear all;

addpath 'Octave/';

laenge  = 11;
breite  = 3;
qmpreis = 7.3;
kosten  = laenge * breite * qmpreis;

ins_laenge  = sprintf("%d",   laenge);
ins_breite  = sprintf("%d",   breite);
ins_qmpreis = sprintf("%.2f", qmpreis);
ins_kosten  = sprintf("%.2f", kosten);

printf("\\begin{exercise}\n");
printf("      {ID-474be168452848bf3c3c2059e2d6da9e9a1c9d4e}\n");
printf("      {Dachpappe}\n");
printf("  \\ifproblem\\problem\n");
printf("    Das Dach eines Schuppens ist \\simeter{%s} lang und \\simeter{%s} breit; es soll\n", ins_laenge, ins_breite);
printf("    mit Dachpappe belegt werden, von der jeder Quadratmeter \\eur{%s} kostet.\n", ins_qmpreis);
printf("    Wie viel kostet der Dachpappenbelag?\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Insgesamt muss man für die Dachpappe \\eur{%s} bezahlen.\n", ins_kosten);
printf("  \\fi\n");
printf("\\end{exercise}\n");

