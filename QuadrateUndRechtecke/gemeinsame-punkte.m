clear all;

addpath 'Octave/';

printf("\\begin{exercise}\n");
printf("      {ID-8fac9384aca3fa016083c326209411bf8cd1b962}\n");
printf("      {Gemeinsame Punkte}\n");
printf("  \\ifproblem\\problem\n");
printf("    Gegeben seien zwei unterschiedlich große Quadrate, wie sie hier dargestellt\n");
printf("    sind:\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}\n");
printf("        \\begin{scope}\n");
printf("          \\draw (0, 0) rectangle (1.5, 1.5);\n");
printf("          \\draw (2, 0) rectangle (3, 1);\n");
printf("        \\end{scope}\n");
printf("        \\begin{scope}[xshift=5cm]\n");
printf("          \\draw (0, 0) rectangle (1.5, 1.5);\n");
printf("          \\draw[shift={(-0.9, -0.6)}] (2, 0) rectangle (3, 1);\n");
printf("          \\fill (1.1, 0.0) circle[radius=0.8pt] node[below left]{$P$};\n");
printf("          \\fill (1.5, 0.4) circle[radius=0.8pt] node[above right]{$Q$};\n");
printf("        \\end{scope}\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("    Bei der linken Abbildung haben sie keinen gemeinsamen Punkt, bei der\n");
printf("    rechten genau zwei, nämlich $P$ und $Q$. Wie können die Quadrate liegen,\n");
printf("    wenn sie genau a) einen Punkt, b) drei, c) vier, d) fünf, e) sechs f) sieben\n");
printf("    Punkte gemeinsam haben sollen? Zeichne die Quadrate in diesen verschiedenen Lagen!\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  %%\\ifoutcome\\outcome\n");
printf("  %%\\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

