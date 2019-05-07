clear all;

addpath 'Octave/';

printf("\\begin{exercise}\n");
printf("      {ID-666154ce84ca77a1eaaa7679c17c0644accdcc6d}\n");
printf("      {Diagonale}\n");
printf("  \\ifproblem\\problem\n");
printf("    Gib einen Term zur Berechnung der grauen Fläche in Abhängigkeit von $x$ und $y$ an.\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}[scale=0.75]\n");
printf("        %% Doppelpfeil\n");
printf("        \\fill[fill=black!25!white] (1, 0) -- (4, 3) -- (4, 4) -- (3, 4) -- (0, 1) -- (0, 0) -- cycle;\n");
printf("        \\draw (1, 0) -- (4, 3);\n");
printf("        \\draw (0, 1) -- (3, 4);\n");
printf("        %% Quadrat\n");
printf("        \\draw (0, 0) rectangle (4, 4);\n");
printf("        %% Seitenlaengen\n");
printf("        \\node[right] at (4.00, 1.50) {$y$};\n");
printf("        \\node[above] at (1.50, 4.00) {$y$};\n");
printf("        \\node[right] at (4.00, 3.50) {$x$};\n");
printf("        \\node[above] at (3.50, 4.00) {$x$};\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  %%\\ifoutcome\\outcome\n");
printf("  %%\\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

