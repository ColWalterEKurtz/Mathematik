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
printf("      {ID-503c459c7d2f9e288382dfd3c75f6ab6ef46e733}\n");
printf("      {Lücken im Prozessdiagramm}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Gegeben ist ein Prozessdiagramm, in dem einige\n");
printf("    Übergangswahrscheinlichkeiten fehlen.\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}[line width=0.6pt]\n");
printf("        \\node[shape=circle, minimum size=8mm, inner sep=0pt, draw=black] (A) at (0, 0) {A};\n");
printf("        \\node[shape=circle, minimum size=8mm, inner sep=0pt, draw=black] (B) at (30:4cm) {B};\n");
printf("        \\node[shape=circle, minimum size=8mm, inner sep=0pt, draw=black] (C) at (330:4cm) {C};\n");
printf("        \\begin{scope}[->, >=stealth, shorten <=3pt, shorten >=3pt]\n");
printf("          %% A -- B\n");
printf("          \\draw (A.20) to[out=20, in=220] node {} (B.220);\n");
printf("          \\draw (B.200) to[out=200, in=40] node[rotate=30, above] {\\num{0.2}} (A.40);\n");
printf("          %% A -- C\n");
printf("          \\draw (A.320) to[out=320, in=160] node[rotate=-30, below] {\\num{0.4}} (C.160);\n");
printf("          \\draw (C.140) to[out=140, in=340] node[rotate=-30, above] {\\num{0.1}} (A.340);\n");
printf("          %% B -- C\n");
printf("          \\draw (B.260) to[out=260, in=100] (C.100);\n");
printf("          \\draw (C.80) to[out=80, in=280] node[rotate=270, above] {\\num{0.5}} (B.280);\n");
printf("        \\end{scope}\n");
printf("        %% A -- A\n");
printf("        \\draw[->, >=stealth]\n");
printf("             (A.135)\n");
printf("              arc[start angle=45,\n");
printf("                  end angle=315,\n");
printf("                  radius=4mm]\n");
printf("              node[pos=0.5, shift={(180:10pt)}] {\\num{0.3}};\n");
printf("        %% B -- B\n");
printf("        \\draw[->, >=stealth]\n");
printf("             (B.15)\n");
printf("              arc[start angle=285,\n");
printf("                  end angle=555,\n");
printf("                  radius=4mm]\n");
printf("              node[pos=0.5, shift={(60:7pt)}] {\\num{0.2}};\n");
printf("        %% C -- C\n");
printf("        \\draw[->, >=stealth]\n");
printf("             (C.255)\n");
printf("              arc[start angle=165,\n");
printf("                  end angle=435,\n");
printf("                  radius=4mm];\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Berechnen und ergänzen Sie die fehlenden\n");
printf("            Übergangswahrscheinlichkeiten im oberen\n");
printf("            Prozessdiagramm.\n");
printf("      \\item Bestimmen Sie die Übergangsmatrix für das\n");
printf("            vollständige Prozessdiagramm.\n");
printf("      \\item Zu Beginn befinden sich \\num{100} Personen\n");
printf("            in Zustand A und je \\num{200} Personen in\n");
printf("            Zustand B und C.\n");
printf("            Berechnen Sie wie viele Personen sich in den\n");
printf("            Zuständen nach einem Übergang und nach\n");
printf("            fünf Übergängen befinden.\n");
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

