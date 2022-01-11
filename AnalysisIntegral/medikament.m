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

printf("%% 2022-01-04\n");
printf("\\begin{exercise}\n");
printf("      {ID-bde640557ba4027407d994850b36ef0bdf1ea836}\n");
printf("      {Medikament}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Durch die Funktionenschar $f_a:\\mathbb{R}\\to\\mathbb{R}$ mit\n");
printf("    \\begin{equation*}\n");
printf("      f_a(t)=20a\\cdot t\\cdot e^{\\num{-0.5}t}\n");
printf("      \\quad\\text{und}\\quad\n");
printf("      a>0\n");
printf("    \\end{equation*}\n");
printf("    wird für $t\\in[\\num{0},\\num{12}]$ eine Konzentration\n");
printf("    eines Medikaments im Blut eines Patienten beschrieben\n");
printf("    ($t$ in Stunden seit der Einnahme und $f(t)$ in\n");
printf("    \\si[per-mode=symbol]{\\milli\\gram\\per\\litre}).\n");
printf("    Der Parameter $a$ hängt von der Höhe der\n");
printf("    Wirkstoffdosis ab.\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Zeigen Sie, dass der Zeitpunkt, zu dem\n");
printf("            die Konzentration des Medikaments am\n");
printf("            größten ist, nicht vom Parameter $a$\n");
printf("            abhängt und berechnen Sie diesen\n");
printf("            Zeitpunkt.\n");
printf("            Berechnen Sie, für welchen Wert von\n");
printf("            $a$ die maximale Konzentration im Blut\n");
printf("            \\SI[per-mode=symbol]{20}{\\milli\\gram\\per\\litre}\n");
printf("            beträgt.\n");
printf("      \\item Berechnen Sie den Zeitpunkt, zu dem die\n");
printf("            Wirkstoffkonzentration am stärksten abfällt.\n");
printf("            Hängt das Ergebnis vom Parameter $a$ ab?\n");
printf("      \\item Zeigen Sie, dass $F_a$ mit\n");
printf("            $F_a(t)=-(40at+80a)\\cdot e^{\\num{-0.5}t}$\n");
printf("            eine Stammfunktion von $f_a$ ist.\n");
printf("            Berechnen Sie\n");
printf("            \\begin{equation*}\n");
printf("              \\frac{1}{12}\\cdot\\int_{0}^{12}f_a(t)\\,\\mathrm{d}t\n");
printf("            \\end{equation*}\n");
printf("            und interpretieren Sie das Ergebnis im\n");
printf("            Sachzusammenhang.\n");
printf("      \\item Für $t>12$ kann die Konzentration des\n");
printf("            Medikaments durch die Tangente an den\n");
printf("            Graphen von $f$ in $P\\left(12\\;\\middle|\\;f_a(12)\\right))$\n");
printf("            beschrieben werden.\n");
printf("            Bestimmen Sie die Gleichung der Tangente und\n");
printf("            berechnen Sie, wann das Medikament vollständig\n");
printf("            abgebaut ist. Hängt das Ergebnis von $a$ ab?\n");
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

