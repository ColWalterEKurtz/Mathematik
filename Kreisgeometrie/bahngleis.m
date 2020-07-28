clear all;

addpath 'Octave/';

alpha = 35;              % Grad
bogen = 175;             % m
u = 360 / alpha * bogen; % m
d = u / pi;              % m

ins_alpha = sprintf("%d",   alpha);
ins_bogen = sprintf("%d",   bogen);
ins_d     = sprintf("%.2f", d);

printf("\\begin{exercise}\n");
printf("      {ID-7d7011f6d84a61138be31add28528468b3064c31}\n");
printf("      {Bahngleis}\n");
printf("  \\ifproblem\\problem\n");
printf("    Ein Bahngleis macht über einen Winkel von \\ang{%s} einen \\simeter{%s}\n", ins_alpha, ins_bogen);
printf("    langen Bogen. Welchen Durchmesser hat der Kreis, auf dem der Zug fährt?\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Der Zug fährt auf einem Kreis mit einem Durchmesser von\n");
printf("    ca. \\simeter{%s}.\n", ins_d);
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

