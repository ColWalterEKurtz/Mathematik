clear all;

l = 3;                   % Leiter
b = 1.2;                 % Boden
h = sqrt(l^2 - (b/2)^2); % Hoehe

ins_l = sprintf("%d",   l);
ins_b = sprintf("%.1f", b);
ins_h = sprintf("%.2f", h);

printf("\\begin{exercise}\n");
printf("      {ID-4a108a2283166ccdeb383049a22c13cc1eed2d39}\n");
printf("      {Klappleiter}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Eine Klappleiter hat eine Länge von \\simeter{%s}. Sie steht am Boden\n", ins_l);
printf("    \\simeter{%s} auseinander. Welche maximale Höhe $h$ in m ist möglich?\n", ins_b);
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    Die Leiter erreicht eine maximale Höhe von \\simeter{%s}.\n", ins_h);
printf("  \\fi\n");
printf("\\end{exercise}\n");

