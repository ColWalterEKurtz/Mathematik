clear all;

printf("\\begin{exercise}\n");
printf("      {ID-71ca299a0a3632bb0673afb32bb35f7ef7b12f58}\n");
printf("      {Zwei Münzen}\n");
printf("  \\ifproblem\\problem\n");
printf("    Zwei gleiche Münzen -- zum Beispiel zwei \\eur{2} Münzen -- liegen wie es\n");
printf("    die Abbildung zeigt, auf dem Tisch. Die untere Münze wird festgehalten, und die\n");
printf("    obere wird am Umfang der anderen um sie herum gerollt, bis sie wieder oben an\n");
printf("    ihrer Ausgangsposition liegt. Wie oft hat sich dabei die obere Münze um sich\n");
printf("    selbst gedreht?\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}[scale=1.25]\n");
printf("        \\draw [line width=0.75pt] (0, 0) circle (0.5) node{\\eur{2}};\n");
printf("        \\draw [line width=0.75pt] (0, 1) circle (0.5) node{\\eur{2}};\n");
printf("        \\draw [line width=0.5pt, <-, >=latex, rotate=135] (1, 0) arc (0:270:1cm);\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\n");
printf("    Stelle dir zunächst vor, dass die gerollte Münze auf dem Zeiger einer Uhr\n");
printf("    festgeklebt worden wäre\\ldots\n");
printf("  \\fi\n");
printf("  %%\\ifoutcome\\outcome\n");
printf("  %%\\fi\n");
printf("\\end{exercise}\n");

