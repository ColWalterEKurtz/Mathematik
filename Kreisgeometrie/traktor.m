clear all;

addpath 'Octave/';

dv = 95;
dh = 155;
nu = 50;
sv = pi * dv / 100;
nU = (nu * pi * dv) / (pi * dh);

ins_dv = sprintf("%d",   dv);
ins_dh = sprintf("%d",   dh);
ins_nu = sprintf("%d",   nu);
ins_sv = sprintf("%.2f", sv);
ins_nU = sprintf("%.1f", nU);

printf("\\begin{exercise}\n");
printf("      {ID-ee8f0f69b31b9dfe9043bb5897952e2f029a3546}\n");
printf("      {Traktor}\n");
printf("  \\ifproblem\\problem\n");
printf("    Das Vorderrad eines Traktors hat einen Durchmesser von \\sicm{%s}, das\n", ins_dv);
printf("    Hinterrad misst \\sicm{%s} im Durchmesser.\n", ins_dh);
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Wie weit hat sich der Traktor bei einer Umdrehung\n");
printf("            des Vorderrades bewegt?\n");
printf("      \\item Wie oft hat sich das Hinterrad gedreht, wenn sich\n");
printf("            das Vorderrad \\num{%s} Mal gedreht hat,\n", ins_nu);
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Bei einer Umdrehung des Vorderrades hat sich der Traktor\n");
printf("            ca. \\simeter{%s} weiter bewegt.\n", ins_sv);
printf("      \\item Wenn sich das Vorderrad \\num{60} Mal gedreht hat, hat\n");
printf("            sich das Hinterrad etwa \\num{%s} Mal gedreht.\n", ins_nU);
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

