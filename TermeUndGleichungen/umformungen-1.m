clear all;

printf("\\begin{exercise}\n");
printf("      {ID-ca7302a2b1fe1b6f69c1b3caca7475f8bf6868f1}\n");
printf("      {Umformungen 1}\n");
printf("  \\newcommand{\\gap}{\\;\\;}%%\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Löse die Klammern auf, und fasse so weit wie möglich zusammen:\n");
printf("    \\begin{align*}\n");
printf("      \\text{a)}\\gap & 3a+(2b-c)-(2a+3c-b) &\n");
printf("      \\text{e)}\\gap & 2a^2+3a-(a+5)-(1-3a^2)\n");
printf("      \\\\\n");
printf("      \\text{b)}\\gap & 2x+5y-(y-3x+2)+(x-8) &\n");
printf("      \\text{f)}\\gap & y^3-6y+(2y^2+3y-4)-(y^3-5)\n");
printf("      \\\\\n");
printf("      \\text{c)}\\gap & 3a-8b+(11a+4)-(5b-a+3) &\n");
printf("      \\text{g)}\\gap & 3x^2+y^2-(x^2-xy-y^2)+(5y^2-5xy)\n");
printf("      \\\\\n");
printf("      \\text{d)}\\gap & 9+3e-5f-(e+f-1)+(7-4e) &\n");
printf("      \\text{h)}\\gap & 3ab+6+(a^2-2ab-5)-(4b^2-a^2+1)\n");
printf("    \\end{align*}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    %% first line with a fix width\n");
printf("    \\newcommand{\\toprow}[1]\n");
printf("    {%%\n");
printf("      \\makebox[20em][l]\n");
printf("      {%%\n");
printf("        \\ensuremath\n");
printf("        {%%\n");
printf("          \\displaystyle\n");
printf("          \\phantom{\\,=\\:\\,}%%\n");
printf("          #1%%\n");
printf("        }%%\n");
printf("      }%%\n");
printf("    }%%\n");
printf("    %% solition of exercise a)\n");
printf("    \\newcommand{\\solutionA}\n");
printf("    {%%\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          \\text{a)} &\\toprow{3a+(2b-c)-(2a+3c-b)} \\\\\n");
printf("                    &=       3a+2b-c-2a-3c+b      \\\\\n");
printf("                    &=       a+3b-4c\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    }%%\n");
printf("    %% solition of exercise b)\n");
printf("    \\newcommand{\\solutionB}\n");
printf("    {%%\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          \\text{b)} &\\toprow{2x+5y-(y-3x+2)+(x-8)} \\\\\n");
printf("                    &=       2x+5y-y+3x-2+x-8      \\\\\n");
printf("                    &=       6x+4y-10\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    }%%\n");
printf("    %% solition of exercise c)\n");
printf("    \\newcommand{\\solutionC}\n");
printf("    {%%\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          \\text{c)} &\\toprow{3a-8b+(11a+4)-(5b-a+3)} \\\\\n");
printf("                    &=     3a-8b+11a+4-5b+a-3        \\\\\n");
printf("                    &=     15a-13b+1\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    }%%\n");
printf("    %% solition of exercise d)\n");
printf("    \\newcommand{\\solutionD}\n");
printf("    {%%\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          \\text{d)} &\\toprow{9+3e-5f-(e+f-1)+(7-4e)} \\\\\n");
printf("                    &=     9+3e-5f-e-f+1+7-4e        \\\\\n");
printf("                    &=     -2e-6f+17\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    }%%\n");
printf("    %% solition of exercise e)\n");
printf("    \\newcommand{\\solutionE}\n");
printf("    {%%\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          \\text{e)} &\\toprow{2a^2+3a-(a+5)-(1-3a^2)} \\\\\n");
printf("                    &=     2a^2+3a-a-5-1+3a^2        \\\\\n");
printf("                    &=     5a^2+2a-6\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    }%%\n");
printf("    %% solition of exercise f)\n");
printf("    \\newcommand{\\solutionF}\n");
printf("    {%%\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          \\text{f)} &\\toprow{y^3-6y+(2y^2+3y-4)-(y^3-5)} \\\\\n");
printf("                    &=       y^3-6y+2y^2+3y-4-y^3+5      \\\\\n");
printf("                    &=       2y^2-3y+1\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    }%%\n");
printf("    %% solition of exercise g)\n");
printf("    \\newcommand{\\solutionG}\n");
printf("    {%%\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          \\text{g)} &\\toprow{3x^2+y^2-(x^2-xy-y^2)+(5y^2-5xy)} \\\\\n");
printf("                    &=       3x^2+y^2-x^2+xy+y^2+5y^2-5xy      \\\\\n");
printf("                    &=       2x^2+7y^2-4xy\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    }%%\n");
printf("    %% solition of exercise h)\n");
printf("    \\newcommand{\\solutionH}\n");
printf("    {%%\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          \\text{h)} &\\toprow{3ab+6+(a^2-2ab-5)-(4b^2-a^2+1)} \\\\\n");
printf("                    &=       3ab+6+a^2-2ab-5-4b^2+a^2-1      \\\\\n");
printf("                    &=       a^2+a^2-4b^2+3ab-2ab+6-5-1      \\\\\n");
printf("                    &=       2a^2-4b^2+ab\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    }%%\n");
printf("\n");
printf("    \\begin{minipage}[t]{0.49\\textwidth}\n");
printf("      \\small\n");
printf("      \\solutionA\n");
printf("    \\end{minipage}%%\n");
printf("    \\hfill\n");
printf("    \\begin{minipage}[t]{0.49\\textwidth}\n");
printf("      \\small\n");
printf("      \\solutionE\n");
printf("    \\end{minipage}%%\n");
printf("\n");
printf("    \\begin{minipage}[t]{0.49\\textwidth}\n");
printf("      \\small\n");
printf("      \\solutionB\n");
printf("    \\end{minipage}%%\n");
printf("    \\hfill\n");
printf("    \\begin{minipage}[t]{0.49\\textwidth}\n");
printf("      \\small\n");
printf("      \\solutionF\n");
printf("    \\end{minipage}%%\n");
printf("\n");
printf("    \\begin{minipage}[t]{0.49\\textwidth}\n");
printf("      \\small\n");
printf("      \\solutionC\n");
printf("    \\end{minipage}%%\n");
printf("    \\hfill\n");
printf("    \\begin{minipage}[t]{0.49\\textwidth}\n");
printf("      \\small\n");
printf("      \\solutionG\n");
printf("    \\end{minipage}%%\n");
printf("\n");
printf("    \\begin{minipage}[t]{0.49\\textwidth}\n");
printf("      \\small\n");
printf("      \\solutionD\n");
printf("    \\end{minipage}%%\n");
printf("    \\hfill\n");
printf("    \\begin{minipage}[t]{0.49\\textwidth}\n");
printf("      \\small\n");
printf("      \\solutionH\n");
printf("    \\end{minipage}%%\n");
printf("\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

