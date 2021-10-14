clear all;

%%% addpath 'Octave/';

%%% NO CALCULATIONS YET %%%

printf("\\begin{exercise}\n");
printf("      {ID-d840964f507587b576bf442f8b034c9b6d7b9184}\n");
printf("      {Wendetangentenschnittpunkt}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Bestimmen Sie den Schnittpunkt der Wendetangenten der\n");
printf("    Funktion $f$ mit\n");
printf("    \\begin{equation*}\n");
printf("      %%<OCTAVE>\n");
printf("      f(x)=\\frac{\\num{1}}{\\num{256}}x^{4}-\\frac{\\num{1}}{\\num{64}}x^{3}-\\frac{\\num{45}}{\\num{128}}x^{2}+\\frac{\\num{47}}{\\num{64}}x+\\frac{\\num{673}}{\\num{256}}\n");
printf("      %%</OCTAVE>\n");
printf("      %%f = [1/256 -1/64 -45/128 47/64 673/256];\n");
printf("      %%printf(\"f(x)=%%s\\n\", mypolystr(f, \"x\", [0 0 0 0 1]));\n");
printf("    \\end{equation*}\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    %% </OUTLINE>\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    %% <OUTCOME>\n");
printf("    Zur Bestimmung der Wendepunkte, wird zunächst\n");
printf("    die zweite Ableitung benötigt:\n");
printf("    \\begin{equation*}\n");
printf("      \\begin{split}\n");
printf("      %%<OCTAVE>\n");
printf("      f(x)&=\\frac{\\num{1}}{\\num{256}}x^{4}-\\frac{\\num{1}}{\\num{64}}x^{3}-\\frac{\\num{45}}{\\num{128}}x^{2}+\\frac{\\num{47}}{\\num{64}}x+\\frac{\\num{673}}{\\num{256}}\\\\[2ex]\n");
printf("      f'(x)&=\\frac{\\num{1}}{\\num{64}}x^{3}-\\frac{\\num{3}}{\\num{64}}x^{2}-\\frac{\\num{45}}{\\num{64}}x+\\frac{\\num{47}}{\\num{64}}\\\\[2ex]\n");
printf("      f''(x)&=\\frac{\\num{3}}{\\num{64}}x^{2}-\\frac{\\num{3}}{\\num{32}}x-\\frac{\\num{45}}{\\num{64}}\n");
printf("      %%</OCTAVE>\n");
printf("      %%f = [1/256 -1/64 -45/128 47/64 673/256];\n");
printf("      %%df = polyder(f);\n");
printf("      %%d2f = polyder(df);\n");
printf("      %%printf(\"f(x)&=%%s\\\\\\\\[2ex]\\n\", mypolystr(f, \"x\", [0 0 0 0 1]));\n");
printf("      %%printf(\"f'(x)&=%%s\\\\\\\\[2ex]\\n\", mypolystr(df, \"x\", [0 0 0 0 1]));\n");
printf("      %%printf(\"f''(x)&=%%s\\\\\\\\[2ex]\\n\", mypolystr(d2f, \"x\", [0 0 0 0 1]));\n");
printf("      \\end{split}\n");
printf("    \\end{equation*}\n");
printf("    Eine Nullstelle in $f''$ ist notwendige Bedingung\n");
printf("    für die Existenz eines Wendepunktes in $f$:\n");
printf("    \\begin{alignat*}{3}\n");
printf("      \\relax&\\quad\n");
printf("      &\n");
printf("      0&=\\frac{\\num{3}}{\\num{64}}x^{2}-\\frac{\\num{3}}{\\num{32}}x-\\frac{\\num{45}}{\\num{64}}\n");
printf("      &\n");
printf("      \\quad&|:\\frac{3}{64}\n");
printf("      \\\\[2ex]\n");
printf("      \\Leftrightarrow&\\quad\n");
printf("      &\n");
printf("      0&=x^2-2x-15\n");
printf("      &\n");
printf("      \\quad&|\\;\\text{$pq$-Formel}\n");
printf("      \\\\[2ex]\n");
printf("      \\Leftrightarrow&\\quad\n");
printf("      &\n");
printf("      x_{1,2}&=-\\frac{-2}{2}\\pm\\sqrt{\\left(\\frac{-2}{2}\\right)^2-(-15)}\n");
printf("      &\n");
printf("      \\quad&\\relax\n");
printf("      \\\\[2ex]\n");
printf("      \\relax&\\quad\n");
printf("      &\n");
printf("      &=1\\pm\\sqrt{16}=1\\pm4\n");
printf("      &\n");
printf("      \\quad&\\relax\n");
printf("      \\\\[2ex]\n");
printf("      \\Leftrightarrow&\\quad\n");
printf("      &\n");
printf("      x&\\in\\{-3;5\\}\n");
printf("      &\n");
printf("      \\quad&\\relax\n");
printf("    \\end{alignat*}\n");
printf("    Wenn eine quadratische Funktion zwei\n");
printf("    Nullstellen besitzt, dann findet an beiden\n");
printf("    Nullstellen ein Vorzeichenwechsel statt.\n");
printf("    Die Funktion $f$ enthält also genau zwei\n");
printf("    Wendepunkte:\n");
printf("    \\begin{equation*}\n");
printf("      \\begin{split}\n");
printf("        W_1&=\\left(W_{1x}\\;\\middle|\\;W_{1y}\\right)\n");
printf("            =\\left(-3\\;\\middle|\\;f(-3)\\right)\n");
printf("            =\\left(-3\\;\\middle|\\;-2\\right)\n");
printf("        \\\\\n");
printf("        W_2&=\\left(W_{2x}\\;\\middle|\\;W_{2y}\\right)\n");
printf("            =\\left(5\\;\\middle|\\;f(5)\\right)\n");
printf("            =\\left(5\\;\\middle|\\;-2\\right)\n");
printf("        %%f = [1/256 -1/64 -45/128 47/64 673/256];\n");
printf("        %%polyval(f, -3)\n");
printf("        %%polyval(f, 5)\n");
printf("      \\end{split}\n");
printf("    \\end{equation*}\n");
printf("    Die zugehörigen Steigungen erhält man aus der\n");
printf("    ersten Ableitung:\n");
printf("    \\begin{equation*}\n");
printf("      \\begin{split}\n");
printf("        m_1&=f'(-3)=2\n");
printf("        \\\\\n");
printf("        m_2&=f'(5)=-2\n");
printf("        %%f = [1/256 -1/64 -45/128 47/64 673/256];\n");
printf("        %%df = polyder(f);\n");
printf("        %%polyval(df, -3)\n");
printf("        %%polyval(df, 5)\n");
printf("      \\end{split}\n");
printf("    \\end{equation*}\n");
printf("    Mit diesen Informationen lassen sich jetzt die\n");
printf("    Tangentengleichungen aufstellen:\n");
printf("    \\begin{equation*}\n");
printf("      \\begin{split}\n");
printf("        t_1(x)&=m_1\\cdot x+b_1\n");
printf("        \\qquad\n");
printf("        b_1=W_{1y}-m_1\\cdot W_{1x}\n");
printf("           =-2-2\\cdot(-3)\n");
printf("           =4\n");
printf("        \\qquad\n");
printf("        t_1(x)=2x+4\n");
printf("        \\\\\n");
printf("        t_2(x)&=m_2\\cdot x+b_2\n");
printf("        \\qquad\n");
printf("        b_2=W_{2y}-m_2\\cdot W_{2x}\n");
printf("           =-2-(-2)\\cdot5\n");
printf("           =8\n");
printf("        \\qquad\n");
printf("        t_2(x)=-2x+8\n");
printf("      \\end{split}\n");
printf("    \\end{equation*}\n");
printf("    Ein Gleichsetzen der Tangentengleichungen liefert\n");
printf("    die $x$-Koordinate des Schnittpunktes:\n");
printf("    \\begin{alignat*}{3}\n");
printf("      \\relax&\\quad\n");
printf("      &\n");
printf("      t_1(x)&=t_2(x)\n");
printf("      &\n");
printf("      \\quad&\\relax\n");
printf("      \\\\\n");
printf("      \\Leftrightarrow&\\quad\n");
printf("      &\n");
printf("      2x+4&=-2x+8\n");
printf("      &\n");
printf("      \\quad&|+2x\n");
printf("      \\\\\n");
printf("      \\Leftrightarrow&\\quad\n");
printf("      &\n");
printf("      4x+4&=8\n");
printf("      &\n");
printf("      \\quad&|-4\n");
printf("      \\\\\n");
printf("      \\Leftrightarrow&\\quad\n");
printf("      &\n");
printf("      4x&=4\n");
printf("      &\n");
printf("      \\quad&|:4\n");
printf("      \\\\\n");
printf("      \\Leftrightarrow&\\quad\n");
printf("      &\n");
printf("      x&=1\n");
printf("      &\n");
printf("      \\quad&\\relax\n");
printf("    \\end{alignat*}\n");
printf("    Die $y$-Koordinate ergibt sich aus dem\n");
printf("    Einsetzen des eben gefundenen $x$-Wertes:\n");
printf("    \\begin{equation*}\n");
printf("      t_{1}(1)=t_2(1)=6\n");
printf("    \\end{equation*}\n");
printf("    Die beiden Wendetangenten schneiden sich also\n");
printf("    im Punkt $S\\left(1\\;\\middle|\\;6\\right)$.\n");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

