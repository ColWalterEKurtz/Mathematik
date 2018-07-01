clear all;

h = 45;   % Leuchtturm (m)
r = 6370; % Erdradius (km)
d = sqrt((r + h/1000)^2 - r^2);

ins_h = sprintf("%d",   h);
ins_r = sprintf("%d",   r);
ins_d = sprintf("%.2f", d);

printf("\\begin{exercise}\n");
printf("      {ID-0ece5d543c40bb8799f881513fd3b69328b4db1b}\n");
printf("      {Leuchtturm}\n");
printf("  \\ifproblem\\problem\n");
printf("    Wie weit ist der Horizont entfernt, wenn man auf einem \\simeter{%s} hohen\n", ins_h);
printf("    Leuchtturm steht? Stelle dir die Erde als Kugel vor und verwende bei der\n");
printf("    Berechnung einen Erdradius von \\sikm{%s}.\n", ins_r);
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Der Horizont ist ca. \\sikm{%s} weit entfernt.\n", ins_d);
printf("  \\fi\n");
printf("\\end{exercise}\n");

