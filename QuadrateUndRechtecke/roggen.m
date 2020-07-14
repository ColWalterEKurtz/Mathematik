clear all;

addpath 'Octave/';

laenge  = 200;
breite  = 145;
qmgramm = 18;
kgpreis = 1.4;
kosten = laenge * breite * qmgramm / 1000 * kgpreis;

ins_laenge  = sprintf("%d",   laenge);
ins_breite  = sprintf("%d",   breite);
ins_qmgramm = sprintf("%d",   qmgramm);
ins_kgpreis = sprintf("%.2f", kgpreis);
ins_kosten  = sprintf("%.2f", kosten);

printf("\\begin{exercise}\n");
printf("      {ID-6510777a84c96913d58277b428beada2cb38dc1a}\n");
printf("      {Roggen}\n");
printf("  \\ifproblem\\problem\n");
printf("    Ein Acker von \\simeter{%s} Länge und \\simeter{%s} Breite soll mit Roggen bestellt\n", ins_laenge, ins_breite);
printf("    werden. Für jeden Quadratmeter braucht man \\sig{%s} Saatgut. Ein Kilogramm\n", ins_qmgramm);
printf("    Saatgut kostet \\eur{%s}. Wie viel kostet das Saatgut für das gesamte Feld?\n", ins_kgpreis);
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Das Saatgut für dieses Feld kostet \\eur{%s}.\n", ins_kosten);
printf("  \\fi\n");
printf("\\end{exercise}\n");

