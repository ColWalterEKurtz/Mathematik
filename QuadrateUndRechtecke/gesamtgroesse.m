clear all;

addpath 'Octave/';

laenge1 = 18;
laenge2 = 23;
breite2 = 19;
gesamtgroesse = laenge1 * laenge1 + laenge2 * breite2;

ins_laenge1 = sprintf("%d", laenge1);
ins_laenge2 = sprintf("%d", laenge2);
ins_breite2 = sprintf("%d", breite2);
ins_gesamtgroesse = sprintf("%d", gesamtgroesse);

printf("\\begin{exercise}\n");
printf("      {ID-e00899890775661f4baf8d16c87fcc09abc48395}\n");
printf("      {Gesamtgröße}\n");
printf("  \\ifproblem\\problem\n");
printf("    Ein Garten ist \\simeter{%s} lang und ebenso breit; ein anderer \\simeter{%s} lang\n", ins_laenge1, ins_laenge2);
printf("    und \\simeter{%s} breit. Wie groß sind beide Gärten zusammen?\n", ins_breite2);
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Beide Gärten sind zusammen \\simm{%s} groß.\n", ins_gesamtgroesse);
printf("  \\fi\n");
printf("\\end{exercise}\n");

