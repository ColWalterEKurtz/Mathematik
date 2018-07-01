clear all;

stange   = 1.72;
schatten = 1.42;

alpha = atan(stange / schatten) * (180 / pi);

ins_stange   = sprintf("%.2f", stange);
ins_schatten = sprintf("%.2f", schatten);
ins_alpha    = sprintf("%.2f", alpha);

printf("\\begin{exercise}\n");
printf("      {ID-1646543070912eaba05b2de4fddaa2e986474cda}\n");
printf("      {Sonne}\n");
printf("  \\ifproblem\\problem\n");
printf("    Eine \\simeter{%s} hohe, senkrecht stehende Stange wirft einen\n", ins_stange);
printf("    \\simeter{%s} langen Schatten. Wie hoch steht die Sonne?\n", ins_schatten);
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Die Sonne steht etwa \\ang{%s} hoch am Himmel.\n", ins_alpha);
printf("  \\fi\n");
printf("\\end{exercise}\n");

