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

printf("%% 2021-11-11\n");
printf("\\begin{exercise}\n");
printf("      {ID-b69e9cb8726a455430cdeac92e5ddc68ce678e7c}\n");
printf("      {Wohnanlage}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Ein Reiseunternehmer nimmt \\num{50} Buchungen für\n");
printf("    eine Wohnanlage mit \\num{45} Betten an, da\n");
printf("    erfahrungsgemäß \\SI{10}{\\percent} der Buchungen\n");
printf("    wieder rückgängig gemacht werden.\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Mit welcher Wahrscheinlichkeit hat er zu\n");
printf("            viele Buchungen angenommen?\n");
printf("      \\item Mit welcher Wahrscheinlichkeit hat er\n");
printf("            sogar noch mehr als einen Platz übrig?\n");
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

