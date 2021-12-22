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
printf("      {ID-cd729a85eb2866fc97255ed142cd451fa2dfc655}\n");
printf("      {Subtraktion}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Subtrahiere folgende Brüche und kürze so weit\n");
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
printf("      \\no{a} \\frac{5}{21}-\\frac{3}{14} & \\no{d} \\frac{9}{16}-\\frac{3}{8}   & \\no{g} \\frac{35}{18}-\\frac{23}{24} \\\\\n");
printf("      \\no{b} \\frac{7}{6}-\\frac{9}{10}  & \\no{e} \\frac{7}{12}-\\frac{3}{15}  & \\no{h} \\frac{63}{36}-\\frac{24}{32} \\\\\n");
printf("      \\no{c} \\frac{1}{2}-\\frac{1}{3}   & \\no{f} \\frac{25}{30}-\\frac{6}{28} & \\no{i} \\frac{42}{30}-\\frac{45}{75}\n");
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

