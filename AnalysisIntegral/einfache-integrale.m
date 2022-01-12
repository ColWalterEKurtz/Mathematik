clear all;

addpath 'Octave/';

% --
% sd
% --
%
% string decimal
%
% x       number to convert
% opt(1)  maxdcp
% opt(2)  addbrn
% opt(3)  addbrf
% opt(4)  addsgn
% opt(5)  addtex
%
function str = sd(x, opt = [7 0 0 0 1])
  str = myn2s(x, opt(1), opt(2), opt(3), opt(4), opt(5));
endfunction

% --
% sf
% --
%
% string fraction
%
% x       number to convert
% opt(1)  maxdcp
% opt(2)  addbrn
% opt(3)  addbrf
% opt(4)  addsgn
% opt(5)  addtex
%
function str = sf(x, opt = [0 0 0 0 1])
  str = myn2s(x, opt(1), opt(2), opt(3), opt(4), opt(5));
endfunction

%%% NO CALCULATIONS YET %%%

printf("%% 2022-01-12\n");
printf("\\begin{exercise}\n");
printf("      {ID-664e43ec6e56ef2ab7a1bf6f4266005af569d538}\n");
printf("      {Einfache Integrale}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Berechnen Sie folgende Integrale:\n");
printf("    \\begingroup\n");
printf("      \\allowdisplaybreaks\n");
printf("      \\newcommand{\\da}{\\;\\mathrm{d}a}\n");
printf("      \\newcommand{\\dt}{\\;\\mathrm{d}t}\n");
printf("      \\newcommand{\\dx}{\\;\\mathrm{d}x}\n");
printf("      \\newcommand{\\separator}{\\qquad&\\qquad}%%\n");
printf("      \\newcommand{\\vstrut}{\\rule[-3ex]{0pt}{7.25ex}}%%\n");
printf("      \\newcommand{\\exca}{&\\int_{\\frac{1}{2}}^{\\pi}0\\dx}%%\n");
printf("      \\newcommand{\\excb}{&\\int_{-1}^{1}1\\dx}%%\n");
printf("      \\newcommand{\\excc}{&\\int_{2}^{4}c\\dx}%%\n");
printf("      \\newcommand{\\excd}{&\\int_{2}^{4}x\\dx}%%\n");
printf("      \\newcommand{\\exce}{&\\int_{1}^{3}x^{2}\\dx}%%\n");
printf("      \\newcommand{\\excf}{&\\int_{3}^{5}x^{3}\\dx}%%\n");
printf("      \\newcommand{\\excg}{&\\int_{a}^{b}x^{n}\\dx}%%\n");
printf("      \\newcommand{\\exch}{&\\int_{1}^{3}x^{-3}\\dx}%%\n");
printf("      \\newcommand{\\exci}{&\\int_{3}^{6}x^{-2}\\dx}%%\n");
printf("      \\newcommand{\\excj}{&\\int_{a}^{b}(mx+n)\\dx}%%\n");
printf("      \\newcommand{\\exck}{&\\int_{1}^{4}\\sqrt{x}\\dx}%%\n");
printf("      \\newcommand{\\excl}{&\\int_{0}^{1}\\sqrt[3]{x}\\dx}%%\n");
printf("      \\newcommand{\\excm}{&\\int_{1}^{4}\\frac{1}{\\sqrt{x}}\\dx}%%\n");
printf("      \\newcommand{\\excn}{&\\int_{-1}^{1}\\left(-\\frac{1}{2}x^{2}-x+\\frac{3}{2}\\right)\\dx}%%\n");
printf("      \\newcommand{\\exco}{&\\int_{-1}^{2}\\left(x^{3}+x^{2}\\right)\\dx}%%\n");
printf("      \\newcommand{\\excp}{&\\int_{-3}^{-2}\\left(x^{2}+3x+2\\right)\\dx}%%\n");
printf("      \\newcommand{\\excq}{&\\int_{0}^{3}\\left(x^{2}-4x+3\\right)\\dx}%%\n");
printf("      \\newcommand{\\excr}{&\\int_{0}^{1}\\left(\\frac{3}{2}x-\\frac{1}{2\\sqrt{x}}\\right)\\dx}%%\n");
printf("      \\newcommand{\\excs}{&\\int_{0}^{\\frac{\\pi}{2}}\\sin(x)\\dx}%%\n");
printf("      \\newcommand{\\exct}{&\\int_{-\\frac{\\pi}{2}}^{\\frac{\\pi}{2}}\\cos(x)\\dx}%%\n");
printf("      \\newcommand{\\excu}{&\\int_{0}^{2\\pi}\\left(4\\sin(x)+8\\cos(x)\\right)\\dx}%%\n");
printf("      \\newcommand{\\excv}{&\\int_{0}^{\\frac{\\pi}{2}}\\left(\\sin(x)+e^{x}\\right)\\dx}%%\n");
printf("      \\newcommand{\\excw}{&\\int_{0}^{\\ln(2)}\\pi^{2}\\cdot e^{x}\\dx}%%\n");
printf("      \\newcommand{\\excx}{&\\int_{0}^{4}\\left(ax^{2}+bx+c\\right)\\dx}%%\n");
printf("      \\newcommand{\\excy}{&\\int_{0}^{4}\\left(ax^{2}+bx+c\\right)\\da}%%\n");
printf("      \\newcommand{\\excz}{&\\int_{0}^{4}\\left(ax^{2}+bx+c\\right)\\dt}%%\n");
printf("      \\begin{alignat*}{5}\n");
printf("        \\text{a)\\vstrut}&\\quad & \\exca & \\separator & \\text{n)\\vstrut}&\\quad & \\excn \\\\\n");
printf("        \\text{b)\\vstrut}&\\quad & \\excb & \\separator & \\text{o)\\vstrut}&\\quad & \\exco \\\\\n");
printf("        \\text{c)\\vstrut}&\\quad & \\excc & \\separator & \\text{p)\\vstrut}&\\quad & \\excp \\\\\n");
printf("        \\text{d)\\vstrut}&\\quad & \\excd & \\separator & \\text{q)\\vstrut}&\\quad & \\excq \\\\\n");
printf("        \\text{e)\\vstrut}&\\quad & \\exce & \\separator & \\text{r)\\vstrut}&\\quad & \\excr \\\\\n");
printf("        \\text{f)\\vstrut}&\\quad & \\excf & \\separator & \\text{s)\\vstrut}&\\quad & \\excs \\\\\n");
printf("        \\text{g)\\vstrut}&\\quad & \\excg & \\separator & \\text{t)\\vstrut}&\\quad & \\exct \\\\\n");
printf("        \\text{h)\\vstrut}&\\quad & \\exch & \\separator & \\text{u)\\vstrut}&\\quad & \\excu \\\\\n");
printf("        \\text{i)\\vstrut}&\\quad & \\exci & \\separator & \\text{v)\\vstrut}&\\quad & \\excv \\\\\n");
printf("        \\text{j)\\vstrut}&\\quad & \\excj & \\separator & \\text{w)\\vstrut}&\\quad & \\excw \\\\\n");
printf("        \\text{k)\\vstrut}&\\quad & \\exck & \\separator & \\text{x)\\vstrut}&\\quad & \\excx \\\\\n");
printf("        \\text{l)\\vstrut}&\\quad & \\excl & \\separator & \\text{y)\\vstrut}&\\quad & \\excy \\\\\n");
printf("        \\text{m)\\vstrut}&\\quad & \\excm & \\separator & \\text{z)\\vstrut}&\\quad & \\excz\n");
printf("      \\end{alignat*}\n");
printf("    \\endgroup\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    %% </OUTLINE>\n");
printf("  %%\\fi\n");
printf("  %%\\ifoutcome\\outcome\\par\n");
printf("    %% <OUTCOME>\n");
printf("    %% </OUTCOME>\n");
printf("  %%\\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

