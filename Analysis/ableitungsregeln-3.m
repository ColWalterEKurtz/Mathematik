clear all;

%%% addpath 'Octave/';

%%% NO CALCULATIONS YET %%%

printf("\\begin{exercise}\n");
printf("      {ID-cf4d26f192f269c217df85e9ca565f0ac983a4a4}\n");
printf("      {Ableitungsregeln 3}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Bestimmen Sie die Funktionsgleichung von $f'$.\n");
printf("    \\begin{alignat*}{8}\n");
printf("        \\text{a)}&\\; & f(x)&=x\\cdot(5-x)\n");
printf("      & \\quad&\\quad\n");
printf("      & \\text{b)}&\\; & f(x)&=(x+x^2)\\cdot x\n");
printf("      & \\quad&\\quad\n");
printf("      & \\text{c)}&\\; & f(x)&=x^2\\cdot(x+2)\\cdot5\n");
printf("      \\\\\n");
printf("        \\text{d)}&\\; & f(x)&=(x+2)^2\n");
printf("      & \\quad&\\quad\n");
printf("      & \\text{e)}&\\; & f(x)&=2\\cdot(x-2)^2\n");
printf("      & \\quad&\\quad\n");
printf("      & \\text{f)}&\\; & f(x)&=(x-7)\\cdot(x+7)\n");
printf("    \\end{alignat*}\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    %% </OUTLINE>\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    %% <OUTCOME>\n");
printf("    \\begin{alignat*}{8}\n");
printf("        \\text{a)}&\\; & f(x)&=x\\cdot(5-x)\n");
printf("      & \\quad&\\quad\n");
printf("      & \\text{b)}&\\; & f(x)&=(x+x^2)\\cdot x\n");
printf("      & \\quad&\\quad\n");
printf("      & \\text{c)}&\\; & f(x)&=x^2\\cdot(x+2)\\cdot5\n");
printf("      \\\\\n");
printf("             &       &     &=5x-x^2\n");
printf("      & \\quad&\\quad\n");
printf("      &      &       &     &=x^2+x^3\n");
printf("      & \\quad&\\quad\n");
printf("      &      &       &     &=5x^3+10x^2\n");
printf("      \\\\\n");
printf("             &       & f'(x)&=5-2x\n");
printf("      & \\quad&\\quad\n");
printf("      &      &       & f'(x)&=2x+3x^2\n");
printf("      & \\quad&\\quad\n");
printf("      &      &       & f'(x)&=15x^2+20x\n");
printf("      \\\\[2ex]\n");
printf("        \\text{d)}&\\; & f(x)&=(x+2)^2\n");
printf("      & \\quad&\\quad\n");
printf("      & \\text{e)}&\\; & f(x)&=2\\cdot(x-2)^2\n");
printf("      & \\quad&\\quad\n");
printf("      & \\text{f)}&\\; & f(x)&=(x-7)\\cdot(x+7)\n");
printf("      \\\\\n");
printf("                 &   &     &=x^2+4x+4\n");
printf("      & \\quad&\\quad\n");
printf("      &          &   &     &=2x^2-8x+8\n");
printf("      & \\quad&\\quad\n");
printf("      &          &   &     &=x^2-49\n");
printf("      \\\\\n");
printf("                 &   & f'(x)&=2x+4\n");
printf("      & \\quad&\\quad\n");
printf("      &          &   & f'(x)&=4x-8\n");
printf("      & \\quad&\\quad\n");
printf("      &          &   & f'(x)&=2x\n");
printf("    \\end{alignat*}\n");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

