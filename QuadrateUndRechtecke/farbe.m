clear all;

addpath 'Octave/';

laenge  = 5;
breite  = 4;
qmpreis = 14;
kosten  = laenge * breite * qmpreis;

ins_laenge  = sprintf("%d", laenge);
ins_breite  = sprintf("%d", breite);
ins_qmpreis = sprintf("%d", qmpreis);
ins_kosten  = sprintf("%d", kosten);

printf("\\begin{exercise}\n");
printf("      {ID-fca31b79a8ac0f0be42f97014e617c1eb4900a08}\n");
printf("      {Farbe}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Ein Zimmer ist \\simeter{%s} lang und \\simeter{%s} breit. Was kostet das Anstreichen\n", ins_laenge, ins_breite);
printf("    der Decke, wenn die Farbe, die man für \\simm{1} benötigt, \\eur{%s} kostet?\n", ins_qmpreis);
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    Die Farbe zum Anstreichen der gesamten Zimmerdecke kostet \\eur{%s}.\n", ins_kosten);
printf("  \\fi\n");
printf("\\end{exercise}\n");

