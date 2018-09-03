clear all;

printf("\\begin{exercise}\n");
printf("      {ID-2ea00322894fadba5205ff7080424df775be413a}\n");
printf("      {Umformungen 5}\n");
printf("  \\ifproblem\\problem\n");
printf("    \\newcommand{\\gap}{\\;\\;}%%\n");
printf("    Verwende die binomischen Formeln, um die Klammern aufzulösen:\n");
printf("    \\begin{align*}\n");
printf("      \\text{a)}\\gap & (z+8)^2 &\n");
printf("      \\text{i)}\\gap & (5p-q)^2\n");
printf("      \\\\\n");
printf("      \\text{b)}\\gap & (3a+1)^2 &\n");
printf("      \\text{j)}\\gap & (3e-2f)^2\n");
printf("      \\\\\n");
printf("      \\text{c)}\\gap & (4k+3)^2 &\n");
printf("      \\text{k)}\\gap & (6-5z)^2\n");
printf("      \\\\\n");
printf("      \\text{d)}\\gap & (5b+3c)^2 &\n");
printf("      \\text{l)}\\gap & (10ab-2a)^2\n");
printf("      \\\\\n");
printf("      \\text{e)}\\gap & (7x+2y)^2 &\n");
printf("      \\text{m)}\\gap & (3a+5)(3a-5)\n");
printf("      \\\\\n");
printf("      \\text{f)}\\gap & (x^2+4)^2 &\n");
printf("      \\text{n)}\\gap & (10x-3z)(10x+3z)\n");
printf("      \\\\\n");
printf("      \\text{g)}\\gap & (a-11)^2 &\n");
printf("      \\text{o)}\\gap & (r^2+1)(r^2-1)\n");
printf("      \\\\\n");
printf("      \\text{h)}\\gap & (2x-5)^2 &\n");
printf("      \\text{p)}\\gap & (7-x)(7+x)\n");
printf("    \\end{align*}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
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
printf("\n");
printf("    \\newcommand{\\solutionA} { \\text{a)}&\\quad          (z+8)^2=z^2+16z+256           }\n");
printf("    \\newcommand{\\solutionB} { \\text{b)}&\\quad         (3a+1)^2=9a^2+6a+1             }\n");
printf("    \\newcommand{\\solutionC} { \\text{c)}&\\quad         (4k+3)^2=16k^2+24k+9           }\n");
printf("    \\newcommand{\\solutionD} { \\text{d)}&\\quad        (5b+3c)^2=25b^2+30bc+9c^2       }\n");
printf("    \\newcommand{\\solutionE} { \\text{e)}&\\quad        (7x+2y)^2=49x^2+28xy+4y^2       }\n");
printf("    \\newcommand{\\solutionF} { \\text{f)}&\\quad        (x^2+4)^2=x^4+8x^2+16           }\n");
printf("    \\newcommand{\\solutionG} { \\text{g)}&\\quad         (a-11)^2=a^2-22a+121           }\n");
printf("    \\newcommand{\\solutionH} { \\text{h)}&\\quad         (2x-5)^2=4x^2-20x+25           }\n");
printf("    \\newcommand{\\solutionI} { \\text{i)}&\\quad         (5p-q)^2=25p^2-10pq+q^2        }\n");
printf("    \\newcommand{\\solutionJ} { \\text{j)}&\\quad        (3e-2f)^2=9e^2-12ef+4f^2        }\n");
printf("    \\newcommand{\\solutionK} { \\text{k)}&\\quad         (6-5z)^2=36-60z+25z^2          }\n");
printf("    \\newcommand{\\solutionL} { \\text{l)}&\\quad      (10ab-2a)^2=100a^2b^2-40a^2b+4a^2 }\n");
printf("    \\newcommand{\\solutionM} { \\text{m)}&\\quad     (3a+5)(3a-5)=9a^2-25               }\n");
printf("    \\newcommand{\\solutionN} { \\text{n)}&\\quad (10x-3z)(10x+3z)=100x^2-9z^2           }\n");
printf("    \\newcommand{\\solutionO} { \\text{o)}&\\quad   (r^2+1)(r^2-1)=r^4-1                 }\n");
printf("    \\newcommand{\\solutionP} { \\text{p)}&\\quad       (7-x)(7+x)=49-x^2                }\n");
printf("\n");
printf("    {\\small\n");
printf("    \\begin{alignat*}{5}\n");
printf("      \\solutionA & \\qquad&\\qquad & \\solutionI \\\\\n");
printf("      \\solutionB & \\qquad&\\qquad & \\solutionJ \\\\\n");
printf("      \\solutionC & \\qquad&\\qquad & \\solutionK \\\\\n");
printf("      \\solutionD & \\qquad&\\qquad & \\solutionL \\\\\n");
printf("      \\solutionE & \\qquad&\\qquad & \\solutionM \\\\\n");
printf("      \\solutionF & \\qquad&\\qquad & \\solutionN \\\\\n");
printf("      \\solutionG & \\qquad&\\qquad & \\solutionO \\\\\n");
printf("      \\solutionH & \\qquad&\\qquad & \\solutionP\n");
printf("    \\end{alignat*}%%\n");
printf("    }%%small\n");
printf("\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

