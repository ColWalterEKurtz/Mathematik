clear all;

addpath 'Octave/';

n = 400;                         % [1]
s = 1;                           % [km]
d = (s * 1000 * 100) / (n * pi); % [cm}

ins_n = sprintf("%d",   n);
ins_s = sprintf("%d",   s);
ins_d = sprintf("%.1f", d);

printf("\\begin{exercise}\n");
printf("      {ID-d426995888a6d1e22f96b3a3d0ef30ead32b8b05}\n");
printf("      {Pkw}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Das Rad eines Pkw muss sich \\num{%s} Mal drehen, damit es \\sikm{%s}\n", ins_n, ins_s);
printf("    zurücklegt. Welchen Durchmesser hat es?\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\\par\n");
printf("    \\begin{equation*}\n");
printf("      U=2\\pi r\n");
printf("      \\quad\\Rightarrow\\quad\n");
printf("      2r=d=\\frac{U}{\\pi}\n");
printf("    \\end{equation*}\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    Das Rad hat einen Durchmesser von ca. \\sicm{%s}.\n", ins_d);
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

