clear all;

x0 = 700; % Gramm Rindfleisch
y0 = 8.4; % Euro

xn = 1200; % Gramm Rindfleisch
yn = 30;   % Euro

xx = x0 / y0 * yn; % Gramm Rindfleisch
yy = y0 / x0 * xn; % Euro

ins_x0 = sprintf("%d",   x0);
ins_y0 = sprintf("%.2f", y0);
ins_xn = sprintf("%d",   xn);
ins_yn = sprintf("%d",   yn);
ins_xx = sprintf("%d",   xx);
ins_yy = sprintf("%.2f", yy);

printf("\\begin{exercise}\n");
printf("      {ID-362dc71bc0a26d8368c02cbcb619136f722eda39}\n");
printf("      {Rindfleisch}\n");
printf("  \\ifproblem\\problem\n");
printf("    \\num{%s} Gramm Rindfleisch kosten \\eur{%s}.\n", ins_x0, ins_y0);
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Wie teuer sind \\num{%s} Gramm?\n", ins_xn);
printf("      \\item Wie viel Gramm bekommt man für \\eur{%s}?\n", ins_yn);
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item \\num{%s} Gramm Rindfleisch kosten \\eur{%s}.\n", ins_xn, ins_yy);
printf("      \\item Für \\eur{%s} bekommt man \\num{%s} Gramm Rindfleisch.\n", ins_yn, ins_xx);
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

