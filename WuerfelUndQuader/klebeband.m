clear all;

addpath 'Octave/';

printf("\\begin{exercise}\n");
printf("      {ID-b75ee6a9f0c1b08630cdb754aa7c8602714f4880}\n");
printf("      {Klebeband}\n");
printf("  \\ifproblem\\problem\n");
printf("    \\begin{minipage}{0.33\\linewidth}\n");
printf("      \\begin{tikzpicture}[scale=0.8]\n");
printf("        \\draw (0, 0)\n");
printf("              -- ++(0:45mm)\n");
printf("              -- ++(45:15mm)\n");
printf("              -- ++(90:25mm) coordinate (A)\n");
printf("              -- ++(180:45mm)\n");
printf("              -- ++(225:15mm)\n");
printf("              -- cycle;\n");
printf("        \\begin{scope}[line join=bevel]\n");
printf("          \\draw (0, 25mm) -- (45mm, 25mm) -- (45mm, 0);\n");
printf("          \\draw (45mm, 25mm) -- (A);\n");
printf("        \\end{scope}\n");
printf("        \\begin{scope}[line join=bevel, style=dashed]\n");
printf("          \\draw[shift={(45:7.5mm)}] (0, 25mm) -- (45mm, 25mm) -- (45mm, 0);\n");
printf("          \\draw[xshift=15mm] (0, 0)  -- (0, 25mm) -- ++(45:15mm);\n");
printf("          \\draw[xshift=30mm] (0, 0)  -- (0, 25mm) -- ++(45:15mm);\n");
printf("        \\end{scope}\n");
printf("      \\end{tikzpicture}%%\n");
printf("    \\end{minipage}\\hfill\n");
printf("    \\begin{minipage}{0.65\\linewidth}\n");
printf("      Das in der Abbildung abgebildete Paket ist von links nach rechts \\sicm{45}\n");
printf("      lang, von vorn nach hinten \\sicm{30} breit, und es ist \\sicm{25} hoch.\n");
printf("      Es soll in der dargestellten Weise (gestrichelte Linie) mit Klebeband\n");
printf("      verklebt werden. Für das Überlappen von End- und Anfangsstücken sind\n");
printf("      zusätzlich insgesamt \\sicm{10} Klebeband vorgesehen.\\par\n");
printf("      Wie viel Zentimeter Klebeband werden demnach insgesamt gebraucht?\n");
printf("      Wie viel Meter sind das?\n");
printf("    \\end{minipage}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  %%\\ifoutcome\\outcome\n");
printf("  %%\\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

