clear all;

% Aufgabe a)
w = 6;               % Wand
b = 2.5;             % Boden
l = sqrt(w^2 + b^2); % Leiter
ins_a_w = sprintf("%d",   w);
ins_a_b = sprintf("%.1f", b);
ins_a_l = sprintf("%.1f", l);

% Aufgabe b)
l = 12.5;            % Leiter
b = 3.5;             % Boden
w = sqrt(l^2 - b^2); % Wand
ins_b_l = sprintf("%.1f", l);
ins_b_b = sprintf("%.1f", b);
ins_b_w = sprintf("%d",   w);

printf("\\begin{exercise}\n");
printf("      {ID-4a59935dd5b3d70fd9474fec3845306c9716bf24}\n");
printf("      {Leiter}\n");
printf("  \\ifproblem\\problem\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Der Fuß einer Leiter steht \\simeter{%s} vor einer Hauswand. Die Leiter\n", ins_a_b);
printf("            erreicht ein \\simeter{%s} hoch gelegenes Fenster. Wie lang ist die Leiter?\n", ins_a_w);
printf("      \\item Eine \\simeter{%s} lange Leiter lehnt an einer Hauswand. Das untere\n", ins_b_l);
printf("            Leiterende steht dabei \\simeter{%s} von der Wand entfernt. In welcher\n", ins_b_b);
printf("            Höhe liegt die Leiter an der Hauswand an?\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Die Leiter ist \\simeter{%s} lang.\n", ins_a_l);
printf("      \\item Die Leiter liegt in einer Höhe von \\simeter{%s} an der Wand an.\n", ins_b_w);
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

