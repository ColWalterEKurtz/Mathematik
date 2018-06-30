clear all;

x0 = 7;     % kg Birnen
y0 = 13.30; % Euro
xn = 5;     % kg Birnen
yn = 22.80; % Euro

yy = y0 / x0 * xn; % Euro
xx = x0 / y0 * yn; % kg

ins_x0 = sprintf("%d",   x0);
ins_y0 = sprintf("%.2f", y0);
ins_xn = sprintf("%d",   xn);
ins_yn = sprintf("%.2f", yn);
ins_yy = sprintf("%.2f", yy);
ins_xx = sprintf("%d",   xx);

printf("\\begin{exercise}\n");
printf("      {ID-de45644b755ddb831f61a20a9c8ee6e82437e4fd}\n");
printf("      {Birnen}\n");
printf("  \\ifproblem\\problem\n");
printf("    Im Supermarkt kosten \\sikg{%s} Birnen \\eur{%s}.\n", ins_x0, ins_y0);
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Wie teuer sind \\sikg{%s}?\n", ins_xn);
printf("      \\item Wie viel Kilogramm bekommt man für \\eur{%s}?\n", ins_yn);
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item \\sikg{%s} Birnen kosten \\eur{%s}.\n", ins_xn, ins_yy);
printf("      \\item Für \\eur{%s} bekommt man \\sikg{%s} Birnen.\n", ins_yn, ins_xx);
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

