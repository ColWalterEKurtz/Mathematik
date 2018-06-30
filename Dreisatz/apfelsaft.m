clear all;

liter0 = 80;
kg0    = 100;
literN = 200;
kgM    = 120;

kgN    = kg0 / liter0 * literN;
literM = liter0 / kg0 * kgM;

ins_liter0 = sprintf("%d", liter0);
ins_kg0    = sprintf("%d", kg0);
ins_literN = sprintf("%d", literN);
ins_kgM    = sprintf("%d", kgM);
ins_kgN    = sprintf("%d", kgN);
ins_literM = sprintf("%d", literM);

printf("\\begin{exercise}\n");
printf("      {ID-be49e5ec000d4cddc8d100906a0f5286e7fae648}\n");
printf("      {Apfelsaft}\n");
printf("  \\ifproblem\\problem\n");
printf("    Für \\num{%s} Liter Apfelsaft braucht man \\sikg{%s} Äpfel.\n", ins_liter0, ins_kg0);
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Wie viele Äpfel werden für \\num{%s} Liter Apfelsaft benötigt?\n", ins_literN);
printf("      \\item Wie viel Apfelsaft presst man aus \\sikg{%s} Äpfeln?\n", ins_kgM);
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Für \\num{%s} Liter Apfelsaft benötigt man \\sikg{%s} Äpfel.\n", ins_literN, ins_kgN);
printf("      \\item Aus \\sikg{%s} Äpfeln presst man \\num{%s} Liter Apfelsaft.\n", ins_kgM, ins_literM);
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

