clear all;

x0 = 340;   % km
y0 = 28.56; % Liter

xn = 650;   % km
yn = 60.48; % Liter

xx = x0 / y0 * yn; % km
yy = y0 / x0 * xn; % Liter

ins_x0 = sprintf("%d",   x0);
ins_y0 = sprintf("%.2f", y0);
ins_xn = sprintf("%d",   xn);
ins_yn = sprintf("%.2f", yn);
ins_xx = sprintf("%d",   xx);
ins_yy = sprintf("%.1f", yy);

printf("\\begin{exercise}\n");
printf("    {ID-4193fce4198e4126b52856536df0d2f4a2950fb1}\n");
printf("    {Kraftstoff}\n");
printf("\\ifproblem\\problem\n");
printf("  Für eine Strecke von \\sikm{%s} braucht ein Pkw \\sil{%s} Benzin.\n", ins_x0, ins_y0);
printf("  \\begin{enumerate}[a)]\n");
printf("    \\item Wie viel Kraftstoff braucht der Pkw für \\sikm{%s}?\n", ins_xn);
printf("    \\item Wie viele Kilometer kann er mit einem Tankinhalt von \\sil{%s} zurücklegen?\n", ins_yn);
printf("  \\end{enumerate}\n");
printf("\\fi\n");
printf("%%\\ifoutline\\outline\n");
printf("%%\\fi\n");
printf("\\ifoutcome\\outcome\n");
printf("  \\begin{enumerate}[a)]\n");
printf("    \\item Für \\sikm{%s} benötigt der Pkw \\sil{%s} Kraftstoff.\n", ins_xn, ins_yy);
printf("    \\item Mit einem Tankinhalt von \\sil{%s} kann der Pkw \\sikm{%s} zurücklegen.\n", ins_yn, ins_xx);
printf("  \\end{enumerate}\n");
printf("\\fi\n");
printf("\\end{exercise}\n");

