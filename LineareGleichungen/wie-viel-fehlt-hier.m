clear all;

addpath 'Octave/';

printf("\\begin{exercise}\n");
printf("      {ID-10e0afc81a3188f6abe80a9c6665b0b8e966960b}\n");
printf("      {Wie viel fehlt hier?}\n");
printf("  \\ifproblem\\problem\n");
printf("    Die folgende Abbildung zeigt die zu untersuchende Figur für $n=7$. Stelle einen Term\n");
printf("    $A(n)$ für die Fläche der Figur auf. Erläutere in einem Satz und durch eine ausführlich\n");
printf("    beschriftete Zeichnung, wie dieser Term zustande kommt.\\par\n");
printf("    Berechne $A(7)$, $A(30)$ und $A(101)$.\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}[scale=0.5]\n");
printf("        \\filldraw[fill=black!25!white] (0, 0) -- (0, 7) -- (7, 7) -- (7, 6) -- (1, 0) -- cycle;\n");
printf("        \\begin{scope}\n");
printf("          \\clip (0, 0) -- (0, 7) -- (7, 7) -- (7, 6) -- (1, 0) -- cycle;\n");
printf("          \\draw (0, 1) -- (7, 1);\n");
printf("          \\draw (0, 2) -- (7, 2);\n");
printf("          \\draw (0, 3) -- (7, 3);\n");
printf("          \\draw (0, 4) -- (7, 4);\n");
printf("          \\draw (0, 5) -- (7, 5);\n");
printf("          \\draw (0, 6) -- (7, 6);\n");
printf("          \\draw (1, 0) -- (1, 7);\n");
printf("          \\draw (2, 0) -- (2, 7);\n");
printf("          \\draw (3, 0) -- (3, 7);\n");
printf("          \\draw (4, 0) -- (4, 7);\n");
printf("          \\draw (5, 0) -- (5, 7);\n");
printf("          \\draw (6, 0) -- (6, 7);\n");
printf("        \\end{scope}\n");
printf("        \\begin{scope}[xshift=-5mm]\n");
printf("          \\draw[>=stealth, |<->|] (0, 0) -- node[left] {$n$} (0, 7);\n");
printf("        \\end{scope}\n");
printf("        \\begin{scope}[yshift=5mm]\n");
printf("          \\draw[>=stealth, |<->|] (0, 7) -- node[above] {$n$} (7, 7);\n");
printf("        \\end{scope}\n");
printf("        \\node[right] at (7, 6.5) {\\small1};\n");
printf("        \\node[below] at (0.5, 0) {\\small1};\n");
printf("        \\node at (2.5, 4.5) {$A$};\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  %%\\ifoutcome\\outcome\n");
printf("  %%\\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';
