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

printf("%% 2021-11-20\n");
printf("\\begin{exercise}\n");
printf("      {ID-16616150d2ac50e0b87410da9c0dc3b441fdd3e5}\n");
printf("      {Lücken in der Übergangsmatrix}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Gegeben ist folgende unvollständige\n");
printf("    Übergangsmatrix $U$:\n");
printf("    \\begin{equation*}\n");
printf("      U=\n");
printf("      \\begin{pmatrix}\n");
printf("        \\num{0.5} & \\num{1} & \\square   \\\\\n");
printf("        \\square   & \\square & \\num{0.1} \\\\\n");
printf("        \\num{0.2} & \\square & 0\n");
printf("      \\end{pmatrix}\n");
printf("    \\end{equation*}\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Verfollständigen Sie die Übergangsmatrix\n");
printf("            und geben Sie ein Prozessdiagramm dazu an.\n");
printf("      \\item Berechnen Sie die Zustandsverteilung nach\n");
printf("            \\num{10} Schritten, wenn Sie sich anfangs\n");
printf("            in Zustand \\num{1} befinden.\n");
printf("            Was ergibt sich, wenn Sie in Zustand\n");
printf("            \\num{2} starten? Vergleichen Sie.\n");
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

