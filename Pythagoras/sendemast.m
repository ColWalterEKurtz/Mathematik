clear all;

% Aufgabe a)
s = 90;              % Seil
h = 72;              % Hoehe
b = sqrt(s^2 - h^2); % Boden
ins_a_s = sprintf("%d", s);
ins_a_h = sprintf("%d", h);
ins_a_b = sprintf("%d", b);

% Aufgabe b)
s = 60;              % Seil
b = 36;              % Boden
h = sqrt(s^2 - b^2); % Hoehe
ins_b_s = sprintf("%d", s);
ins_b_b = sprintf("%d", b);
ins_b_h = sprintf("%d", h);

printf("\\begin{exercise}\n");
printf("      {ID-e9bb4210843100bd6532df612162678861da674f}\n");
printf("      {Sendemast}\n");
printf("  \\ifproblem\\problem\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Ein \\simeter{%s} langes Stahlseil ist in einer Höhe von \\simeter{%s}\n", ins_a_s, ins_a_h);
printf("            an einem Sendemast angebracht. In Welcher Entfernung vom Fußpunkt des\n");
printf("            Mastes ist das Seil im Erdboden verankert?\n");
printf("      \\item Ein \\simeter{%s} langes Seil ist \\simeter{%s} vom Mast entfernt im\n", ins_b_s, ins_b_b);
printf("            Erdboden verankert. In welcher Höhe kann das Seil maximal am Sendemast\n");
printf("            befestigt werden?\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Das Seil ist in einer Entfernung von \\simeter{%s} vom Fußpunkt des\n", ins_a_b);
printf("            Mastes entfernt im Erdboden verankert.\n");
printf("      \\item Das Seil kann maximal in einer Höhe von \\simeter{%s} am Sendemast\n", ins_b_h);
printf("            befestigt werden.\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

