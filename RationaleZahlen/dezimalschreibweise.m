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
printf("      {ID-626e67177803b9c4884f7524f940acd68c0689c6}\n");
printf("      {Dezimalschreibweise}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Schreibe folgende Brüche als Dezimalzahl:\n");
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
printf("      \\no{a} \\frac{5}{2}=    & \\no{e} \\frac{6}{20}=    & \\no{i} \\frac{27}{30}=  \\\\\n");
printf("      \\no{b} \\frac{13}{5}=   & \\no{f} \\frac{33}{3000}= & \\no{j} \\frac{72}{400}= \\\\\n");
printf("      \\no{c} \\frac{36}{600}= & \\no{g} \\frac{1}{50}=    & \\no{k} \\frac{24}{80}=  \\\\\n");
printf("      \\no{d} \\frac{8}{40}=   & \\no{h} \\frac{3}{25}=    & \\no{l} \\frac{125}{500}=\n");
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

