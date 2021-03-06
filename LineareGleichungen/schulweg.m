clear all;

printf("\\begin{exercise}\n");
printf("      {ID-fffc17cb928a23befe424d29a4c070d9d80648be}\n");
printf("      {Schulweg}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Zwei Kinder, die im selben Haus wohnen, gehen gemeinsam in die gleiche\n");
printf("    Schule. Das erste Kind geht die Hälfte der Zeit mit einer\n");
printf("    Durchschnittsgeschwindigkeit von \\sikmh{5}, danach mit \\sikmh{4}. Das\n");
printf("    zweite Kind geht die Hälfte des Weges mit einer Durchschnittsgeschwindigkeit\n");
printf("    von \\sikmh{4}, danach mit \\sikmh{5}. Welches Kind erreicht die Schule\n");
printf("    zuerst?\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\\par\n");
printf("    Angenommen, das erste Kind bräuchte zwei Stunden bis in die Schule:\n");
printf("    Wie lang wäre dann der Schulweg, und wie viele Stunden wäre das andere Kind unterwegs?\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}\n");
printf("        \\coordinate (A)  at (0, 0);\n");
printf("        \\coordinate (B)  at (4, 0);\n");
printf("        \\coordinate (An) at (45:5mm);\n");
printf("        \\coordinate (As) at (315:5mm);\n");
printf("        \\coordinate (Bn) at ([shift={(4, 0)}]135:5mm);\n");
printf("        \\coordinate (Bs) at ([shift={(4, 0)}]225:5mm);\n");
printf("        \\node at (A) {$H$};\n");
printf("        \\node at (B) {$S$};\n");
printf("        \\draw[line width=0.8pt] (A) circle[radius=5mm];\n");
printf("        \\draw[line width=0.8pt] (B) circle[radius=5mm];\n");
printf("        \\draw[shorten <=3pt, shorten >=3pt, ->, >=stealth] (An) to[out=30, in=150] (Bn);\n");
printf("        \\draw[shorten <=3pt, shorten >=3pt, ->, >=stealth] (As) to[out=330, in=210] (Bs);\n");
printf("        \\draw (2,  0.75) -- (2,  0.95) node[above]{$\\frac{t}{2}$};\n");
printf("        \\draw (2, -0.75) -- (2, -0.95) node[below]{$\\frac{s}{2}$};\n");
printf("        \\node at (0.8, 1.2) {\\sikmh{5}};\n");
printf("        \\node at (3.2, 1.2) {\\sikmh{4}};\n");
printf("        \\node at (0.8, -1.2) {\\sikmh{4}};\n");
printf("        \\node at (3.2, -1.2) {\\sikmh{5}};\n");
printf("        \\node[left=1mm] at (0,  1.23) {$A:$};\n");
printf("        \\node[left=1mm] at (0, -1.16) {$B:$};\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("    Wenn man annimmt, dass das erste Kind für den Schulweg $t_{A}$ Stunden benötigt,\n");
printf("    dann ergibt sich folgende Länge für den Schulweg:\n");
printf("    \\begin{equation*}\n");
printf("      \\frac{t_{A}}{2}\\cdot5+\\frac{t_{A}}{2}\\cdot4\n");
printf("      =\n");
printf("      \\frac{9\\cdot t_{A}}{2}\n");
printf("      \\quad\\text{(in \\si{\\kilo\\metre})}\n");
printf("    \\end{equation*}\n");
printf("\n");
printf("    Diese Strecke legt das zweite Kind in folgender Zeit zurück:\n");
printf("    \\begin{equation*}\n");
printf("      \\left.\n");
printf("      \\begin{array}{lcl}\n");
printf("        \\displaystyle\\frac{9\\cdot t_{A}}{4}=t_{B1}\\cdot4 & \\Rightarrow & t_{B1}=\\displaystyle\\frac{9}{16}t_{A}\\\\[3ex]\n");
printf("        \\displaystyle\\frac{9\\cdot t_{A}}{4}=t_{B2}\\cdot5 & \\Rightarrow & t_{B2}=\\displaystyle\\frac{9}{20}t_{A}\n");
printf("      \\end{array}\n");
printf("      \\quad\\right\\}\n");
printf("      \\quad\\Rightarrow\\quad\n");
printf("      t_{B}=\\left(\\frac{45}{80}+\\frac{36}{80}\\right)\\cdot t_{A}=\\frac{81}{80}\\cdot t_{A}\n");
printf("    \\end{equation*}\n");
printf("\n");
printf("    Das erste Kind erreicht die Schule also früher.\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

