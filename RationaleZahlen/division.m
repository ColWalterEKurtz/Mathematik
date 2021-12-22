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
printf("      {ID-d831c6ab24381de56f7d276a2fb86dcbb9f05532}\n");
printf("      {Division}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Dividiere folgende Brüche und kürze so weit\n");
printf("    wie möglich:\n");
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
printf("      \\no{a} \\frac{12}{5}:\\frac{15}{7} & \\no{c} \\frac{9}{10}:\\frac{3}{7} & \\no{e} 6:\\frac{24}{7} \\\\\n");
printf("      \\no{b} \\frac{11}{8}:\\frac{55}{3} & \\no{d} \\frac{7}{3}:\\frac{14}{9} & \\no{f} \\frac{24}{7}:6\n");
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

