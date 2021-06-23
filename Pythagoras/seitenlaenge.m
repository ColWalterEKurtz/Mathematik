clear all;

addpath 'Octave/';

diagonale = 60;
differenz = 12;
p         = differenz;
q         =  (differenz^2 - diagonale^2) / 2;
b         = -p/2 + sqrt((p/2)^2 - q);
a         = b + differenz;

ins_diagonale = sprintf("%d", diagonale);
ins_differenz = sprintf("%d", differenz);
ins_b         = sprintf("%d", b);
ins_a         = sprintf("%d", a);

printf("\\begin{exercise}\n");
printf("      {ID-2ff5f81fbb7bfcfc8e89ade2a20c1f80e355ab92}\n");
printf("      {Seitenlänge}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Die Diagonale eines Rechtecks ist \\sicm{%s} lang.\n", ins_diagonale);
printf("    Die Seitenlängen unterscheiden sich um \\sicm{%s}.\n", ins_differenz);
printf("    Bestimme die Länge der beiden Seiten.\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    Das Rechteck besitzt die Seiten $a=\\sicm{%s}$ und $b=\\sicm{%s}$.\n", ins_a, ins_b);
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

