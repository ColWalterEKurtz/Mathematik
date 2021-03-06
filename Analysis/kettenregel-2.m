clear all;

printf("\\begin{exercise}\n");
printf("      {ID-90fd44af3548548c8e019b11c9827063a7cc811a}\n");
printf("      {Kettenregel 2}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Bestimme die Ableitung der folgenden Funktionen:\n");
printf("    \\begingroup\n");
printf("      \\newcommand{\\vstrut}{\\rule[-3.5ex]{0pt}{7.5ex}}%%\n");
printf("      \\newcommand{\\xca}{f(x)&=\\left(x^{2}-2\\right)\\cdot\\sqrt{3x-1}}%%\n");
printf("      \\newcommand{\\xcb}{f(x)&=x\\cdot e^{-x}}%%\n");
printf("      \\newcommand{\\xcc}{f(x)&=\\left(x^{2}-2\\right)\\cdot e^{-x}}%%\n");
printf("      \\newcommand{\\xcd}{f(x)&=\\left(x^{2}-2\\right)\\cdot e^{2x-1}}%%\n");
printf("      \\newcommand{\\xce}{f(x)&=x\\cdot e^{x^{2}-1}}%%\n");
printf("      \\newcommand{\\xcf}{f(x)&=x^{2}\\cdot e^{-kx}}%%\n");
printf("      \\newcommand{\\xcg}{f(x)&=\\frac{4e^{x}}{\\left(e^{x}+1\\right)^{2}}}%%\n");
printf("      \\newcommand{\\xch}{f(x)&=\\left(2x^{2}+3\\right)\\cdot3^{x}}%%\n");
printf("      \\newcommand{\\xci}{f(x)&=x^{x}}%%\n");
printf("      \\newcommand{\\xcj}{f(x)&=\\left(x^{2}+x^{3}\\right)^{\\sqrt{x}}}%%\n");
printf("      \\newcommand{\\xck}{f(x)&=x+\\sin(1-kx)}%%\n");
printf("      \\newcommand{\\xcl}{f(x)&=ax^{2}\\cdot\\cos(kx)}%%\n");
printf("      \\newcommand{\\xcm}{f(x)&=\\tan^{4}(x)}%%\n");
printf("      \\newcommand{\\xcn}{f(x)&=\\frac{\\sin\\left(\\sqrt{x}\\right)}{\\cos(x)}}%%\n");
printf("      \\newcommand{\\xco}{f(x)&=x\\cdot\\ln(x^{2}+3)}%%\n");
printf("      \\newcommand{\\xcp}{f(x)&=(2x-2)\\cdot\\ln(x)}%%\n");
printf("      \\newcommand{\\xcq}{f(x)&=(2x-1)\\cdot\\ln(x+1)}%%\n");
printf("      \\newcommand{\\xcr}{f(x)&=x\\cdot\\ln(x)-x}%%\n");
printf("      \\newcommand{\\xcs}{f(x)&=\\ln\\left(\\frac{x+1}{x^{2}}\\right)}%%\n");
printf("      \\newcommand{\\xct}{f(x)&=\\frac{1}{2}\\cdot(x-\\ln(x))}%%\n");
printf("      \\newcommand{\\xcu}{f(x)&=\\frac{1+\\ln(x)}{x}}%%\n");
printf("      \\newcommand{\\xcv}{f(x)&=\\ln\\left(\\frac{x+1}{1-x}\\right)}%%\n");
printf("      \\newcommand{\\xcw}{f(x)&=\\sqrt{\\ln(x)}\\cdot\\ln\\left(\\frac{1}{x}\\right)}%%\n");
printf("      \\newcommand{\\xcx}{f(x)&=\\log_{3}(3x+1)}%%\n");
printf("      \\newcommand{\\xcy}{f(x)&=\\log_{2}\\left(\\sin\\left(2\\pi x\\right)\\cdot\\cos\\left(x^{2}\\right)\\right)}%%\n");
printf("      \\newcommand{\\xcz}{f(x)&=\\sin\\left(\\cos\\left(\\ln\\left(\\sqrt{e^{x+2}}\\right)\\right)\\right)}%%\n");
printf("      \\allowdisplaybreaks\n");
printf("      \\begin{alignat*}{5}\n");
printf("        \\text{a)\\vstrut}&\\quad & \\xca & \\quad&\\quad & \\text{n)\\vstrut}&\\quad & \\xcn \\\\\n");
printf("        \\text{b)\\vstrut}&\\quad & \\xcb & \\quad&\\quad & \\text{o)\\vstrut}&\\quad & \\xco \\\\\n");
printf("        \\text{c)\\vstrut}&\\quad & \\xcc & \\quad&\\quad & \\text{p)\\vstrut}&\\quad & \\xcp \\\\\n");
printf("        \\text{d)\\vstrut}&\\quad & \\xcd & \\quad&\\quad & \\text{q)\\vstrut}&\\quad & \\xcq \\\\\n");
printf("        \\text{e)\\vstrut}&\\quad & \\xce & \\quad&\\quad & \\text{r)\\vstrut}&\\quad & \\xcr \\\\\n");
printf("        \\text{f)\\vstrut}&\\quad & \\xcf & \\quad&\\quad & \\text{s)\\vstrut}&\\quad & \\xcs \\\\\n");
printf("        \\text{g)\\vstrut}&\\quad & \\xcg & \\quad&\\quad & \\text{t)\\vstrut}&\\quad & \\xct \\\\\n");
printf("        \\text{h)\\vstrut}&\\quad & \\xch & \\quad&\\quad & \\text{u)\\vstrut}&\\quad & \\xcu \\\\\n");
printf("        \\text{i)\\vstrut}&\\quad & \\xci & \\quad&\\quad & \\text{v)\\vstrut}&\\quad & \\xcv \\\\\n");
printf("        \\text{j)\\vstrut}&\\quad & \\xcj & \\quad&\\quad & \\text{w)\\vstrut}&\\quad & \\xcw \\\\\n");
printf("        \\text{k)\\vstrut}&\\quad & \\xck & \\quad&\\quad & \\text{x)\\vstrut}&\\quad & \\xcx \\\\\n");
printf("        \\text{l)\\vstrut}&\\quad & \\xcl & \\quad&\\quad & \\text{y)\\vstrut}&\\quad & \\xcy \\\\\n");
printf("        \\text{m)\\vstrut}&\\quad & \\xcm & \\quad&\\quad & \\text{z)\\vstrut}&\\quad & \\xcz\n");
printf("      \\end{alignat*}\n");
printf("    \\endgroup\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  %%\\ifoutcome\\outcome\\par\n");
printf("  %%\\fi\n");
printf("\\end{exercise}\n");

