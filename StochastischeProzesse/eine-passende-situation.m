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
printf("      {ID-16b0d9ae80b9c0af9854636110bb8c20fd4be148}\n");
printf("      {Eine passende Situation}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Gegeben ist folgendes Prozessdiagramm:\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}[line width=0.6pt]\n");
printf("        \\node[shape=circle,\n");
printf("              minimum size=8mm,\n");
printf("              inner sep=0pt,\n");
printf("              draw=black] (Z1) at (0, 0) {$Z_1$};\n");
printf("        \\node[shape=circle,\n");
printf("              minimum size=8mm,\n");
printf("              inner sep=0pt,\n");
printf("              draw=black] (Z2) at (2.5, 0) {$Z_2$};\n");
printf("        \\node[shape=circle,\n");
printf("              minimum size=8mm,\n");
printf("              inner sep=0pt,\n");
printf("              draw=black] (Z3) at (5, 0) {$Z_3$};\n");
printf("        %%<OCTAVE>\n");
printf("        \\draw[<-, >=stealth] (Z1.135.000)\n");
printf("              arc[start angle=45.000,\n");
printf("                  end angle=315.000,\n");
printf("                  radius=4.000mm]\n");
printf("              node[pos=0.5,\n");
printf("                   shift={(180.000:9pt)}]\n");
printf("                   {\\num{0.6}};\n");
printf("        %%</OCTAVE>\n");
printf("        %%myselfconnect(\"Z1\", 180);\n");
printf("        %%<OCTAVE>\n");
printf("        \\draw[<-, >=stealth] (Z3.315.000)\n");
printf("              arc[start angle=225.000,\n");
printf("                  end angle=495.000,\n");
printf("                  radius=4.000mm]\n");
printf("              node[pos=0.5,\n");
printf("                   shift={(0.000:9pt)}]\n");
printf("                   {\\num{0.4}};\n");
printf("        %%</OCTAVE>\n");
printf("        %%myselfconnect(\"Z3\", 0);\n");
printf("        \\begin{scope}[->, >=stealth, shorten <=3pt, shorten >=3pt]\n");
printf("          \\draw (Z1.20) to[out=20, in=160]\n");
printf("                        node[above] {\\num{0.4}}\n");
printf("                (Z2.160);\n");
printf("          \\draw (Z2.200) to[out=200, in=340]\n");
printf("                         node[below] {\\num{0.5}}\n");
printf("                (Z1.340);\n");
printf("          \\draw (Z2.20) to[out=20, in=160]\n");
printf("                        node[above] {\\num{0.5}}\n");
printf("                (Z3.160);\n");
printf("          \\draw (Z3.200) to[out=200, in=340]\n");
printf("                         node[below] {\\num{0.6}}\n");
printf("                (Z2.340);\n");
printf("        \\end{scope}\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Stellen Sie die Übergansmatrix $U$ zu\n");
printf("            diesem Prozessdiagramm auf.\n");
printf("            Überprüfen Sie, ob $U$ eine stochastische\n");
printf("            Matrix ist.\n");
printf("      \\item $Z_1$ wird als Anfangszustand gewählt.\n");
printf("            Bestimmen Sie damit die Zustandsverteilung\n");
printf("            nach vier Schritten.\n");
printf("      \\item Beschreiben Sie eine Situation, die zu dem\n");
printf("            Diagramm passt.\n");
printf("      \\item Verändern Sie die Übergangswahrscheinlichkeiten\n");
printf("            so, dass $Z_1$ und $Z_3$ absorbierende\n");
printf("            Zustände sind.\n");
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

