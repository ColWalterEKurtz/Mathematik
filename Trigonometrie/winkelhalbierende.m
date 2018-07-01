clear all;

a = 5;
b = 7;
gamma = 90;

c = sqrt(a^2 + b^2);
alpha = acos( (a^2 - b^2 - c^2) / (-2 * b * c) ) * (180 / pi);
beta  = acos( (b^2 - a^2 - c^2) / (-2 * a * c) ) * (180 / pi);

walpha = b / cos(alpha * (pi / 180) / 2);

ins_a      = sprintf("%d", a);
ins_b      = sprintf("%d", b);
ins_walpha = sprintf("%.2f", walpha);

printf("\\begin{exercise}\n");
printf("      {ID-b1ff4031783f12acda67ebdd7259bb0f1f4b7a83}\n");
printf("      {Winkelhalbierende}\n");
printf("  \\ifproblem\\problem\n");
printf("    Wie lang ist die Winkelhalbierende $w_{\\alpha}$ in einem\n");
printf("    rechtwinkligen Dreieck mit den Katheten $a=\\sicm{%s}$\n", ins_a);
printf("    und $b=\\sicm{%s}$?\n", ins_b);
printf("  \\fi\n");
printf("  \\ifoutline\\outline\n");
printf("    \\begin{center}\n");
printf("      \\begin{minipage}{10cm}\n");
printf("        \\begin{tikzpicture}\n");
printf("          \\coordinate (A) at (0, 0);\n");
printf("          \\coordinate (B) at (8.6023, 0);\n");
printf("          \\coordinate (C) at (35.5377:7.0000);\n");
printf("          \\coordinate (D) at (17.7688:14.0000);\n");
printf("          \\coordinate (S) at (intersection of A--D and B--C);\n");
printf("          \\begin{scope}\n");
printf("            \\clip (A) -- (B) -- (C) -- cycle;\n");
printf("            \\filldraw[fill=black!40!white] (A) circle[radius=1.5];\n");
printf("            \\draw (C) circle[radius=0.8];\n");
printf("            \\fill ($(C)!4mm!45:(A)$) circle[radius=1pt];\n");
printf("          \\end{scope}\n");
printf("          \\draw (A) -- node[below]{$c$}\n");
printf("                (B) -- node[above right]{$a$}\n");
printf("                (C) -- node[above left]{$b$}\n");
printf("                (A);\n");
printf("          \\draw (A) -- node[below right]{$w_{\\alpha}$} (S);\n");
printf("          \\fill (A) circle[radius=1pt] node[below left]{$A$};\n");
printf("          \\fill (B) circle[radius=1pt] node[below right]{$B$};\n");
printf("          \\fill (C) circle[radius=1pt] node[above]{$C$};\n");
printf("          \\fill (S) circle[radius=1pt];\n");
printf("        \\end{tikzpicture}\n");
printf("      \\end{minipage}%%\n");
printf("      \\begin{minipage}{4cm}\n");
printf("        \\begin{equation*}\n");
printf("          \\begin{split}\n");
printf("            c&=\\sqrt{a^2+b^2}\\\\[2ex]\n");
printf("            \\cos(\\alpha)&=\\frac{b}{c}\\\\[2ex]\n");
printf("            \\cos\\left(\\frac{\\alpha}{2}\\right)&=\\frac{b}{w_{\\alpha}}\n");
printf("          \\end{split}\n");
printf("        \\end{equation*}\n");
printf("      \\end{minipage}%%\n");
printf("    \\end{center}\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Die Winkelhalbierende $w_{\\alpha}$ hat in dem gegebenen Dreieck\n");
printf("    eine Länge von ca. \\sicm{%s}.\n", ins_walpha);
printf("  \\fi\n");
printf("\\end{exercise}\n");

