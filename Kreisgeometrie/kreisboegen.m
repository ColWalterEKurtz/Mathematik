clear all;

addpath 'Octave/';

d  = 8;                   % [m]
l1 = 2 * pi * d/2 * 0.5;  % [m]
l2 = 2 * pi * d/4 * 1;    % [m]
l3 = 2 * pi * d/8 * 2;    % [m]

ins_d  = sprintf("%d",   d);
ins_l1 = sprintf("%.2f", l1);
ins_l2 = sprintf("%.2f", l2);
ins_l3 = sprintf("%.2f", l3);

printf("\\begin{exercise}\n");
printf("      {ID-f50b91e0c0a8af8ab764f9f28a82f3924149874e}\n");
printf("      {Kreisbögen}\n");
printf("  \\ifproblem\\problem\n");
printf("    Die beiden Punkte $A$ und $B$ sind \\simeter{%s} weit voneinander entfernt\n", ins_d);
printf("    und sollen durch einen Weg aus halbkreisförmigen Kreisbögen miteinander\n");
printf("    verbunden werden. Welche der drei abgebildeten Varianten stellt die\n");
printf("    kürzeste Verbindung dar?\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}\n");
printf("        \\coordinate (A) at (0, 0);\n");
printf("        \\coordinate (B) at (8, 0);\n");
printf("        \\fill (A) circle[radius=1.25pt] node[left]{$A$};\n");
printf("        \\fill (B) circle[radius=1.25pt] node[right]{$B$};\n");
printf("        \\draw (A) -- (B);\n");
printf("        %% Variante 1\n");
printf("        \\draw[line width=1.25pt, style=dotted]\n");
printf("              (B) arc[start angle=0, end angle=180, radius=4];\n");
printf("        %% Variante 2\n");
printf("        \\draw[line width=1pt, style=dashed]\n");
printf("              (B) arc[start angle=0,   end angle=180, radius=2]\n");
printf("                  arc[start angle=360, end angle=180, radius=2];\n");
printf("        %% Variante 3\n");
printf("        \\draw (B) arc[start angle=0,   end angle=180, radius=1]\n");
printf("                  arc[start angle=360, end angle=180, radius=1]\n");
printf("                  arc[start angle=0,   end angle=180, radius=1]\n");
printf("                  arc[start angle=360, end angle=180, radius=1];\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Alle drei Wege besitzen dieselbe Länge:\n");
printf("    \\begin{equation*}\n");
printf("      2\\cdot\\pi\\cdot\\simeter{4}\\cdot\\frac{1}{2}=\n");
printf("      2\\cdot\\pi\\cdot\\simeter{2}=\n");
printf("      2\\cdot\\pi\\cdot\\simeter{1}\\cdot2\\approx\n");
printf("      \\simeter{%s}\n", ins_l1);
printf("    \\end{equation*}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

