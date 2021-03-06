clear all;

printf("\\begin{exercise}\n");
printf("      {ID-abfd66a192d68d728a678c6790234515bbfa2cc9}\n");
printf("      {Umformungen 2}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    \\newcommand{\\gap}{\\;\\;}%%\n");
printf("    Löse die Klammern auf, und fasse so weit wie möglich zusammen:\n");
printf("    \\allowdisplaybreaks\n");
printf("    \\begin{equation*}\n");
printf("      \\begin{split}\n");
printf("        \\text{a)}\\gap & 2(2a+3b)+3(3a-2b) \\\\\n");
printf("        \\text{b)}\\gap & 6(a-2b)-2(a-5b) \\\\\n");
printf("        \\text{c)}\\gap & 5(3a+2b-2)+3(10-a)-5(b-a) \\\\\n");
printf("        \\text{d)}\\gap & -4(2b-c+3a)-3(a+3b-2c) \\\\\n");
printf("        \\text{e)}\\gap & 3a(a+4b)+2b(6b-5a) \\\\\n");
printf("        \\text{f)}\\gap & 4m(3n+5)-7n(m+8) \\\\\n");
printf("        \\text{g)}\\gap & 2e(e^2-2ef)+f^2(5e-2)-6f(-e^2+3ef) \\\\\n");
printf("        \\text{h)}\\gap & -5u(2u^2-uv+3v^2)+4v(-u^2+3uv-7v^2) \\\\\n");
printf("        \\text{i)}\\gap & x^2(x-2)+x(2x+1) \\\\\n");
printf("        \\text{j)}\\gap & 2x^2(x^2+2x-1)-3x(x^2-x+2) \\\\\n");
printf("        \\text{k)}\\gap & 4y(y^2-2)+3y^2(2y+1)-5(3-y^2) \\\\\n");
printf("        \\text{l)}\\gap & 3(z^2-4+2z)+5z(2z-1)-z^2(7-z)\n");
printf("      \\end{split}\n");
printf("    \\end{equation*}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    %% first line with a fix width\n");
printf("    \\newcommand{\\toprow}[2][20em]\n");
printf("    {%%\n");
printf("      \\makebox[#1][l]\n");
printf("      {%%\n");
printf("        \\ensuremath\n");
printf("        {%%\n");
printf("          \\displaystyle\n");
printf("          \\phantom{\\,=\\:\\,}%%\n");
printf("          #2%%\n");
printf("        }%%\n");
printf("      }%%\n");
printf("    }%%\n");
printf("    %% solition of exercise a)\n");
printf("    \\newcommand{\\solutionA}[1]\n");
printf("    {%%\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          \\text{a)} &\\toprow[#1]{2(2a+3b)+3(3a-2b)} \\\\\n");
printf("                    &=           4a+6b+9a-6b        \\\\\n");
printf("                    &=           4a+9a+6b-6b        \\\\\n");
printf("                    &=           13a\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    }%%\n");
printf("    %% solition of exercise b)\n");
printf("    \\newcommand{\\solutionB}[1]\n");
printf("    {%%\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          \\text{b)} &\\toprow[#1]{6(a-2b)-2(a-5b)} \\\\\n");
printf("                    &=           6a-12b-2a+10b    \\\\\n");
printf("                    &=           6a-2a-12b+10b    \\\\\n");
printf("                    &=           4a-2b\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    }%%\n");
printf("    %% solition of exercise c)\n");
printf("    \\newcommand{\\solutionC}[1]\n");
printf("    {%%\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          \\text{c)} &\\toprow[#1]{5(3a+2b-2)+3(10-a)-5(b-a)} \\\\\n");
printf("                    &=           15a+10b-10+30-3a-5b+5a     \\\\\n");
printf("                    &=           15a-3a+5a+10b-5b-10+30     \\\\\n");
printf("                    &=           17a+5b+20\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    }%%\n");
printf("    %% solition of exercise d)\n");
printf("    \\newcommand{\\solutionD}[1]\n");
printf("    {%%\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          \\text{d)} &\\toprow[#1]{-4(2b-c+3a)-3(a+3b-2c)} \\\\\n");
printf("                    &=           -8b+4c-12a-3a-9b+6c     \\\\\n");
printf("                    &=           -12a-3a-8b-9b+4c+6c     \\\\\n");
printf("                    &=           -15a-17b+10c\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    }%%\n");
printf("    %% solition of exercise e)\n");
printf("    \\newcommand{\\solutionE}[1]\n");
printf("    {%%\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          \\text{e)} &\\toprow[#1]{3a(a+4b)+2b(6b-5a)}  \\\\\n");
printf("                    &=           3a^2+12ab+12b^2-10ab \\\\\n");
printf("                    &=           3a^2+12ab-10ab+12b^2 \\\\\n");
printf("                    &=           3a^2+2ab+12b^2\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    }%%\n");
printf("    %% solition of exercise f)\n");
printf("    \\newcommand{\\solutionF}[1]\n");
printf("    {%%\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          \\text{f)} &\\toprow[#1]{4m(3n+5)-7n(m+8)} \\\\\n");
printf("                    &=           12mn+20m-7mn-56n  \\\\\n");
printf("                    &=           20m+12mn-7mn-56n  \\\\\n");
printf("                    &=           20m+5mn-56n\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    }%%\n");
printf("    %% solition of exercise g)\n");
printf("    \\newcommand{\\solutionG}[1]\n");
printf("    {%%\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          \\text{g)} &\\toprow[#1]{2e(e^2-2ef)+f^2(5e-2)-6f(-e^2+3ef)} \\\\\n");
printf("                    &=           2e^3-4e^2f+5ef^2-2f^2+6e^2f-18ef^2  \\\\\n");
printf("                    &=           2e^3-4e^2f+6e^2f+5ef^2-18ef^2-2f^2  \\\\\n");
printf("                    &=           2e^3+2e^2f-13ef^2-2f^2\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    }%%\n");
printf("    %% solition of exercise h)\n");
printf("    \\newcommand{\\solutionH}[1]\n");
printf("    {%%\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          \\text{h)} &\\toprow[#1]{-5u(2u^2-uv+3v^2)+4v(-u^2+3uv-7v^2)}   \\\\\n");
printf("                    &=           -10u^3+5u^2v-15uv^2-4u^2v+12uv^2-28v^3 \\\\\n");
printf("                    &=           -10u^3+5u^2v-4u^2v-15uv^2+12uv^2-28v^3 \\\\\n");
printf("                    &=           -10u^3+u^2v-3uv^2-28v^3\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    }%%\n");
printf("    %% solition of exercise i)\n");
printf("    \\newcommand{\\solutionI}[1]\n");
printf("    {%%\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          \\text{i)} &\\toprow[#1]{x^2(x-2)+x(2x+1)} \\\\\n");
printf("                    &=           x^3-2x^2+2x^2+x   \\\\\n");
printf("                    &=           x^3+x\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    }%%\n");
printf("    %% solition of exercise j)\n");
printf("    \\newcommand{\\solutionJ}[1]\n");
printf("    {%%\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          \\text{j)} &\\toprow[#1]{2x^2(x^2+2x-1)-3x(x^2-x+2)} \\\\\n");
printf("                    &=           2x^4+4x^3-2x^2-3x^3+3x^2-6x \\\\\n");
printf("                    &=           2x^4+4x^3-3x^3-2x^2+3x^2-6x \\\\\n");
printf("                    &=           2x^4+x^3+x^2-6x\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    }%%\n");
printf("    %% solition of exercise k)\n");
printf("    \\newcommand{\\solutionK}[1]\n");
printf("    {%%\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          \\text{k)} &\\toprow[#1]{4y(y^2-2)+3y^2(2y+1)-5(3-y^2)} \\\\\n");
printf("                    &=           4y^3-8y+6y^3+3y^2-15+5y^2      \\\\\n");
printf("                    &=           4y^3+6y^3+3y^2+5y^2-8y-15      \\\\\n");
printf("                    &=           10y^3+8y^2-8y-15\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    }%%\n");
printf("    %% solition of exercise l)\n");
printf("    \\newcommand{\\solutionL}[1]\n");
printf("    {%%\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          \\text{l)} &\\toprow[#1]{3(z^2-4+2z)+5z(2z-1)-z^2(7-z)} \\\\\n");
printf("                    &=           3z^2-12+6z+10z^2-5z-7z^2+z^3  \\\\\n");
printf("                    &=           z^3+3z^2+10z^2-7z^2+6z-5z-12  \\\\\n");
printf("                    &=           z^3+6z^2+z-12\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    }%%\n");
printf("\n");
printf("    \\begin{minipage}[t]{0.44\\textwidth}\n");
printf("      \\small\n");
printf("      \\solutionA{18em}\n");
printf("    \\end{minipage}%%\n");
printf("    \\hfill\n");
printf("    \\begin{minipage}[t]{0.55\\textwidth}\n");
printf("      \\small\n");
printf("      \\solutionG{22em}\n");
printf("    \\end{minipage}%%\n");
printf("\n");
printf("    \\begin{minipage}[t]{0.44\\textwidth}\n");
printf("      \\small\n");
printf("      \\solutionB{18em}\n");
printf("    \\end{minipage}%%\n");
printf("    \\hfill\n");
printf("    \\begin{minipage}[t]{0.55\\textwidth}\n");
printf("      \\small\n");
printf("      \\solutionH{22em}\n");
printf("    \\end{minipage}%%\n");
printf("\n");
printf("    \\begin{minipage}[t]{0.44\\textwidth}\n");
printf("      \\small\n");
printf("      \\solutionC{18em}\n");
printf("    \\end{minipage}%%\n");
printf("    \\hfill\n");
printf("    \\begin{minipage}[t]{0.55\\textwidth}\n");
printf("      \\small\n");
printf("      \\solutionI{22em}\n");
printf("    \\end{minipage}%%\n");
printf("\n");
printf("    \\begin{minipage}[t]{0.44\\textwidth}\n");
printf("      \\small\n");
printf("      \\solutionD{18em}\n");
printf("    \\end{minipage}%%\n");
printf("    \\hfill\n");
printf("    \\begin{minipage}[t]{0.55\\textwidth}\n");
printf("      \\small\n");
printf("      \\solutionJ{22em}\n");
printf("    \\end{minipage}%%\n");
printf("\n");
printf("    \\begin{minipage}[t]{0.44\\textwidth}\n");
printf("      \\small\n");
printf("      \\solutionE{18em}\n");
printf("    \\end{minipage}%%\n");
printf("    \\hfill\n");
printf("    \\begin{minipage}[t]{0.55\\textwidth}\n");
printf("      \\small\n");
printf("      \\solutionK{22em}\n");
printf("    \\end{minipage}%%\n");
printf("\n");
printf("    \\begin{minipage}[t]{0.44\\textwidth}\n");
printf("      \\small\n");
printf("      \\solutionF{18em}\n");
printf("    \\end{minipage}%%\n");
printf("    \\hfill\n");
printf("    \\begin{minipage}[t]{0.55\\textwidth}\n");
printf("      \\small\n");
printf("      \\solutionL{22em}\n");
printf("    \\end{minipage}%%\n");
printf("\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

