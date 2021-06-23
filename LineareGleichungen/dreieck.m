clear all;

addpath 'Octave/';

printf("\\begin{exercise}\n");
printf("      {ID-323614fb4692457d389583e224a07995486984ea}\n");
printf("      {Dreieck}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Gegeben ist ein Quadrat mit der Seitenlänge $a$. Bestimme einen Term $A(x)$,\n");
printf("    mit dem man die Fläche des Dreiecks $ABC$ berechnen kann.\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}[scale=0.75]\n");
printf("        %% Dreieck\n");
printf("        \\filldraw[fill=black!25!white] (0, 0) -- (4, 2.5) -- (2.5, 4) -- cycle;\n");
printf("        %% Eckpunkte\n");
printf("        \\fill (0.0, 0.0) circle[radius=0.8pt] node[below left] {$A$};\n");
printf("        \\fill (4.0, 2.5) circle[radius=0.8pt] node[right]      {$B$};\n");
printf("        \\fill (2.5, 4.0) circle[radius=0.8pt] node[above]      {$C$};\n");
printf("        %% Quadrat\n");
printf("        \\draw (0, 0) rectangle (4, 4);\n");
printf("        %% Seitenlaengen\n");
printf("        \\node[left]  at (0.00, 2.00) {$a$};\n");
printf("        \\node[below] at (2.00, 0.00) {$a$};\n");
printf("        \\node[right] at (4.00, 3.25) {$x$};\n");
printf("        \\node[above] at (3.25, 4.00) {$x$};\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  %%\\ifoutcome\\outcome\\par\n");
printf("  %%\\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

