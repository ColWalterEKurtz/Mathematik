clear all;

addpath 'Octave/';

laengeg = 20;
breiteg = 42;
laengeh = 10.8;
breiteh = 8.5;
tundw   = 182.4;
garten  = laengeg * breiteg - laengeh * breiteh - tundw;

ins_laengeg = sprintf("%d",   laengeg);
ins_breiteg = sprintf("%d",   breiteg);
ins_laengeh = sprintf("%.2f", laengeh);
ins_breiteh = sprintf("%.2f", breiteh);
ins_tundw   = sprintf("%.2f", tundw);
ins_garten  = sprintf("%.2f", garten);

printf("\\begin{exercise}\n");
printf("      {ID-665db7608a26d07ebec830c00c5d99cc741ab0d3}\n");
printf("      {Garten}\n");
printf("  \\ifproblem\\problem\n");
printf("    Ein mit einem Einfamilienhaus bebautes Grundstück ist \\simeter{%s} lang und\n", ins_laengeg);
printf("    \\simeter{%s} breit. Das Haus hat die Abmessungen \\simeter{%s} und \\simeter{%s};\n", ins_breiteg, ins_laengeh, ins_breiteh);
printf("    Terrasse und Wege machen zusammen \\simm{%s} aus. Wie groß ist die\n", ins_tundw);
printf("    Fläche, die für den Garten verbleibt?\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Für den Garten verbleibt eine Fläche von \\simm{%s}.\n", ins_garten);
printf("  \\fi\n");
printf("\\end{exercise}\n");

