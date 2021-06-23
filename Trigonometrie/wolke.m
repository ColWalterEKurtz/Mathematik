clear all;

% numerische Werte
h1    = 70.2;
alpha = 61.2;
beta  = 58.1;

% Berechnungen
h2 = h1 * tan(beta * pi/180) / tan(alpha * pi/180);
h  = h1 + h2;

% formatierte Werte
ins_h1    = sprintf("%.1f", h1);
ins_alpha = sprintf("%.1f", alpha);
ins_beta  = sprintf("%.1f", beta);
ins_h2    = sprintf("%.2f", h2);
ins_h     = sprintf("%.2f", h);

printf("\\begin{exercise}\n");
printf("      {ID-5d2ce9653ecf93debeaa5361ea778ea54f6de3dd}\n");
printf("      {Wolke}\n");
printf("  \\newcommand{\\zeichnung}\n");
printf("  {%%\n");
printf("    \\begin{tikzpicture}[scale=0.05]\n");
printf("      \\coordinate (A) at ( 0.000,  70.2);\n");
printf("      \\coordinate (B) at (38.593,   0.0);\n");
printf("      \\coordinate (C) at (38.593, 132.2);\n");
printf("      \\coordinate (D) at (38.593,  70.2);\n");
printf("      \\draw (A) -- (B) -- (C) -- cycle;\n");
printf("      \\draw (A) -- (D);\n");
printf("      \\path (B) -- node[right] {$h_{1}$} (D);\n");
printf("      \\path (D) -- node[right] {$h_{2}$} (C);\n");
printf("      \\path (A) -- node[above, pos=0.575] {$d$} (D);\n");
printf("      %% alpha\n");
printf("      \\begin{scope}\n");
printf("        \\clip (A) -- (D) -- (B) -- cycle;\n");
printf("        \\draw (A) circle[radius=15cm];\n");
printf("        \\node at ([shift={(0, 70.2)}]329.4:9) {$\\alpha$};\n");
printf("      \\end{scope}\n");
printf("      %% beta\n");
printf("      \\begin{scope}\n");
printf("        \\clip (A) -- (D) -- (C) -- cycle;\n");
printf("        \\draw (A) circle[radius=15cm];\n");
printf("        \\node at ([shift={(0, 70.2)}]29.05:9) {$\\beta$};\n");
printf("      \\end{scope}\n");
printf("      %% rechter Winkel\n");
printf("      \\begin{scope}\n");
printf("        \\clip (A) -- (D) -- (C) -- cycle;\n");
printf("        \\draw (D) circle[radius=8cm];\n");
printf("        \\fill ([shift={(135:4cm)}]D) circle[radius=7mm];\n");
printf("      \\end{scope}\n");
printf("    \\end{tikzpicture}%%\n");
printf("  }%%\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Ein Berghotel liegt \\SI{%s}{\\metre} über dem Spiegel eines Sees.\n", ins_h1);
printf("    Vom Hotel aus sieht ein Beobachter eine Wolke unter dem Höhenwinkel\n");
printf("    \\SI{%s}{\\degree}, ihr Spiegelbild im See unter dem Tiefenwinkel\n", ins_beta);
printf("    \\SI{%s}{\\degree}. In welcher Höhe befindet sich die Wolke\n", ins_alpha);
printf("    über dem See?\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    \\begin{center}\n");
printf("      \\zeichnung\n");
printf("    \\end{center}\n");
printf("    \\begin{equation*}\n");
printf("      \\begin{split}\n");
printf("        \\tan\\alpha=\\frac{h_{1}}{d}\n");
printf("        &\\quad\\Rightarrow\\quad\n");
printf("        d=\\frac{h_{1}}{\\tan\\alpha}\\\\[2ex]\n");
printf("        \\tan\\beta=\\frac{h_{2}}{d}\n");
printf("        &\\quad\\Rightarrow\\quad\n");
printf("        h_{2}=d\\cdot\\tan\\beta=h_{1}\\cdot\\frac{\\tan\\beta}{\\tan\\alpha}\n");
printf("      \\end{split}\n");
printf("    \\end{equation*}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

