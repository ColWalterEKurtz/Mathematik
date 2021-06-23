clear all;

printf("\\begin{exercise}\n");
printf("      {ID-527580af7f290a075c04c661d88c5e534f343d3d}\n");
printf("      {Die Fliege und der Würfel}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Eine Fliege sitzt auf der Ecke $A$ eines Würfels und möchte zur Ecke $B$.\n");
printf("    Sie darf jeden möglichen Weg benutzen, nur durch das Innere des Würfels\n");
printf("    kann sie nicht. Sie möchte auf einer möglichst kurzen Strecke von $A$\n");
printf("    nach $B$ krabbeln. Wie sieht ihr Weg aus, und wie lang ist er?\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}[scale=1.5]\n");
printf("        \\draw[line width=0.5pt] (0, 0, 1) -- (1, 0, 1) -- (1, 0, 0) -- (1, 1, 0) -- (0, 1, 0) -- (0, 1, 1) -- cycle;\n");
printf("        \\draw[line width=0.5pt] (0, 1, 1) -- (1, 1, 1) -- (1, 0, 1);\n");
printf("        \\draw[line width=0.5pt] (1, 1, 1) -- (1, 1, 0);\n");
printf("        \\fill (0, 1) circle (1pt) node[above left] {{\\small$A$}};\n");
printf("        \\fill (0.615, -0.385) circle (1pt) node[below right] {{\\small$B$}};\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\\par\n");
printf("    Stelle dir das Problem zweidimensional vor\\ldots\n");
printf("  \\fi\n");
printf("  %%\\ifoutcome\\outcome\\par\n");
printf("  %%\\fi\n");
printf("\\end{exercise}\n");

