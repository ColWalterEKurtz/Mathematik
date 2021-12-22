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
printf("      {ID-2e96d9ee0cc484c9c8e205bb46d1fc2a40477ad0}\n");
printf("      {Multiplikation}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Multipliziere folgende Brüche und kürze so weit\n");
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
printf("      \\no{a} \\frac{12}{5}\\cdot\\frac{10}{3}  & \\no{d} \\frac{7}{3}\\cdot\\frac{4}{5}  & \\no{g} 5\\cdot\\frac{10}{2}  \\\\\n");
printf("      \\no{b} \\frac{11}{8}\\cdot\\frac{18}{12} & \\no{e} \\frac{4}{7}\\cdot\\frac{14}{2} & \\no{h} 12\\cdot\\frac{5}{45} \\\\\n");
printf("      \\no{c} \\frac{9}{10}\\cdot\\frac{8}{7}   & \\no{f} \\frac{15}{6}\\cdot\\frac{2}{9} & \\no{i} 4\\cdot\\frac{81}{27}\n");
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

