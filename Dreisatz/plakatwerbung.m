clear all;

x0 = 60;  % Tage
y0 = 546; % Euro
xn = 76;  % Tage

yn = y0 / x0 * xn; % Euro

ins_x0 = sprintf("%d",   x0);
ins_y0 = sprintf("%d",   y0);
ins_xn = sprintf("%d",   xn);
ins_yn = sprintf("%.2f", yn);

printf("\\begin{exercise}\n");
printf("      {ID-80fa3f271a679a3d0648e72500f5bc2ba5a514e5}\n");
printf("      {Plakatwerbung}\n");
printf("  \\ifproblem\\problem\n");
printf("    Eine Plakatwerbung kostet für \\num{%s} Tage \\eur{%s}.\n", ins_x0, ins_y0);
printf("    Wie viel Euro sind für \\num{%s} Tage zu zahlen?\n", ins_xn);
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Wenn die Plakatwerbung \\num{%s} Tage lang erscheinen soll, kostet sie \\eur{%s}.\n", ins_xn, ins_yn);
printf("  \\fi\n");
printf("\\end{exercise}\n");

