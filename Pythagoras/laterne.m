clear all;

h = 5;    % Hoehe
d = 12;   % Entfernung
s = 12.1; % Seil
t = sqrt((s / 2)^2 - (d / 2)^2); % Tiefe der haengenden Lampe
f = floor((h - t) * 100) / 100; % Fahrzeughoehe

ins_h = sprintf("%d",   h);
ins_d = sprintf("%d",   d);
ins_s = sprintf("%.1f", s);
ins_f = sprintf("%.2f", f);

printf("\\begin{exercise}\n");
printf("      {ID-3e47be24074bec6a8ab79ee6aa2212b9442f6204}\n");
printf("      {Laterne}\n");
printf("  \\ifproblem\\problem\n");
printf("    Eine Lampe hängt zwischen zwei \\simeter{%s} hohen und \\simeter{%s} voneinander\n", ins_h, ins_d);
printf("    entfernten Laternenmasten. Wie hoch in darf ein darunter fahrendes Fahrzeug\n");
printf("    maximal sein, wenn die Lampe an einem \\simeter{%s} langen Stahlseil\n", ins_s);
printf("    befestigt ist?\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Ein Fahrzeug darf höchstens \\simeter{%s} hoch sein,\n", ins_f);
printf("    um unter der Lampe hindurch fahren zu können.\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

