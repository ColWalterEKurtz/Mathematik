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

printf("%% 2021-12-28\n");
printf("\\begin{exercise}\n");
printf("      {ID-4e20fd77591b8075010b2a76507c43df8f050911}\n");
printf("      {Feuerball}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Bei einer Zirkusvorführung wird ein Feuerball\n");
printf("    unter einem Winkel von \\SI{45}{\\degree} aus\n");
printf("    einer \\glqq Kanone\\grqq{} abgeschossen und\n");
printf("    landet in einem \\SI{15}{\\metre} entfernten\n");
printf("    Wasserbehälter, der gegenüber der\n");
printf("    Kanonenöffnung \\SI{3.75}{\\metre} höher steht.\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Bestimmen Sie eine geeignete Funktion, welche\n");
printf("            die Flugbahn des Balles beschreibt.\n");
printf("      \\item Überprüfen Sie rechnerisch, ob die\n");
printf("            Vorführung in einem \\SI{6}{\\metre} hohen\n");
printf("            Saal stattfinden kann.\n");
printf("    \\end{enumerate}\n");
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

