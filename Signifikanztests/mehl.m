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
printf("      {ID-05f5811bc2a5cc0d1afd185342bd698a9bebbc5e}\n");
printf("      {Mehl}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    In einer Fabrik werden Tüten mit Mehl abgefüllt.\n");
printf("    Aus bisherigen Überprüfungen ist bekannt, dass\n");
printf("    höchstens \\SI{2}{\\percent} aller Tüten weniger\n");
printf("    als \\SI{1}{\\kilo\\gram} Mehl enthalten.\n");
printf("    Bei einer erneuten Überprüfung findet man unter\n");
printf("    \\num{150} Paketen \\num{5} mit einem Gewicht\n");
printf("    unter \\SI{1}{\\kilo\\gram}.\n");
printf("    Kann man hieraus schließen, dass sich der Anteil\n");
printf("    der Tüten mit weniger als \\SI{1}{\\kilo\\gram}\n");
printf("    Gewicht erhöht hat\n");
printf("    (\\SI{5}{\\percent}-Signifikanzniveau)?\n");
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

