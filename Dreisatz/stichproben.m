clear all;

% numerische Werte
a        = 3;
n        = 4320;
anzahl   = 17280;
personen = a / n * anzahl;

% formatierte Werte
ins_a        = sprintf("%d", a);
ins_n        = sprintf("%d", n);
ins_anzahl   = sprintf("%d", anzahl);
ins_personen = sprintf("%d", personen);

printf("\\begin{exercise}\n");
printf("      {ID-24fff31c83bfc792a63ab0511d2eb497b38097d8}\n");
printf("      {Stichproben}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    \\num{%s} Angestellte vermessen monatlich \\num{%s} Stichproben. Wie viele Angestellte\n", ins_a, ins_n);
printf("    müssen eingesetzt werden, um monatlich \\num{%s} Stichproben vermessen zu können?\n", ins_anzahl);
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    \\num{%s} Angestellte können monatlich \\num{%s} Stichproben vermessen.\n", ins_personen, ins_anzahl);
printf("  \\fi\n");
printf("\\end{exercise}\n");

