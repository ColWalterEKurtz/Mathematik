clear all;

x0 = 16000; % Euro (Wert)
y0 = 3200;  % Euro (Zoll)
xn = 7000;  % Euro (Wert)
yn = y0 / x0 * xn;

ins_x0 = sprintf("%d", x0);
ins_y0 = sprintf("%d", y0);
ins_xn = sprintf("%d", xn);
ins_yn = sprintf("%d", yn);

printf("\\begin{exercise}\n");
printf("      {ID-9609ef20c712d0d7f093bc0a1f6abb02f751160b}\n");
printf("      {Zollgebühren}\n");
printf("  \\ifproblem\\problem\n");
printf("    Für eine Warensendung im Wert von \\eur{%s} wurden \\eur{%s} Zoll gezahlt.\n", ins_x0, ins_y0);
printf("    Wie hoch sind die Zollgebühren bei einem Wert von \\eur{%s}?\n", ins_xn);
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Für Waren im Wert von \\eur{%s} muss man Zollgebühren in Höhe von \\eur{%s} zahlen.\n", ins_xn, ins_yn);
printf("  \\fi\n");
printf("\\end{exercise}\n");

