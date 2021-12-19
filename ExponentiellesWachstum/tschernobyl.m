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

printf("%% 2021-11-19\n");
printf("\\begin{exercise}\n");
printf("      {ID-ee0514b56291c14f49f41bac279c4d09af94beb1}\n");
printf("      {Tschernobyl}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("  %%\\ifproblem\\clearpage\\hrulefill\\\\\n");
printf("    %% <PROBLEM>\n");
printf("    Bei der Nuklearkatastrophe von Tschernobyl\n");
printf("    im April 1986 wurden etwa \\SI{500}{\\gram}\n");
printf("    des radioaktiven Isotops \\isotope[131]{I}\n");
printf("    (\\glqq Jod 131\\grqq) freigesetzt.\n");
printf("    Die Halbwertszeit von \\isotope[131]{I}\n");
printf("    beträgt ca. \\num{8} Tage.\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Stelle die Funktionsgleichung auf, die\n");
printf("            den Jod-Zerfall in Abhängigkeit von der\n");
printf("            Zeit $t$ in Tagen beschreibt.\n");
printf("      \\item Wie viel Gramm des ausgetretenen\n");
printf("            \\isotope[131]{I} war \\num{4} Wochen\n");
printf("            nach der Explosion noch in der Umwelt\n");
printf("            vorhanden?\n");
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

