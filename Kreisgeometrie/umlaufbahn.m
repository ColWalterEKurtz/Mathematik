clear all;
format long;

addpath 'Octave/';

t = 365;          % Tage
r = 150e6;        % km
u = 2 * pi * r;   % km
v = u / (t * 24); % km/h

ins_t = sprintf("%d",   t);
ins_r = sprintf("%d",   r);
ins_u = sprintf("%.0f", u);
ins_v = sprintf("%.0f", v);

printf("\\begin{exercise}\n");
printf("      {ID-0d2e0e5ae3e52519d63218746ad2efb89e1d0ded}\n");
printf("      {Umlaufbahn}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Die Erde benötigt ca. \\num{%s} Tage, um die Sonne einmal zu umkreisen.\n", ins_t);
printf("    Der mittlere Radius der Umlaufbahn beträgt etwa \\sikm{%s}.\n", ins_r);
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Wie lang ist die Umlaufbahn der Erde?\n");
printf("      \\item Mit welcher Geschwindigkeit bewegt sich die Erde durchs All?\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Die Umlaufbahn der Erde um die Sonne besitzt eine\n");
printf("            Länge von etwa \\sikm{%s}.\n", ins_u);
printf("      \\item Die Erde dreht sich mit einer Geschwindigkeit von\n");
printf("            etwa \\sikmh{%s} um die Sonne.\n", ins_v);
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

