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
printf("      {ID-acddb23046b69adde4519a433041cb0354b8614a}\n");
printf("      {Integration durch Substitution}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Berechnen Sie folgende Integrale:\n");
printf("    \\begingroup\n");
printf("      \\allowdisplaybreaks\n");
printf("      \\newcommand{\\da}{\\;\\mathrm{d}a}\n");
printf("      \\newcommand{\\dt}{\\;\\mathrm{d}t}\n");
printf("      \\newcommand{\\dx}{\\;\\mathrm{d}x}\n");
printf("      \\newcommand{\\separator}{\\qquad&\\qquad}%%\n");
printf("      \\newcommand{\\vstrut}{\\rule[-3.5ex]{0pt}{7.5ex}}%%\n");
printf("      \\newcommand{\\exca}{&\\int_{0}^{1}\\frac{1}{x+1}\\dx}%%\n");
printf("      \\newcommand{\\excb}{&\\int_{2}^{4}\\frac{x}{x^{2}-1}\\dx}%%\n");
printf("      \\newcommand{\\excc}{&\\int_{0}^{9}\\frac{1}{(1+x)^{2}}\\dx}%%\n");
printf("      \\newcommand{\\excd}{&\\int_{2}^{3}\\frac{11x-4}{x-1}\\dx}%%\n");
printf("      \\newcommand{\\exce}{&\\int_{0}^{1}\\frac{4x-10}{\\left(x^{2}-5x+6\\right)^{2}}\\dx}%%\n");
printf("      \\newcommand{\\excf}{&\\int_{0}^{\\frac{1}{2}}\\frac{2x}{x^{4}-2x^{2}+1}\\dx}%%\n");
printf("      \\newcommand{\\excg}{&\\int_{0}^{1}\\frac{x^{2}+t}{x+t}\\dx}%%\n");
printf("      \\newcommand{\\exch}{&\\int_{-1}^{1}\\frac{t^{2}-1}{t^{2}}x\\dx}%%\n");
printf("      \\newcommand{\\exci}{&\\int_{0}^{1}x-\\frac{2tx}{x^{2}+t}\\dx}%%\n");
printf("      \\newcommand{\\excj}{&\\int_{0}^{1}e^{3x+1}\\dx}%%\n");
printf("      \\newcommand{\\exck}{&\\int_{0}^{3}2xe^{x^{2}-2}\\dx}%%\n");
printf("      \\newcommand{\\excl}{&\\int_{0}^{5}e^{-x}\\dx}%%\n");
printf("      \\newcommand{\\excm}{&\\int_{-3}^{0}e^{1-x}\\dx}%%\n");
printf("      \\newcommand{\\excn}{&\\int_{1}^{2}e^{4-2x}\\dx}%%\n");
printf("      \\newcommand{\\exco}{&\\int_{0}^{2}\\frac{e^{x}}{1+e^{x}}\\dx}%%\n");
printf("      \\newcommand{\\excp}{&\\int_{0}^{1}x\\ln\\left(x^{2}+1\\right)\\dx}%%\n");
printf("      \\newcommand{\\excq}{&\\int_{2}^{3}\\frac{\\left(\\ln x\\right)^{2}}{x}\\dx}%%\n");
printf("      \\newcommand{\\excr}{&\\int_{1}^{2}\\frac{\\sqrt{\\ln x}}{x}\\dx}%%\n");
printf("      \\newcommand{\\excs}{&\\int_{e}^{2e}\\frac{\\ln x}{x}\\dx}%%\n");
printf("      \\newcommand{\\exct}{&\\int_{0}^{1}\\frac{\\ln(x+1)}{x+1}\\dx}%%\n");
printf("      \\newcommand{\\excu}{&\\int_{0}^{1}\\frac{x}{\\sqrt{2+x^{2}}}\\dx}%%\n");
printf("      \\newcommand{\\excv}{&\\int_{0}^{\\pi}\\sin(3-7x)\\dx}%%\n");
printf("      \\newcommand{\\excw}{&\\int_{0}^{\\frac{\\pi}{2}}\\sin^{3}x\\cos x\\dx}%%\n");
printf("      \\newcommand{\\excx}{&\\int_{0}^{\\pi}\\cos^{3}x\\sin x\\dx}%%\n");
printf("      \\newcommand{\\excy}{&\\int_{-\\frac{\\pi}{2}}^{\\frac{\\pi}{2}}\\tan(x)\\dx}%%\n");
printf("      \\newcommand{\\excz}{&\\int_{0}^{\\pi}\\cos\\left(\\sqrt{x}\\right)\\dx}%%\n");
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

