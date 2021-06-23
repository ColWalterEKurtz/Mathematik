clear all;

addpath 'Octave/';

laenge   = 235;
breite   = 185;
infra    = 9875;
bauplatz = 840;
anzahl   = (laenge * breite - infra) / bauplatz;

ins_laenge = sprintf("%d", laenge);
ins_breite = sprintf("%d", breite);
ins_infra = sprintf("%d", infra);
ins_bauplatz = sprintf("%d", bauplatz);
ins_anzahl = sprintf("%d", anzahl);

printf("\\begin{exercise}\n");
printf("      {ID-91d74e184ff1c45857a99e7cfd27d0b0ada040c5}\n");
printf("      {Bauplätze}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Eine rechteckige Wiese, die \\simeter{%s} lang und \\simeter{%s} breit ist, soll\n", ins_laenge, ins_breite);
printf("    als Baugelände erschlossen werden. Auf Wege, Gräben und dergleichen entfallen\n");
printf("    \\simm{%s}. Die einzelnen Bauplätze haben eine Größe von jeweils \\simm{%s}.\n", ins_infra, ins_bauplatz);
printf("    Wie viele Bauplätze erhält man?\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    Auf diesem Gelände können insgesamt \\num{%s} Bauplätze ausgewiesen werden.\n", ins_anzahl);
printf("  \\fi\n");
printf("\\end{exercise}\n");

