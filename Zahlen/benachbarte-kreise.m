clear all;

addpath 'Octave/';

printf("\\begin{exercise}\n");
printf("      {ID-1eb9222643a140ed496faf37c4085ffc3b7839a8}\n");
printf("      {Benachbarte Kreise}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item \\raisebox{-3.25\\baselineskip}{%%\n");
printf("            \\begin{minipage}{0.25\\linewidth}\n");
printf("              \\begin{tikzpicture}\n");
printf("                \\draw[line width=0.8pt, <->, >=stealth] (0, 1) -- (0, -1);\n");
printf("                \\draw (0,  1.3) circle[radius=3mm] node{0};\n");
printf("                \\draw (0, -1.3) circle[radius=3mm];\n");
printf("                \\begin{scope}[rotate=36]\n");
printf("                  \\draw[line width=0.8pt, <->, >=stealth] (0, 1) -- (0, -1);\n");
printf("                  \\draw (0,  1.3) circle[radius=3mm];\n");
printf("                  \\draw (0, -1.3) circle[radius=3mm];\n");
printf("                \\end{scope}\n");
printf("                \\begin{scope}[rotate=72]\n");
printf("                  \\draw[line width=0.8pt, <->, >=stealth] (0, 1) -- (0, -1);\n");
printf("                  \\draw (0,  1.3) circle[radius=3mm];\n");
printf("                  \\draw (0, -1.3) circle[radius=3mm];\n");
printf("                \\end{scope}\n");
printf("                \\begin{scope}[rotate=108]\n");
printf("                  \\draw[line width=0.8pt, <->, >=stealth] (0, 1) -- (0, -1);\n");
printf("                  \\draw (0,  1.3) circle[radius=3mm];\n");
printf("                  \\draw (0, -1.3) circle[radius=3mm];\n");
printf("                \\end{scope}\n");
printf("                \\begin{scope}[rotate=144]\n");
printf("                  \\draw[line width=0.8pt, <->, >=stealth] (0, 1) -- (0, -1);\n");
printf("                  \\draw (0,  1.3) circle[radius=3mm];\n");
printf("                  \\draw (0, -1.3) circle[radius=3mm] node{3};\n");
printf("                \\end{scope}\n");
printf("              \\end{tikzpicture}\n");
printf("            \\end{minipage}}\\hfill\n");
printf("            \\begin{minipage}[t]{0.74\\linewidth}\n");
printf("              Die Zahlen 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 sollen so in die kleinen Kreise\n");
printf("              der Abbildung eingetragen werden, dass jedes Paar benachbarter Kreise\n");
printf("              dieselbe Summe wie das Paar an den beiden entgegengesetzten Pfeilspitzen\n");
printf("              ergibt.\\medskip\\par\n");
printf("              Jede der zehn Zahlen soll genau einmal vorkommen. Die Zahlen 0 und 3\n");
printf("              sollen wie angegeben eingetragen werden.\\medskip\\par\n");
printf("              Gib eine Eintragung an, die alle diese Forderungen erfüllt!\n");
printf("            \\end{minipage}\n");
printf("      \\item Für die Zahlen 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 läßt sich\n");
printf("            eine entsprechende Aufgabe stellen. Wie kann man für sie auf einfache\n");
printf("            Weise eine Lösung aus der Lösung von a) gewinnen?\n");
printf("      \\item Löse die entsprechende Aufgabe für die natürlichen Zahlen\n");
printf("            $n$, $n+1$, $n+2$, $n+3$, $n+4$, $n+5$, $n+6$, $n+7$, $n+8$ und $n+9$.\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  %%\\ifoutcome\\outcome\\par\n");
printf("  %%\\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

