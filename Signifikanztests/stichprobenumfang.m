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

printf("%% 2021-11-12\n");
printf("\\begin{exercise}\n");
printf("      {ID-29c54527a59bb18521c461db5ad2b003bb4c56b9}\n");
printf("      {Stichprobenumfang}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Es gilt $p=\\num{0.5}$. Wie groß muss der Versuchsumfang\n");
printf("    sein, damit man bei einem einseitigen Test auf dem\n");
printf("    \\SI{1}{\\percent}-Signifikanzniveau die\n");
printf("    \\glqq eng benachbarte\\grqq{} Hypothese\n");
printf("    $H_1:p=\\num{0.51}$ sehr sicher (in \\SI{99}{\\percent}\n");
printf("    aller Fälle) ablehnen kann?\n");
printf("    Arbeiten Sie mit einseitigen\n");
printf("    $\\num{2.326}\\sigma$-Um\\-geb\\-ung\\-en.\n");
printf("    Formulieren Sie eine Aussage über das Verhalten von\n");
printf("    Signifikanztests bei sehr hohem Stichprobenumfang.\n");
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

