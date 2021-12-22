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
printf("      {ID-c216705b57d5811971f78c9252304ce94d62d493}\n");
printf("      {Ereitern}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Erweitere folgende Brüche auf den\n");
printf("    angegebenen Nenner:\n");
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
printf("      \\no{a} \\frac{2}{3}=\\frac{}{9}   & \\no{d} \\frac{7}{5}=\\frac{}{25} & \\no{g} \\frac{1}{12}=\\frac{}{48} \\\\\n");
printf("      \\no{b} \\frac{5}{4}=\\frac{}{44}  & \\no{e} \\frac{2}{7}=\\frac{}{56} & \\no{h} \\frac{5}{6}=\\frac{}{18}  \\\\\n");
printf("      \\no{c} \\frac{9}{10}=\\frac{}{30} & \\no{f} \\frac{1}{5}=\\frac{}{45} & \\no{i} \\frac{4}{9}=\\frac{}{72}\n");
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

