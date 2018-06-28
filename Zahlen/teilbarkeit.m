clear all;

printf("\\begin{exercise}\n");
printf("      {ID-f948d5285f73d6805256a306f86f1a8c291382ee}\n");
printf("      {Teilbarkeit}\n");
printf("  \\ifproblem\\problem\n");
printf("    Zeige, dass eine Zahl $\\overline{abcabc}$ aus den Ziffern $a$, $b$\n");
printf("    und $c$ immer durch 7, 11 und 13 teilbar ist.\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\n");
printf("    Überlege dir eine Rechnung, bei der immer Zahlen der\n");
printf("    Form $\\overline{abcabc}$ entstehen.\n");
printf("    Multipliziere mit Zehnerpotenzen\\ldots\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Jede Zahl $\\overline{abcabc}$ lässt sich durch folgende Rechnung bilden:\n");
printf("    \\begin{equation*}\n");
printf("      \\overline{abcabc}=1000\\cdot\\overline{abc}+\\overline{abc}\n");
printf("      =(1000+1)\\cdot\\overline{abc}\n");
printf("      =1001\\cdot\\overline{abc}\n");
printf("    \\end{equation*}\n");
printf("    Also ist jede Zahl $\\overline{abcabc}$ durch 1001 teilbar.\n");
printf("    Mit $7\\cdot11\\cdot13=1001$ ist die Zahl $\\overline{abcabc}$\n");
printf("    dann auch durch 7, 11 und 13 teilbar.\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

