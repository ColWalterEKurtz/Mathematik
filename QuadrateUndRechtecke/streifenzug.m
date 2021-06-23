clear all;

addpath 'Octave/';

n        = 7;
slaenge  = 14;
quadrate = n * (n + 1) / 2;
flaeche  = quadrate * (slaenge / n)^2;
umfang   = 2 * (quadrate + 1) * (slaenge / n);

ins_n        = sprintf("%d", n);
ins_slaenge  = sprintf("%d", slaenge);
ins_quadrate = sprintf("%d", quadrate);
ins_flaeche  = sprintf("%d", flaeche);
ins_umfang   = sprintf("%d", umfang);

printf("\\begin{exercise}\n");
printf("      {ID-a9fa4285bfefe98b00f46b022447e562b790752b}\n");
printf("      {Streifenzug}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Ein Quadrat $ABCD$ mit \\sicm{%s} Seitenlänge ist in %s mal %s gleichgroße\n", ins_slaenge, ins_n, ins_n);
printf("    Teilquadrate zerlegt. Aus einigen dieser Teilquadrate ist ein\n");
printf("    Streifenzug so zusammengestellt, wie es die Abbildung zeigt.\n");
printf("    Der Streifenzug ist durch die Schraffierung hervorgehoben.\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}[scale=0.5]\n");
printf("        \\draw (0, 0) grid (7, 7);\n");
printf("        \\begin{scope}[pattern color=black!50!white]\n");
printf("          \\path[pattern=crosshatch] (0, 0) rectangle (7, 1);\n");
printf("          \\path[pattern=crosshatch] (0, 1) rectangle (1, 7);\n");
printf("          \\path[pattern=crosshatch] (1, 6) rectangle (6, 7);\n");
printf("          \\path[pattern=crosshatch] (5, 2) rectangle (6, 6);\n");
printf("          \\path[pattern=crosshatch] (2, 2) rectangle (5, 3);\n");
printf("          \\path[pattern=crosshatch] (2, 3) rectangle (3, 5);\n");
printf("          \\path[pattern=crosshatch] (3, 4) rectangle (4, 5);\n");
printf("        \\end{scope}\n");
printf("      \\fill (0, 0) circle[radius=2pt] node[below left]{$A$};\n");
printf("      \\fill (7, 0) circle[radius=2pt] node[below right]{$B$};\n");
printf("      \\fill (7, 7) circle[radius=2pt] node[above right]{$C$};\n");
printf("      \\fill (0, 7) circle[radius=2pt] node[above left]{$D$};\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("    Berechne den Umfang und den Flächeninhalt dieses Streifenzuges.\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    Der Streifenzug besitzt eine Fläche von \\sicmm{%s} und\n", ins_flaeche);
printf("    einen Umfang von \\sicm{%s}.\n", ins_umfang);
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

