clear all;

addpath 'Octave/';

printf("\\begin{exercise}\n");
printf("      {ID-3cafc2ad6d4e3c35f1b5321aa27fa7e610df34fc}\n");
printf("      {Umfang}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Stelle einen Term zur Berechnung des Umfangs auf, und vereinfache ihn so weit wie möglich.\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}[scale=0.64, line width=0.6]\n");
printf("        \\draw (0, 0) -- (6, 0) -- (6, 4) -- (3, 2) -- (0, 4) -- cycle;\n");
printf("        \\node[left]  at (0, 2) {$x$};\n");
printf("        \\node[right] at (6, 2) {$x$};\n");
printf("        \\node[below] at (3, 0) {$2\\cdot(x-1)$};\n");
printf("        \\path (6, 4) -- node[above, rotate=33.69] {$0,\\!9x$} (3, 2);\n");
printf("        \\path (3, 2) -- node[above, rotate=-33.69] {$0,\\!9x$} (0, 4);\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  %%\\ifoutcome\\outcome\\par\n");
printf("  %%\\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

