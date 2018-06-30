clear all;

seiten  = 600;
minuten = 12;

menge = 900;
dauer = minuten / seiten * menge;

spanne = 15;
gesamt = seiten / minuten * spanne;

ins_seiten  = sprintf("%d", seiten);
ins_minuten = sprintf("%d", minuten);
ins_menge   = sprintf("%d", menge);
ins_spanne  = sprintf("%d", spanne);
ins_dauer   = sprintf("%d", dauer);
ins_gesamt  = sprintf("%d", gesamt);

printf("\\begin{exercise}\n");
printf("      {ID-f27d943bf440864a1ee8b6e625b51833ae5883b0}\n");
printf("      {Drucker}\n");
printf("  \\ifproblem\\problem\n");
printf("    Um \\num{%s} Seiten auszudrucken, benötigt ein Drucker \\num{%s} Minuten.\n", ins_seiten, ins_minuten);
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Wie lange braucht der Drucker für \\num{%s} Seiten?\n", ins_menge);
printf("      \\item Wie viele Seiten können in \\num{%s} Minuten gedruckt werden?\n", ins_spanne);
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Für \\num{%s} Seiten braucht der Drucker \\num{%s} Minuten.\n", ins_menge, ins_dauer);
printf("      \\item In \\num{%s} Minuten kann der Drucker \\num{%s} Seiten drucken.\n", ins_spanne, ins_gesamt);
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

