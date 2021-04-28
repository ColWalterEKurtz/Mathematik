clear all;

addpath 'Octave/';

M  = 25000;
BC = 10;  % [cm]
AB = 2.8; % [cm]
AC = sqrt(BC^2 - AB^2) / 100 * M;

ins_M  = sprintf("%d",   M);
ins_BC = sprintf("%d",   BC);
ins_AB = sprintf("%.1f", AB);
ins_AC = sprintf("%d",   AC);

printf("\\begin{exercise}\n");
printf("      {ID-bd8d8511f59aac08e41f175654b44fb36ab1b512}\n");
printf("      {Karte}\n");
printf("  \\ifproblem\\problem\n");
printf("    Auf einer Karte im Maßstab 1\\,:\\,\\num{%s} wird ein rechtwinkliges Dreieck\n", ins_M);
printf("    $ABC$ markiert. Die Länge der Hypotenuse $\\overline{BC}$ beträgt \\sicm{%s}.\n", ins_BC);
printf("    Die Kathete $\\overline{AB}$ wird mit \\sicm{%s} gemessen. Bestimme die\n", ins_AB);
printf("    tatsächliche Länge der Strecke $\\overline{AC}$ in Meter.\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Die Stecke $\\overline{AC}$ besitzt in Realität eine Länge von \\simeter{%s}.\n", ins_AC);
printf("  \\fi\n");
printf("\\end{exercise}\n");

