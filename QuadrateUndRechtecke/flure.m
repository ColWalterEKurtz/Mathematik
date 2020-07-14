clear all;

addpath 'Octave/';

fliese = 1;
ebenen = 3;
laenge = 60;
breite = 4;
anzahl = laenge * 10 * breite * 10 * ebenen;

ins_fliese = sprintf("%d", fliese);
ins_ebenen = sprintf("%d", ebenen);
ins_laenge = sprintf("%d", laenge);
ins_breite = sprintf("%d", breite);
ins_anzahl = sprintf("%d", anzahl);

printf("\\begin{exercise}\n");
printf("      {ID-f02aef0dcd49ed737e5de8fa59212b2a279acffb}\n");
printf("      {Flure}\n");
printf("  \\ifproblem\\problem\n");
printf("    Die Flure einer Schule sollen mit \\sidmm{1} großen Fliesen belegt werden.\n");
printf("    Das Gebäude hat \\num{%s} Stockwerke; jeder Flur ist \\simeter{%s} lang und \\simeter{%s}\n", ins_ebenen, ins_laenge, ins_breite);
printf("    breit. Wie viele Fliesen sind nötig?\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Es werden insgesamt \\num{%s} Fliesen benötigt.\n", ins_anzahl);
printf("  \\fi\n");
printf("\\end{exercise}\n");

