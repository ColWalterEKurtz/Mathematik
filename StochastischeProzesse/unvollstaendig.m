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
printf("      {ID-e7c1271a6b50a1f1dbded1e6e5ac717d7471a3b2}\n");
printf("      {Unvollständig}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Gegeben ist folgendes unvollständige\n");
printf("    Prozessdiagramm:\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}[line width=0.6pt]\n");
printf("        \\node[shape=circle,\n");
printf("              minimum size=8mm,\n");
printf("              inner sep=0pt,\n");
printf("              draw=black] (Z1) at (0, 2) {$Z_1$};\n");
printf("        \\node[shape=circle,\n");
printf("              minimum size=8mm,\n");
printf("              inner sep=0pt,\n");
printf("              draw=black] (Z2) at (2, 2) {$Z_2$};\n");
printf("        \\node[shape=circle,\n");
printf("              minimum size=8mm,\n");
printf("              inner sep=0pt,\n");
printf("              draw=black] (Z3) at (2, 0) {$Z_3$};\n");
printf("        \\node[shape=circle,\n");
printf("              minimum size=8mm,\n");
printf("              inner sep=0pt,\n");
printf("              draw=black] (Z4) at (0, 0) {$Z_4$};\n");
printf("        %%<OCTAVE>\n");
printf("        \\draw[->, >=stealth] (Z1.90.000)\n");
printf("              arc[start angle=0.000,\n");
printf("                  end angle=270.000,\n");
printf("                  radius=4.000mm]\n");
printf("              node[pos=0.5,\n");
printf("                   shift={(135.000:8pt)}]\n");
printf("                   {\\num{0.2}};\n");
printf("        %%</OCTAVE>\n");
printf("        %%myselfconnect(\"Z1\", 135);\n");
printf("        %%<OCTAVE>\n");
printf("        \\draw[->, >=stealth] (Z2.0.000)\n");
printf("              arc[start angle=270.000,\n");
printf("                  end angle=540.000,\n");
printf("                  radius=4.000mm]\n");
printf("              node[pos=0.5,\n");
printf("                   shift={(45.000:8pt)}]\n");
printf("                   {\\num{0.6}};\n");
printf("        %%</OCTAVE>\n");
printf("        %%myselfconnect(\"Z2\", 45);\n");
printf("        %%<OCTAVE>\n");
printf("        \\draw[->, >=stealth] (Z3.270.000)\n");
printf("              arc[start angle=180.000,\n");
printf("                  end angle=450.000,\n");
printf("                  radius=4.000mm]\n");
printf("              node[pos=0.5,\n");
printf("                   shift={(315.000:8pt)}]\n");
printf("                   {\\relax};\n");
printf("        %%</OCTAVE>\n");
printf("        %%myselfconnect(\"Z3\", 315);\n");
printf("        %%<OCTAVE>\n");
printf("        \\draw[->, >=stealth] (Z4.180.000)\n");
printf("              arc[start angle=90.000,\n");
printf("                  end angle=360.000,\n");
printf("                  radius=4.000mm]\n");
printf("              node[pos=0.5,\n");
printf("                   shift={(225.000:8pt)}]\n");
printf("                   {\\relax};\n");
printf("        %%</OCTAVE>\n");
printf("        %%myselfconnect(\"Z4\", 225);\n");
printf("        \\begin{scope}[->, >=stealth, shorten <=3pt, shorten >=3pt]\n");
printf("          \\draw (Z1.20) to[out=20, in=160] node {}\n");
printf("                (Z2.160);\n");
printf("          \\draw (Z1.295) to[out=295, in=155]\n");
printf("                         node[rotate=-45, above] {\\num{0.2}}\n");
printf("                (Z3.155);\n");
printf("          \\draw (Z1.250) to[out=250, in=110]\n");
printf("                         node[rotate=90, below] {\\num{0.3}}\n");
printf("                (Z4.110);\n");
printf("          \\draw (Z2.200) to[out=200, in=340] node {}\n");
printf("                (Z1.340);\n");
printf("          \\draw (Z3.70) to[out=70, in=290]\n");
printf("                        node[rotate=-90, below] {\\num{0.4}}\n");
printf("                (Z2.290);\n");
printf("        \\end{scope}\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Vervollständigen Sie das Prozessdiagramm\n");
printf("            und geben Sie die Übergangsmatrix an.\n");
printf("            Wie nennt man den Zustand $Z_4$?\n");
printf("      \\item Sie befinden sich anfangs mit jeweils\n");
printf("            \\SI{50}{\\percent} Wahrscheinlichkeit\n");
printf("            in Zustand $Z_1$ bzw. Zustand $Z_2$.\n");
printf("            Geben Sie die Startverteilung als\n");
printf("            Vektor an.\n");
printf("      \\item Sie multiplizieren die Übergansmatrix mit\n");
printf("            der Startverteilung. Interpretieren Sie\n");
printf("            den Wert in der zweiten Zeile des\n");
printf("            Ergebnisvektors.\n");
printf("      \\item Berechnen Sie die Zustandsverteilung nach\n");
printf("            zwei Schritten.\n");
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

