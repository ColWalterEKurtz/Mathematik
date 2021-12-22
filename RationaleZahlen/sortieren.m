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

printf("\\begin{exercise}\n");
printf("      {ID-738ddf4709487bb668aa465fcddaa42153f0e691}\n");
printf("      {Sortieren}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Ordne folgende Brüche der Größe nach:\n");
printf("    %% number\n");
printf("    \\newcommand{\\no}[1]\n");
printf("    {%%\n");
printf("      \\vphantom{\\Bigg(}%%\n");
printf("      \\makebox[3em][r]%%\n");
printf("      {%%\n");
printf("        #1)%%\n");
printf("      }%%\n");
printf("      \\;\\;&%%\n");
printf("    }%%\n");
printf("    \\begin{align*}\n");
printf("      \\no{a} \\frac{1}{8},\\quad\\frac{3}{4},\\quad\\frac{4}{5},\\quad\\frac{2}{9}      &\n");
printf("      \\no{d} \\frac{2}{2},\\quad\\frac{2}{3},\\quad\\frac{2}{4},\\quad\\frac{2}{5}      \\\\\n");
printf("      \\no{b} \\frac{2}{15},\\quad\\frac{1}{9},\\quad\\frac{4}{27},\\quad\\frac{3}{20}   &\n");
printf("      \\no{e} \\frac{7}{12},\\quad\\frac{2}{3},\\quad\\frac{3}{5},\\quad\\frac{5}{9}     \\\\\n");
printf("      \\no{c} \\frac{2}{3},\\quad\\frac{3}{2},\\quad\\frac{5}{7},\\quad\\frac{7}{5}      &\n");
printf("      \\no{f} \\frac{10}{21},\\quad\\frac{4}{9},\\quad\\frac{13}{28},\\quad\\frac{5}{12}\n");
printf("    \\end{align*}\n");
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

