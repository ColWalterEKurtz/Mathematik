clear all;

%%% addpath 'Octave/';

%%% NO CALCULATIONS YET %%%

printf("\\begin{exercise}\n");
printf("      {ID-3c72c6c4d7e81e895a7e041936ad91631b0b6cd1}\n");
printf("      {Formeltraining}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Bestimme den Scheitelpunkt und die Nullstellen der folgenden Parabeln:\n");
printf("    \\newcommand{\\exchar}[1]{\\vphantom{\\frac{f}{f}}\\text{#1}&\\;}%%\n");
printf("    \\begin{alignat*}{8}\n");
printf("      \\exchar{a)}\n");
printf("      &\n");
printf("      f(x)&=x^2-2x-3\n");
printf("      &\n");
printf("      \\quad&\\quad\n");
printf("      &\n");
printf("      \\exchar{b)}\n");
printf("      &\n");
printf("      f(x)&=x^2-10x+24\n");
printf("      &\n");
printf("      \\quad&\\quad\n");
printf("      &\n");
printf("      \\exchar{c)}\n");
printf("      &\n");
printf("      f(x)&=x^2-6x\n");
printf("      \\\\\n");
printf("      \\exchar{d)}\n");
printf("      &\n");
printf("      f(x)&=-x^2-16x-48\n");
printf("      &\n");
printf("      \\quad&\\quad\n");
printf("      &\n");
printf("      \\exchar{e)}\n");
printf("      &\n");
printf("      f(x)&=4x^2-16x-20\n");
printf("      &\n");
printf("      \\quad&\\quad\n");
printf("      &\n");
printf("      \\exchar{f)}\n");
printf("      &\n");
printf("      f(x)&=-3x^2+12x+36\n");
printf("      \\\\\n");
printf("      \\exchar{g)}\n");
printf("      &\n");
printf("      f(x)&=x^2-7x+12\n");
printf("      &\n");
printf("      \\quad&\\quad\n");
printf("      &\n");
printf("      \\exchar{h)}\n");
printf("      &\n");
printf("      f(x)&=-\\frac{9}{4}x^2+6x-3\n");
printf("      &\n");
printf("      \\quad&\\quad\n");
printf("      &\n");
printf("      \\exchar{i)}\n");
printf("      &\n");
printf("      f(x)&=\\frac{1}{2}x^2+\\frac{3}{4}x+\\frac{1}{4}\n");
printf("    \\end{alignat*}\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    %% </OUTLINE>\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    %% <OUTCOME>\n");
printf("    \\begin{minipage}[t]{0.49\\linewidth}\n");
printf("      Scheitelpunkt a)\n");
printf("      \\small\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          f(x)&=x^{2}-2x-3\n");
printf("          \\\\\n");
printf("          &=x^2-2x+1-1-3\n");
printf("          \\\\\n");
printf("          &=(x-1)^2-4\n");
printf("          \\\\[1ex]\n");
printf("          \\Rightarrow\\quad&S\\left(1\\;\\middle|\\;-4\\right)\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    \\end{minipage}%%\n");
printf("    \\hfill\n");
printf("    \\begin{minipage}[t]{0.49\\linewidth}\n");
printf("      Nullstellen a)\n");
printf("      \\small\n");
printf("      %%<OCTAVE>\n");
printf("      \\begingroup\n");
printf("        \\newcommand{\\vstrut}{\\vphantom{\\left(f_0^0\\right)}}%%\n");
printf("        \\newcommand{\\noeq}{\\phantom{\\Leftrightarrow}\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\iseq}{\\Leftrightarrow\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\impl}{\\Rightarrow\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\nomod}{\\quad&\\phantom{|}}%%\n");
printf("        \\newcommand{\\domod}[1]{\\quad&|#1}%%\n");
printf("        \\begin{alignat*}{3}\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          \\num{0}&=x^{2}-\\num{2}x-\\num{3}\n");
printf("          &\n");
printf("          \\domod{\\;\\text{$pq$-Formel}}\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          p&=-\\num{2}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          q&=-\\num{3}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_{1,2}&=-\\frac{p}{2}\\pm\\sqrt{\\left(\\frac{p}{2}\\right)^2-q}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=\\num{1}\\pm\\sqrt{\\left(-\\num{1}\\right)^2-\\left(-\\num{3}\\right)}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=\\num{1}\\pm\\sqrt{\\num{4}}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=\\num{1}\\pm\\num{2}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_1&=-\\num{1}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_2&=\\num{3}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("        \\end{alignat*}\n");
printf("      \\endgroup\n");
printf("      %%</OCTAVE>\n");
printf("      %%myqsolve(1, -2, -3, 0, \"x\");\n");
printf("    \\end{minipage}\\bigskip\\par\n");
printf("    \\begin{minipage}[t]{0.49\\linewidth}\n");
printf("      Scheitelpunkt b)\n");
printf("      \\small\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          f(x)&=x^{2}-10x+24\n");
printf("          \\\\\n");
printf("          &=x^2-10x+25-25+24\n");
printf("          \\\\\n");
printf("          &=(x-5)^2-1\n");
printf("          \\\\[1ex]\n");
printf("          \\Rightarrow\\quad&S\\left(5\\;\\middle|\\;-1\\right)\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    \\end{minipage}%%\n");
printf("    \\hfill\n");
printf("    \\begin{minipage}[t]{0.49\\linewidth}\n");
printf("      Nullstellen b)\n");
printf("      \\small\n");
printf("      %%<OCTAVE>\n");
printf("      \\begingroup\n");
printf("        \\newcommand{\\vstrut}{\\vphantom{\\left(f_0^0\\right)}}%%\n");
printf("        \\newcommand{\\noeq}{\\phantom{\\Leftrightarrow}\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\iseq}{\\Leftrightarrow\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\impl}{\\Rightarrow\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\nomod}{\\quad&\\phantom{|}}%%\n");
printf("        \\newcommand{\\domod}[1]{\\quad&|#1}%%\n");
printf("        \\begin{alignat*}{3}\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          \\num{0}&=x^{2}-\\num{10}x+\\num{24}\n");
printf("          &\n");
printf("          \\domod{\\;\\text{$pq$-Formel}}\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          p&=-\\num{10}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          q&=\\num{24}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_{1,2}&=-\\frac{p}{2}\\pm\\sqrt{\\left(\\frac{p}{2}\\right)^2-q}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=\\num{5}\\pm\\sqrt{\\left(-\\num{5}\\right)^2-\\num{24}}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=\\num{5}\\pm\\sqrt{\\num{1}}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=\\num{5}\\pm\\num{1}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_1&=\\num{4}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_2&=\\num{6}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("        \\end{alignat*}\n");
printf("      \\endgroup\n");
printf("      %%</OCTAVE>\n");
printf("      %%myqsolve(1, -10, 24, 0, \"x\");\n");
printf("    \\end{minipage}\\bigskip\\par\n");
printf("    \\begin{minipage}[t]{0.49\\linewidth}\n");
printf("      Scheitelpunkt c)\n");
printf("      \\small\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          f(x)&=x^{2}-6x\n");
printf("          \\\\\n");
printf("          &=x^{2}-6x+9-9\n");
printf("          \\\\\n");
printf("          &=(x-3)^2-9\n");
printf("          \\\\[1ex]\n");
printf("          \\Rightarrow\\quad&S\\left(3\\;\\middle|\\;-9\\right)\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    \\end{minipage}%%\n");
printf("    \\hfill\n");
printf("    \\begin{minipage}[t]{0.49\\linewidth}\n");
printf("      Nullstellen c)\n");
printf("      \\small\n");
printf("      %%<OCTAVE>\n");
printf("      \\begingroup\n");
printf("        \\newcommand{\\vstrut}{\\vphantom{\\left(f_0^0\\right)}}%%\n");
printf("        \\newcommand{\\noeq}{\\phantom{\\Leftrightarrow}\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\iseq}{\\Leftrightarrow\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\impl}{\\Rightarrow\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\nomod}{\\quad&\\phantom{|}}%%\n");
printf("        \\newcommand{\\domod}[1]{\\quad&|#1}%%\n");
printf("        \\begin{alignat*}{3}\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          \\num{0}&=x^{2}-\\num{6}x\n");
printf("          &\n");
printf("          \\domod{\\;\\text{$pq$-Formel}}\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          p&=-\\num{6}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          q&=\\num{0}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_{1,2}&=-\\frac{p}{2}\\pm\\sqrt{\\left(\\frac{p}{2}\\right)^2-q}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=\\num{3}\\pm\\sqrt{\\left(-\\num{3}\\right)^2-\\num{0}}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=\\num{3}\\pm\\sqrt{\\num{9}}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=\\num{3}\\pm\\num{3}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_1&=\\num{0}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_2&=\\num{6}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("        \\end{alignat*}\n");
printf("      \\endgroup\n");
printf("      %%</OCTAVE>\n");
printf("      %%myqsolve(1, -6, 0, 0, \"x\");\n");
printf("    \\end{minipage}\\bigskip\\par\n");
printf("    \\begin{minipage}[t]{0.49\\linewidth}\n");
printf("      Scheitelpunkt d)\n");
printf("      \\small\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          f(x)&=-x^{2}-16x-48\n");
printf("          \\\\\n");
printf("          &=-\\left(x^2+16x+48\\right)\n");
printf("          \\\\\n");
printf("          &=-\\left(x^2+16x+64-64+48\\right)\n");
printf("          \\\\\n");
printf("          &=-\\left((x+8)^2-16\\right)\n");
printf("          \\\\\n");
printf("          &=-(x+8)^2+16\n");
printf("          \\\\[1ex]\n");
printf("          \\Rightarrow\\quad&S\\left(-8\\;\\middle|\\;16\\right)\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    \\end{minipage}%%\n");
printf("    \\hfill\n");
printf("    \\begin{minipage}[t]{0.49\\linewidth}\n");
printf("      Nullstellen d)\n");
printf("      \\small\n");
printf("      %%<OCTAVE>\n");
printf("      \\begingroup\n");
printf("        \\newcommand{\\vstrut}{\\vphantom{\\left(f_0^0\\right)}}%%\n");
printf("        \\newcommand{\\noeq}{\\phantom{\\Leftrightarrow}\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\iseq}{\\Leftrightarrow\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\impl}{\\Rightarrow\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\nomod}{\\quad&\\phantom{|}}%%\n");
printf("        \\newcommand{\\domod}[1]{\\quad&|#1}%%\n");
printf("        \\begin{alignat*}{3}\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          \\num{0}&=-x^{2}-\\num{16}x-\\num{48}\n");
printf("          &\n");
printf("          \\domod{:(-\\num{1})}\n");
printf("          \\\\\n");
printf("          \\iseq\n");
printf("          &\n");
printf("          \\num{0}&=x^{2}+\\num{16}x+\\num{48}\n");
printf("          &\n");
printf("          \\domod{\\;\\text{$pq$-Formel}}\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          p&=\\num{16}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          q&=\\num{48}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_{1,2}&=-\\frac{p}{2}\\pm\\sqrt{\\left(\\frac{p}{2}\\right)^2-q}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=-\\num{8}\\pm\\sqrt{\\num{8}^2-\\num{48}}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=-\\num{8}\\pm\\sqrt{\\num{16}}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=-\\num{8}\\pm\\num{4}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_1&=-\\num{12}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_2&=-\\num{4}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("        \\end{alignat*}\n");
printf("      \\endgroup\n");
printf("      %%</OCTAVE>\n");
printf("      %%myqsolve(-1, -16, -48, 0, \"x\");\n");
printf("    \\end{minipage}\\bigskip\\par\n");
printf("    \\begin{minipage}[t]{0.49\\linewidth}\n");
printf("      Scheitelpunkt e)\n");
printf("      \\small\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          f(x)&=4x^2-16x-20\n");
printf("          \\\\\n");
printf("          &=4\\left(x^2-4x-5\\right)\n");
printf("          \\\\\n");
printf("          &=4\\left(x^2-4x+4-4-5\\right)\n");
printf("          \\\\\n");
printf("          &=4\\left((x-2)^2-9\\right)\n");
printf("          \\\\\n");
printf("          &=4(x-2)^2-36\n");
printf("          \\\\[1ex]\n");
printf("          \\Rightarrow\\quad&S\\left(2\\;\\middle|\\;-36\\right)\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    \\end{minipage}%%\n");
printf("    \\hfill\n");
printf("    \\begin{minipage}[t]{0.49\\linewidth}\n");
printf("      Nullstellen e)\n");
printf("      \\small\n");
printf("      %%<OCTAVE>\n");
printf("      \\begingroup\n");
printf("        \\newcommand{\\vstrut}{\\vphantom{\\left(f_0^0\\right)}}%%\n");
printf("        \\newcommand{\\noeq}{\\phantom{\\Leftrightarrow}\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\iseq}{\\Leftrightarrow\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\impl}{\\Rightarrow\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\nomod}{\\quad&\\phantom{|}}%%\n");
printf("        \\newcommand{\\domod}[1]{\\quad&|#1}%%\n");
printf("        \\begin{alignat*}{3}\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          \\num{0}&=\\num{4}x^{2}-\\num{16}x-\\num{20}\n");
printf("          &\n");
printf("          \\domod{:\\num{4}}\n");
printf("          \\\\\n");
printf("          \\iseq\n");
printf("          &\n");
printf("          \\num{0}&=x^{2}-\\num{4}x-\\num{5}\n");
printf("          &\n");
printf("          \\domod{\\;\\text{$pq$-Formel}}\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          p&=-\\num{4}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          q&=-\\num{5}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_{1,2}&=-\\frac{p}{2}\\pm\\sqrt{\\left(\\frac{p}{2}\\right)^2-q}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=\\num{2}\\pm\\sqrt{\\left(-\\num{2}\\right)^2-\\left(-\\num{5}\\right)}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=\\num{2}\\pm\\sqrt{\\num{9}}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=\\num{2}\\pm\\num{3}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_1&=-\\num{1}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_2&=\\num{5}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("        \\end{alignat*}\n");
printf("      \\endgroup\n");
printf("      %%</OCTAVE>\n");
printf("      %%myqsolve(4, -16, -20, 0, \"x\");\n");
printf("    \\end{minipage}\\bigskip\\par\n");
printf("    \\begin{minipage}[t]{0.49\\linewidth}\n");
printf("      Scheitelpunkt f)\n");
printf("      \\small\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          f(x)&=-3x^2+12x+36\n");
printf("          \\\\\n");
printf("          &=-3\\left(x^2-4x-12\\right)\n");
printf("          \\\\\n");
printf("          &=-3\\left(x^2-4x+4-4-12\\right)\n");
printf("          \\\\\n");
printf("          &=-3\\left((x-2)^2-16\\right)\n");
printf("          \\\\\n");
printf("          &=-3(x-2)^2+48\n");
printf("          \\\\[1ex]\n");
printf("          \\Rightarrow\\quad&S\\left(2\\;\\middle|\\;48\\right)\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    \\end{minipage}%%\n");
printf("    \\hfill\n");
printf("    \\begin{minipage}[t]{0.49\\linewidth}\n");
printf("      Nullstellen f)\n");
printf("      \\small\n");
printf("      %%<OCTAVE>\n");
printf("      \\begingroup\n");
printf("        \\newcommand{\\vstrut}{\\vphantom{\\left(f_0^0\\right)}}%%\n");
printf("        \\newcommand{\\noeq}{\\phantom{\\Leftrightarrow}\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\iseq}{\\Leftrightarrow\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\impl}{\\Rightarrow\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\nomod}{\\quad&\\phantom{|}}%%\n");
printf("        \\newcommand{\\domod}[1]{\\quad&|#1}%%\n");
printf("        \\begin{alignat*}{3}\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          \\num{0}&=-\\num{3}x^{2}+\\num{12}x+\\num{36}\n");
printf("          &\n");
printf("          \\domod{:(-\\num{3})}\n");
printf("          \\\\\n");
printf("          \\iseq\n");
printf("          &\n");
printf("          \\num{0}&=x^{2}-\\num{4}x-\\num{12}\n");
printf("          &\n");
printf("          \\domod{\\;\\text{$pq$-Formel}}\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          p&=-\\num{4}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          q&=-\\num{12}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_{1,2}&=-\\frac{p}{2}\\pm\\sqrt{\\left(\\frac{p}{2}\\right)^2-q}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=\\num{2}\\pm\\sqrt{\\left(-\\num{2}\\right)^2-\\left(-\\num{12}\\right)}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=\\num{2}\\pm\\sqrt{\\num{16}}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=\\num{2}\\pm\\num{4}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_1&=-\\num{2}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_2&=\\num{6}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("        \\end{alignat*}\n");
printf("      \\endgroup\n");
printf("      %%</OCTAVE>\n");
printf("      %%myqsolve(-3, 12, 36, 0, \"x\");\n");
printf("    \\end{minipage}\\bigskip\\par\n");
printf("    \\begin{minipage}[t]{0.49\\linewidth}\n");
printf("      Scheitelpunkt g)\n");
printf("      \\small\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          f(x)&=x^2-7x+12\n");
printf("          \\\\\n");
printf("          &=x^2-7x+\\left(\\frac{7}{2}\\right)^2-\\left(\\frac{7}{2}\\right)^2+12\n");
printf("          \\\\\n");
printf("          &=\\left(x^2-\\frac{7}{2}\\right)^2-\\frac{49}{4}+\\frac{48}{4}\n");
printf("          \\\\\n");
printf("          &=\\left(x^2-\\frac{7}{2}\\right)^2-\\frac{1}{4}\n");
printf("          \\\\[1ex]\n");
printf("          \\Rightarrow\\quad&S\\left(\\frac{7}{2}\\;\\middle|\\;-\\frac{1}{4}\\right)\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    \\end{minipage}%%\n");
printf("    \\hfill\n");
printf("    \\begin{minipage}[t]{0.49\\linewidth}\n");
printf("      Nullstellen g)\n");
printf("      \\small\n");
printf("      %%<OCTAVE>\n");
printf("      \\begingroup\n");
printf("        \\newcommand{\\vstrut}{\\vphantom{\\left(f_0^0\\right)}}%%\n");
printf("        \\newcommand{\\noeq}{\\phantom{\\Leftrightarrow}\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\iseq}{\\Leftrightarrow\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\impl}{\\Rightarrow\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\nomod}{\\quad&\\phantom{|}}%%\n");
printf("        \\newcommand{\\domod}[1]{\\quad&|#1}%%\n");
printf("        \\begin{alignat*}{3}\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          \\num{0}&=x^{2}-\\num{7}x+\\num{12}\n");
printf("          &\n");
printf("          \\domod{\\;\\text{$pq$-Formel}}\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          p&=-\\num{7}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          q&=\\num{12}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_{1,2}&=-\\frac{p}{2}\\pm\\sqrt{\\left(\\frac{p}{2}\\right)^2-q}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=\\frac{\\num{7}}{\\num{2}}\\pm\\sqrt{\\left(-\\frac{\\num{7}}{\\num{2}}\\right)^2-\\num{12}}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=\\frac{\\num{7}}{\\num{2}}\\pm\\sqrt{\\frac{\\num{1}}{\\num{4}}}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=\\frac{\\num{7}}{\\num{2}}\\pm\\frac{\\num{1}}{\\num{2}}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_1&=\\num{3}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_2&=\\num{4}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("        \\end{alignat*}\n");
printf("      \\endgroup\n");
printf("      %%</OCTAVE>\n");
printf("      %%myqsolve(1, -7, 12, 0, \"x\");\n");
printf("    \\end{minipage}\\bigskip\\par\n");
printf("    \\begin{minipage}[t]{0.49\\linewidth}\n");
printf("      Scheitelpunkt h)\n");
printf("      \\small\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          f(x)&=-\\frac{9}{4}x^2+6x-3\n");
printf("          \\\\[1ex]\n");
printf("          &=-\\frac{9}{4}\\left(x^2-\\frac{8}{3}x+\\frac{4}{3}\\right)\n");
printf("          \\\\[1ex]\n");
printf("          &=-\\frac{9}{4}\\left(x^2-\\frac{8}{3}x+\\frac{16}{9}-\\frac{16}{9}+\\frac{4}{3}\\right)\n");
printf("          \\\\[1ex]\n");
printf("          &=-\\frac{9}{4}\\left(\\left(x-\\frac{4}{3}\\right)^2-\\frac{4}{9}\\right)\n");
printf("          \\\\[1ex]\n");
printf("          &=-\\frac{9}{4}\\left(x-\\frac{4}{3}\\right)^2+1\n");
printf("          \\\\[2ex]\n");
printf("          \\Rightarrow\\quad&S\\left(\\frac{4}{3}\\;\\middle|\\;1\\right)\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("      %%polyval([-9/4 6 -3], 4/3)\n");
printf("    \\end{minipage}%%\n");
printf("    \\hfill\n");
printf("    \\begin{minipage}[t]{0.49\\linewidth}\n");
printf("      Nullstellen h)\n");
printf("      \\small\n");
printf("      %%<OCTAVE>\n");
printf("      \\begingroup\n");
printf("        \\newcommand{\\vstrut}{\\vphantom{\\left(f_0^0\\right)}}%%\n");
printf("        \\newcommand{\\noeq}{\\phantom{\\Leftrightarrow}\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\iseq}{\\Leftrightarrow\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\impl}{\\Rightarrow\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\nomod}{\\quad&\\phantom{|}}%%\n");
printf("        \\newcommand{\\domod}[1]{\\quad&|#1}%%\n");
printf("        \\begin{alignat*}{3}\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          \\num{0}&=-\\frac{\\num{9}}{\\num{4}}x^{2}+\\num{6}x-\\num{3}\n");
printf("          &\n");
printf("          \\domod{:\\left(-\\frac{\\num{9}}{\\num{4}}\\right)}\n");
printf("          \\\\\n");
printf("          \\iseq\n");
printf("          &\n");
printf("          \\num{0}&=x^{2}-\\frac{\\num{8}}{\\num{3}}x+\\frac{\\num{4}}{\\num{3}}\n");
printf("          &\n");
printf("          \\domod{\\;\\text{$pq$-Formel}}\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          p&=-\\frac{\\num{8}}{\\num{3}}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          q&=\\frac{\\num{4}}{\\num{3}}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_{1,2}&=-\\frac{p}{2}\\pm\\sqrt{\\left(\\frac{p}{2}\\right)^2-q}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=\\frac{\\num{4}}{\\num{3}}\\pm\\sqrt{\\left(-\\frac{\\num{4}}{\\num{3}}\\right)^2-\\frac{\\num{4}}{\\num{3}}}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=\\frac{\\num{4}}{\\num{3}}\\pm\\sqrt{\\frac{\\num{4}}{\\num{9}}}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=\\frac{\\num{4}}{\\num{3}}\\pm\\frac{\\num{2}}{\\num{3}}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_1&=\\frac{\\num{2}}{\\num{3}}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_2&=\\num{2}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("        \\end{alignat*}\n");
printf("      \\endgroup\n");
printf("      %%</OCTAVE>\n");
printf("      %%myqsolve(-9/4, 6, -3, 0, \"x\");\n");
printf("    \\end{minipage}\\bigskip\\par\n");
printf("    \\begin{minipage}[t]{0.49\\linewidth}\n");
printf("      Scheitelpunkt i)\n");
printf("      \\small\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          f(x)&=\\frac{1}{2}x^2+\\frac{3}{4}x+\\frac{1}{4}\n");
printf("          \\\\[1ex]\n");
printf("          &=\\frac{1}{2}\\left(x^2+\\frac{3}{2}x+\\frac{1}{2}\\right)\n");
printf("          \\\\[1ex]\n");
printf("          &=\\frac{1}{2}\\left(x^2+\\frac{3}{2}x+\\frac{9}{16}-\\frac{9}{16}+\\frac{1}{2}\\right)\n");
printf("          \\\\[1ex]\n");
printf("          &=\\frac{1}{2}\\left(\\left(x+\\frac{3}{4}\\right)^2-\\frac{1}{16}\\right)\n");
printf("          \\\\[1ex]\n");
printf("          &=\\frac{1}{2}\\left(x+\\frac{3}{4}\\right)^2-\\frac{1}{32}\n");
printf("          \\\\[2ex]\n");
printf("          \\Rightarrow\\quad&S\\left(-\\frac{3}{4}\\;\\middle|\\;-\\frac{1}{32}\\right)\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("      %%rats(polyval([1/2 3/4 1/4], -3/4))\n");
printf("    \\end{minipage}%%\n");
printf("    \\hfill\n");
printf("    \\begin{minipage}[t]{0.49\\linewidth}\n");
printf("      Nullstellen i)\n");
printf("      \\small\n");
printf("      %%<OCTAVE>\n");
printf("      \\begingroup\n");
printf("        \\newcommand{\\vstrut}{\\vphantom{\\left(f_0^0\\right)}}%%\n");
printf("        \\newcommand{\\noeq}{\\phantom{\\Leftrightarrow}\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\iseq}{\\Leftrightarrow\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\impl}{\\Rightarrow\\vstrut&\\quad}%%\n");
printf("        \\newcommand{\\nomod}{\\quad&\\phantom{|}}%%\n");
printf("        \\newcommand{\\domod}[1]{\\quad&|#1}%%\n");
printf("        \\begin{alignat*}{3}\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          \\num{0}&=\\frac{\\num{1}}{\\num{2}}x^{2}+\\frac{\\num{3}}{\\num{4}}x+\\frac{\\num{1}}{\\num{4}}\n");
printf("          &\n");
printf("          \\domod{:\\frac{\\num{1}}{\\num{2}}}\n");
printf("          \\\\\n");
printf("          \\iseq\n");
printf("          &\n");
printf("          \\num{0}&=x^{2}+\\frac{\\num{3}}{\\num{2}}x+\\frac{\\num{1}}{\\num{2}}\n");
printf("          &\n");
printf("          \\domod{\\;\\text{$pq$-Formel}}\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          p&=\\frac{\\num{3}}{\\num{2}}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          q&=\\frac{\\num{1}}{\\num{2}}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_{1,2}&=-\\frac{p}{2}\\pm\\sqrt{\\left(\\frac{p}{2}\\right)^2-q}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=-\\frac{\\num{3}}{\\num{4}}\\pm\\sqrt{\\left(\\frac{\\num{3}}{\\num{4}}\\right)^2-\\frac{\\num{1}}{\\num{2}}}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=-\\frac{\\num{3}}{\\num{4}}\\pm\\sqrt{\\frac{\\num{1}}{\\num{16}}}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          &=-\\frac{\\num{3}}{\\num{4}}\\pm\\frac{\\num{1}}{\\num{4}}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_1&=-\\num{1}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("          \\\\\n");
printf("          \\noeq\n");
printf("          &\n");
printf("          x_2&=-\\frac{\\num{1}}{\\num{2}}\n");
printf("          &\n");
printf("          \\nomod\n");
printf("        \\end{alignat*}\n");
printf("      \\endgroup\n");
printf("      %%</OCTAVE>\n");
printf("      %%myqsolve(1/2, 3/4, 1/4, 0, \"x\");\n");
printf("    \\end{minipage}%%\n");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

