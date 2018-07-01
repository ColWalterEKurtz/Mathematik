clear all;

printf("\\begin{exercise}\n");
printf("      {ID-d3b096645730ec17b0125339439da814b21c7d3a}\n");
printf("      {Sportgruppe}\n");
printf("  \\ifproblem\\problem\n");
printf("    In einer Sportgruppe fahren \\pc{70} der Schüler Ski und \\pc{60} der\n");
printf("    Schüler Snowboard. Ein Viertel der Schüler fährt weder Ski noch Snowboard.\n");
printf("    11 Schüler der Gruppe fahren Ski und Snowboard. Wie viele Schüler sind\n");
printf("    insgesamt in der Sportgruppe?\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    \\begin{tikzpicture}\n");
printf("      \\draw[rounded corners = 5pt] (-3, -2) rectangle (3, 2);\n");
printf("      \\draw (-1, 0) circle[radius=1.5cm];\n");
printf("      \\draw ( 1, 0) circle[radius=1.5cm];\n");
printf("      \\node at ( 0.00,  0.00)        {{\\small $11$}};\n");
printf("      \\node at (-1.45,  0.00)        {{\\small Ski}};\n");
printf("      %%\\node at (-1.45, -0.40)        {{\\small\\pc{70}}};\n");
printf("      \\node at ( 1.45,  0.00)        {{\\small SB}};\n");
printf("      %%\\node at ( 1.45, -0.40)        {{\\small\\pc{60}}};\n");
printf("      \\node[above right] at (-3, -2) {{\\small\\pc{25}}};\n");
printf("      \\node[right] at (3, 0)\n");
printf("      {%%\n");
printf("        \\begin{minipage}{8cm}\n");
printf("          \\vspace*{-\\abovedisplayskip}%%\n");
printf("          \\begin{equation*}\n");
printf("            \\begin{split}\n");
printf("              \\text{Ski}\\cup\\text{SB}&=\\text{\\pc{75}}\\\\\n");
printf("              (\\text{Ski}\\cup\\text{SB})\\setminus\\text{SB}&=\\text{\\pc{15}}\\\\\n");
printf("              (\\text{SB}\\cup\\text{SB})\\setminus\\text{Ski}&=\\text{\\pc{5}}\\\\\n");
printf("              \\text{SB}\\cap\\text{Ski}&=\\text{\\pc{55}}\\\\[2ex]\n");
printf("              0,\\!55\\cdot x&=11\\quad\\Rightarrow\\quad x=20\n");
printf("            \\end{split}\n");
printf("          \\end{equation*}\n");
printf("        \\end{minipage}%%\n");
printf("      };\n");
printf("    \\end{tikzpicture}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");
