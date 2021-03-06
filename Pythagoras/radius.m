clear all;

printf("\\begin{exercise}\n");
printf("      {ID-20aedaf3992ebc1b6ba8673186751504895c3c48}\n");
printf("      {Radius}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Berechne den Radius des grauen Kreises in Abhängigkeit von $a$.\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}[scale=0.92]\n");
printf("        %% Figur 1\n");
printf("        \\begin{scope}\n");
printf("          %% Mittelpunkt des grauen Kreises\n");
printf("          \\coordinate (M) at (2, 2.666);\n");
printf("          %% Kreisflaeche\n");
printf("          \\fill[fill=black!15!white] (M) circle[radius=1.333];\n");
printf("          %% Quadrat\n");
printf("          \\draw (0, 0) rectangle (4, 4);\n");
printf("          %% Kreis\n");
printf("          \\draw (M) circle[radius=1.333];\n");
printf("          %% Viertelkreise\n");
printf("          \\begin{scope}\n");
printf("            \\clip (0, 0) rectangle (4, 2);\n");
printf("            \\draw (0, 0) circle[radius=2];\n");
printf("            \\draw (4, 0) circle[radius=2];\n");
printf("          \\end{scope}\n");
printf("          %% Bezeichnung\n");
printf("          \\draw[|<->|, >=latex, shift={(0, -0.25)}] (0, 0) -- node[below] {{\\small$a$}} (4, 0);\n");
printf("          \\draw[|<->|, >=latex, shift={(0.25, 0)}] (4, 0) -- node[right] {{\\small$a$}} (4, 4);\n");
printf("        \\end{scope}\n");
printf("        %% Figur 2\n");
printf("        \\begin{scope}[xshift=5.5cm]\n");
printf("          %% Mittelpunkt des grauen Kreises\n");
printf("          \\coordinate (M) at (2, 3.121);\n");
printf("          %% Kreisflaeche\n");
printf("          \\fill[fill=black!15!white] (M) circle[radius=0.879];\n");
printf("          %% Quadrat\n");
printf("          \\draw (0, 0) rectangle (4, 4);\n");
printf("          %% Diagonalen\n");
printf("          \\draw[style=dotted] (0, 0) -- (4, 4);\n");
printf("          \\draw[style=dotted] (0, 4) -- (4, 0);\n");
printf("          %% Kreis\n");
printf("          \\draw (M) circle[radius=0.879];\n");
printf("          %% Kreise\n");
printf("          \\begin{scope}\n");
printf("            \\clip (0, 0) rectangle (4, 4);\n");
printf("            \\draw (0, 0) circle[radius=2.828];\n");
printf("            \\draw (4, 0) circle[radius=2.828];\n");
printf("          \\end{scope}\n");
printf("          %% Bezeichnung\n");
printf("          \\draw[|<->|, >=latex, shift={(0, -0.25)}] (0, 0) -- node[below] {{\\small$a$}} (4, 0);\n");
printf("          \\draw[|<->|, >=latex, shift={(0.25, 0)}] (4, 0) -- node[right] {{\\small$a$}} (4, 4);\n");
printf("        \\end{scope}\n");
printf("        %% Figur 3\n");
printf("        \\begin{scope}[xshift=11cm]\n");
printf("          %% Mittelpunkt des grauen Kreises\n");
printf("          \\coordinate (M) at (2, 3.75);\n");
printf("          %% Kreisflaeche\n");
printf("          \\fill[fill=black!15!white] (M) circle[radius=0.25];\n");
printf("          %% Quadrat\n");
printf("          \\draw (0, 0) rectangle (4, 4);\n");
printf("          %% Kreis\n");
printf("          \\draw (M) circle[radius=0.25];\n");
printf("          %% Kreise\n");
printf("          \\begin{scope}\n");
printf("            \\clip (0, 0) rectangle (4, 4);\n");
printf("            \\draw (0, 0) circle[radius=4];\n");
printf("            \\draw (4, 0) circle[radius=4];\n");
printf("          \\end{scope}\n");
printf("          %% Bezeichnung\n");
printf("          \\draw[|<->|, >=latex, shift={(0, -0.25)}] (0, 0) -- node[below] {{\\small$a$}} (4, 0);\n");
printf("          \\draw[|<->|, >=latex, shift={(0.25, 0)}] (4, 0) -- node[right] {{\\small$a$}} (4, 4);\n");
printf("        \\end{scope}\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\\par\n");
printf("    Über den \\emph{Satz des Pythagoras} lässt sich jeweils ein Zusammenhang\n");
printf("    zwischen $a$ und $r$ herstellen:\n");
printf("    \\begin{center}\n");
printf("      %% Figur 1\n");
printf("      \\begin{tikzpicture}[scale=0.92]\n");
printf("        %% Mittelpunkt des grauen Kreises\n");
printf("        \\coordinate (M) at (2, 2.666);\n");
printf("        %% Kreisflaeche\n");
printf("        \\fill[fill=black!15!white] (M) circle[radius=1.333];\n");
printf("        %% Quadrat\n");
printf("        \\draw (0, 0) rectangle (4, 4);\n");
printf("        %% Kreis\n");
printf("        \\draw (M) circle[radius=1.333];\n");
printf("        %% Viertelkreise\n");
printf("        \\begin{scope}\n");
printf("          \\clip (0, 0) rectangle (4, 2);\n");
printf("          \\draw (0, 0) circle[radius=2];\n");
printf("          \\draw (4, 0) circle[radius=2];\n");
printf("        \\end{scope}\n");
printf("        %% Mittelpunkt des Kreises\n");
printf("        \\fill (M) circle[radius=0.75pt];\n");
printf("        %% Beschriftung: Ri\n");
printf("        \\path (0, 0) -- node[right]{{\\small$R_{i}$}}($(0, 0)!2cm!0:(M)$);\n");
printf("        %% Beschriftung: r\n");
printf("        \\path (M) -- node[left]{{\\small$r_{i}$}}($(M)!1.333cm!0:(0, 0)$);\n");
printf("        %% rechtwinkliges Dreieck\n");
printf("        \\draw (M) -- (0, 0) -- (2, 0) -- cycle;\n");
printf("        %% Seiten des Quadrats\n");
printf("        \\draw[|<->|, >=latex, shift={(0, -0.25)}] (0, 0) -- node[below] {{\\small$a$}} (4, 0);\n");
printf("        \\draw[|<->|, >=latex, shift={(0.25, 0)}] (4, 0) -- node[right] {{\\small$a$}} (4, 4);\n");
printf("        %% Ansatz\n");
printf("        \\node[right] at (6, 2)\n");
printf("        {%%\n");
printf("          \\begin{minipage}{8cm}\n");
printf("            \\setlength{\\abovedisplayskip}{0pt}%%\n");
printf("            \\begin{equation*}\n");
printf("              \\begin{split}\n");
printf("                (R_{i}+r_{i})^2&=\\left(\\frac{a}{2}\\right)^2+(a-r_{i})^2\\\\[2ex]\n");
printf("                R_{1}=\\frac{a}{2}\n");
printf("                \\qquad\n");
printf("                R_{2}&=\\frac{\\sqrt{2}}{2}\\cdot a\n");
printf("                \\qquad\n");
printf("                R_{3}=a\n");
printf("              \\end{split}\n");
printf("            \\end{equation*}\n");
printf("          \\end{minipage}%%\n");
printf("        };\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    \\newcommand{\\fakewidth}[1]\n");
printf("    {%%\n");
printf("      \\makebox[0pt][l]\n");
printf("      {%%\n");
printf("        \\ensuremath\n");
printf("        {%%\n");
printf("          \\displaystyle#1%%\n");
printf("        }%%\n");
printf("      }%%\n");
printf("    }%%\n");
printf("\n");
printf("    Für den Radius des grauen Kreises in der linken Zeichnung gilt:\n");
printf("    \\begin{alignat*}{3}\n");
printf("                     &\\qquad & \\left(\\frac{a}{2}+r\\right)^2&=\\left(\\frac{a}{2}\\right)^2+(a-r)^2 & \\qquad&                          \\\\[2ex]\n");
printf("      \\Leftrightarrow&\\qquad &         \\frac{a^2}{4}+ar+r^2&=\\frac{a^2}{4}+a^2-2ar+r^2          & \\qquad&|-\\frac{a^2}{4}\\quad|-r^2 \\\\[2ex]\n");
printf("      \\Leftrightarrow&\\qquad &                       ar    &=              a^2-2ar              & \\qquad&|+2ar                     \\\\[2ex]\n");
printf("      \\Leftrightarrow&\\qquad &                      3ar    &=              a^2                  & \\qquad&|:(3a)                    \\\\[2ex]\n");
printf("      \\Leftrightarrow&\\qquad &                        r    &=        \\frac{a}{3}                & \\qquad&\n");
printf("    \\end{alignat*}\n");
printf("\n");
printf("    Für den Radius des grauen Kreises in der mittleren Zeichnung gilt:\n");
printf("    \\begin{alignat*}{3}\n");
printf("                     &\\qquad & \\left(\\frac{\\sqrt{2}}{2}\\cdot a+r\\right)^2   &=\\left(\\frac{a}{2}\\right)^2+(a-r)^2  & \\qquad&                                  \\\\[2ex]\n");
printf("      \\Leftrightarrow&\\qquad &               \\frac{a^2}{2}+\\sqrt{2}ar+r^2   &=\\frac{ a^2}{4}+a^2-2ar+r^2          & \\qquad&|-r^2                             \\\\[2ex]\n");
printf("      \\Leftrightarrow&\\qquad &               \\frac{a^2}{2}+\\sqrt{2}ar       &=\\frac{5a^2}{4}    -2ar              & \\qquad&|+2ar\\quad|-\\frac{a^2}{2}         \\\\[2ex]\n");
printf("      \\Leftrightarrow&\\qquad &                             \\sqrt{2}ar+2ar   &=\\frac{5a^2}{4}-\\frac{a^2}{2}        & \\qquad&                                  \\\\[2ex]\n");
printf("      \\Leftrightarrow&\\qquad &                     ar\\left(\\sqrt{2}+2\\right)&=\\frac{3a^2}{4}                      & \\qquad&|:a\\quad|:\\left(\\sqrt{2}+2\\right) \\\\[2ex]\n");
printf("      \\Leftrightarrow&\\qquad &                      r                       &=\\frac{3a}{4\\left(\\sqrt{2}+2\\right)}\n");
printf("                                                                             =\\fakewidth{\\frac{3a}{\\sqrt{32}+8}}  & \\qquad&\n");
printf("    \\end{alignat*}\n");
printf("\n");
printf("    Für den Radius des grauen Kreises in der rechten Zeichnung gilt:\n");
printf("    \\begin{alignat*}{3}\n");
printf("                     &\\qquad & (a+r)^2     &=\\left(\\frac{a}{2}\\right)^2+(a-r)^2 & \\qquad&                \\\\[2ex]\n");
printf("      \\Leftrightarrow&\\qquad & a^2+2ar+r^2 &=\\frac{a^2}{4}+a^2-2ar+r^2          & \\qquad&|-a^2\\quad|-r^2 \\\\[2ex]\n");
printf("      \\Leftrightarrow&\\qquad &     2ar     &=\\frac{a^2}{4}    -2ar              & \\qquad&|+2ar           \\\\[2ex]\n");
printf("      \\Leftrightarrow&\\qquad &     4ar     &=\\frac{a^2}{4}                      & \\qquad&|:(4a)          \\\\[2ex]\n");
printf("      \\Leftrightarrow&\\qquad &       r     &=\\frac{a}{16}                       & \\qquad&\n");
printf("    \\end{alignat*}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

