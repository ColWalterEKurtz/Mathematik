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
printf("      {ID-13ad0ca691a242e47d568c79816250e9c8f26cda}\n");
printf("      {Glücksrad}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Für ein Spiel wird ein Glücksrad verwendet, das drei farbigen Sektoren\n");
printf("    besitzt. Der Tabelle können die Farben der Sektoren und die Größen der\n");
printf("    zugehörigen Mittelpunktswinkel entnommen werden.\n");
printf("    \\begin{center}\n");
printf("      \\renewcommand{\\arraystretch}{1.25}%%\n");
printf("      \\begin{tabular}{|l|c|c|c|}\n");
printf("        \\hline\n");
printf("        Farbe\n");
printf("        & \\makebox[4em][c]{Blau}\n");
printf("        & \\makebox[4em][c]{Rot}\n");
printf("        & \\makebox[4em][c]{Grün}\n");
printf("        \\\\\n");
printf("        \\hline\n");
printf("        Mittelpunktswinkel\n");
printf("        & $180^\\circ$\n");
printf("        & $120^\\circ$\n");
printf("        & $60^\\circ$\n");
printf("        \\\\\n");
printf("        \\hline\n");
printf("      \\end{tabular}\n");
printf("    \\end{center}\n");
printf("    Für einen Einsatz von 5 Euro darf ein Spieler das Glücksrad dreimal\n");
printf("    drehen. Erzielt der Spieler dreimal die gleiche Farbe, werden ihm 10\n");
printf("    Euro ausgezahlt. Erzielt er drei verschiedene Farben, wird ein anderer\n");
printf("    Betrag ausgezahlt. In allen anderen Fällen erfolgt keine Auszahlung.\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Bestimme die Wahrscheinlichkeit der folgenden Ereignisse:\n");
printf("            \\begin{equation*}\n");
printf("              \\begin{split}\n");
printf("                E_1:\\;\\;&\\text{\\glqq drei gleiche Farben\\grqq}\n");
printf("                \\\\\n");
printf("                E_2:\\;\\;&\\text{\\glqq drei verschiedene Farben\\grqq}\n");
printf("              \\end{split}\n");
printf("            \\end{equation*}\n");
printf("      \\item Bei dem Spiel ist zu erwarten, dass sich die Einsätze der Spieler\n");
printf("            und die Auszahlungen auf lange Sicht ausgleichen. Bestimme den\n");
printf("            Betrag, der ausgezahlt wird, wenn drei verschiedene Farben\n");
printf("            erscheinen.\n");
printf("    \\end{enumerate}\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\n");
printf("    %% <OUTLINE>\n");
printf("    \\begin{center}\n");
printf("      %%<OCTAVE>\n");
printf("      \\begin{tikzpicture}\n");
printf("        \\begin{scope}\n");
printf("          \\newcommand{\\radius}{15mm}%%\n");
printf("          %% default colors\n");
printf("          \\newcommand{\\colr}{Red};%%\n");
printf("          \\newcommand{\\colg}{ForestGreen};%%\n");
printf("          \\newcommand{\\colb}{Cerulean};%%\n");
printf("          \\newcommand{\\coly}{YellowOrange};%%\n");
printf("          \\newcommand{\\cola}{Black!35!White};%%\n");
printf("          \\newcommand{\\cole}{Black!55!White};%%\n");
printf("          %% sector colors\n");
printf("          \\newcommand{\\colA}{\\colg}%%\n");
printf("          \\newcommand{\\colB}{\\colr}%%\n");
printf("          \\newcommand{\\colC}{\\colr}%%\n");
printf("          \\newcommand{\\colD}{\\colb}%%\n");
printf("          \\newcommand{\\colE}{\\colb}%%\n");
printf("          \\newcommand{\\colF}{\\colb}%%\n");
printf("          \\coordinate (A) at ( 60.000:\\radius);\n");
printf("          \\coordinate (B) at (120.000:\\radius);\n");
printf("          \\coordinate (C) at (180.000:\\radius);\n");
printf("          \\coordinate (D) at (240.000:\\radius);\n");
printf("          \\coordinate (E) at (300.000:\\radius);\n");
printf("          \\coordinate (F) at (360.000:\\radius);\n");
printf("          \\fill[fill=\\colA, rotate= 60.000] (0, 0) -- (0:\\radius) arc[start angle=0, end angle=60.000, radius=\\radius] -- cycle;\n");
printf("          \\fill[fill=\\colB, rotate=120.000] (0, 0) -- (0:\\radius) arc[start angle=0, end angle=120.000, radius=\\radius] -- cycle;\n");
printf("          %%\\fill[fill=\\colC, rotate=180.000] (0, 0) -- (0:\\radius) arc[start angle=0, end angle=60.000, radius=\\radius] -- cycle;\n");
printf("          \\fill[fill=\\colD, rotate=240.000] (0, 0) -- (0:\\radius) arc[start angle=0, end angle=180.000, radius=\\radius] -- cycle;\n");
printf("          %%\\fill[fill=\\colE, rotate=300.000] (0, 0) -- (0:\\radius) arc[start angle=0, end angle=60.000, radius=\\radius] -- cycle;\n");
printf("          %%\\fill[fill=\\colF, rotate=360.000] (0, 0) -- (0:\\radius) arc[start angle=0, end angle=60.000, radius=\\radius] -- cycle;\n");
printf("          \\draw (0, 0) circle[radius=\\radius];\n");
printf("          \\draw (0, 0) -- (A);\n");
printf("          \\draw (0, 0) -- (B);\n");
printf("          %%\\draw (0, 0) -- (C);\n");
printf("          \\draw (0, 0) -- (D);\n");
printf("          %%\\draw (0, 0) -- (E);\n");
printf("          %%\\draw (0, 0) -- (F);\n");
printf("          \\filldraw[fill=white, draw=black] (0, 0) circle[radius=2pt];\n");
printf("          \\begin{scope}\n");
printf("            \\clip (0, 0) circle[radius=\\radius];\n");
printf("            \\draw[line width=2pt] (A) -- ($(A)!2mm!0:(0, 0)$);\n");
printf("            \\draw[line width=2pt] (B) -- ($(B)!2mm!0:(0, 0)$);\n");
printf("            %%\\draw[line width=2pt] (C) -- ($(C)!2mm!0:(0, 0)$);\n");
printf("            \\draw[line width=2pt] (D) -- ($(D)!2mm!0:(0, 0)$);\n");
printf("            %%\\draw[line width=2pt] (E) -- ($(E)!2mm!0:(0, 0)$);\n");
printf("            %%\\draw[line width=2pt] (F) -- ($(F)!2mm!0:(0, 0)$);\n");
printf("          \\end{scope}\n");
printf("          \\fill[fill=black] (0, \\radius+3mm) circle[radius=3pt];\n");
printf("          \\draw[line width=2pt, cap=round] (0, \\radius+3mm) -- (0, \\radius-2mm);\n");
printf("        \\end{scope}\n");
printf("      \\end{tikzpicture}\n");
printf("      %%</OCTAVE>\n");
printf("      %%mywof(6)\n");
printf("      \\par\n");
printf("      %%<OCTAVE>\n");
printf("      \\begin{tikzpicture}\n");
printf("        %% tree\n");
printf("        \\begin{scope}[line width=0.7pt]\n");
printf("          %% some default colors\n");
printf("          \\newcommand{\\colr}{Red};%%\n");
printf("          \\newcommand{\\colg}{ForestGreen};%%\n");
printf("          \\newcommand{\\colb}{Cerulean};%%\n");
printf("          \\newcommand{\\coly}{YellowOrange};%%\n");
printf("          \\newcommand{\\cola}{Black!35!White};%%\n");
printf("          \\newcommand{\\cole}{Black!55!White};%%\n");
printf("          %% size settings\n");
printf("          \\newcommand{\\radius}{2mm}%%\n");
printf("          \\newcommand{\\xscale}{2.8}%%\n");
printf("          \\newcommand{\\yscale}{7}%%\n");
printf("          %% background color of nodes\n");
printf("          \\newcommand{\\colora}{\\colg}%%\n");
printf("          \\newcommand{\\colorb}{\\colr}%%\n");
printf("          \\newcommand{\\colorc}{\\colb}%%\n");
printf("          %% default node text\n");
printf("          \\newcommand{\\ntexta}{}%%\n");
printf("          \\newcommand{\\ntextb}{}%%\n");
printf("          \\newcommand{\\ntextc}{}%%\n");
printf("          %% default edge text\n");
printf("          \\newcommand{\\etexta}{$\\frac{1}{6}$}%%\n");
printf("          \\newcommand{\\etextb}{$\\frac{2}{6}$}%%\n");
printf("          \\newcommand{\\etextc}{$\\frac{3}{6}$}%%\n");
printf("          %% geometry\n");
printf("          \\coordinate (Z)   at (13.000*\\xscale*\\radius,  3.000*\\yscale*\\radius);\n");
printf("          \\coordinate (A)   at ( 4.000*\\xscale*\\radius,  2.000*\\yscale*\\radius);\n");
printf("          \\coordinate (B)   at (13.000*\\xscale*\\radius,  2.000*\\yscale*\\radius);\n");
printf("          \\coordinate (C)   at (22.000*\\xscale*\\radius,  2.000*\\yscale*\\radius);\n");
printf("          \\coordinate (AA)  at ( 1.000*\\xscale*\\radius,  1.000*\\yscale*\\radius);\n");
printf("          \\coordinate (AB)  at ( 4.000*\\xscale*\\radius,  1.000*\\yscale*\\radius);\n");
printf("          \\coordinate (AC)  at ( 7.000*\\xscale*\\radius,  1.000*\\yscale*\\radius);\n");
printf("          \\coordinate (BA)  at (10.000*\\xscale*\\radius,  1.000*\\yscale*\\radius);\n");
printf("          \\coordinate (BB)  at (13.000*\\xscale*\\radius,  1.000*\\yscale*\\radius);\n");
printf("          \\coordinate (BC)  at (16.000*\\xscale*\\radius,  1.000*\\yscale*\\radius);\n");
printf("          \\coordinate (CA)  at (19.000*\\xscale*\\radius,  1.000*\\yscale*\\radius);\n");
printf("          \\coordinate (CB)  at (22.000*\\xscale*\\radius,  1.000*\\yscale*\\radius);\n");
printf("          \\coordinate (CC)  at (25.000*\\xscale*\\radius,  1.000*\\yscale*\\radius);\n");
printf("          \\coordinate (AAA) at ( 0.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (AAB) at ( 1.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (AAC) at ( 2.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (ABA) at ( 3.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (ABB) at ( 4.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (ABC) at ( 5.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (ACA) at ( 6.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (ACB) at ( 7.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (ACC) at ( 8.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (BAA) at ( 9.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (BAB) at (10.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (BAC) at (11.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (BBA) at (12.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (BBB) at (13.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (BBC) at (14.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (BCA) at (15.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (BCB) at (16.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (BCC) at (17.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (CAA) at (18.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (CAB) at (19.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (CAC) at (20.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (CBA) at (21.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (CBB) at (22.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (CBC) at (23.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (CCA) at (24.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (CCB) at (25.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (CCC) at (26.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          %% edges\n");
printf("          \\draw  (Z) -- (A);\n");
printf("          \\draw  (Z) -- (B);\n");
printf("          \\draw  (Z) -- (C);\n");
printf("          \\draw  (A) -- (AA);\n");
printf("          \\draw  (A) -- (AB);\n");
printf("          \\draw  (A) -- (AC);\n");
printf("          \\draw  (B) -- (BA);\n");
printf("          \\draw  (B) -- (BB);\n");
printf("          \\draw  (B) -- (BC);\n");
printf("          \\draw  (C) -- (CA);\n");
printf("          \\draw  (C) -- (CB);\n");
printf("          \\draw  (C) -- (CC);\n");
printf("          \\draw (AA) -- (AAA);\n");
printf("          \\draw (AA) -- (AAB);\n");
printf("          \\draw (AA) -- (AAC);\n");
printf("          \\draw (AB) -- (ABA);\n");
printf("          \\draw (AB) -- (ABB);\n");
printf("          \\draw (AB) -- (ABC);\n");
printf("          \\draw (AC) -- (ACA);\n");
printf("          \\draw (AC) -- (ACB);\n");
printf("          \\draw (AC) -- (ACC);\n");
printf("          \\draw (BA) -- (BAA);\n");
printf("          \\draw (BA) -- (BAB);\n");
printf("          \\draw (BA) -- (BAC);\n");
printf("          \\draw (BB) -- (BBA);\n");
printf("          \\draw (BB) -- (BBB);\n");
printf("          \\draw (BB) -- (BBC);\n");
printf("          \\draw (BC) -- (BCA);\n");
printf("          \\draw (BC) -- (BCB);\n");
printf("          \\draw (BC) -- (BCC);\n");
printf("          \\draw (CA) -- (CAA);\n");
printf("          \\draw (CA) -- (CAB);\n");
printf("          \\draw (CA) -- (CAC);\n");
printf("          \\draw (CB) -- (CBA);\n");
printf("          \\draw (CB) -- (CBB);\n");
printf("          \\draw (CB) -- (CBC);\n");
printf("          \\draw (CC) -- (CCA);\n");
printf("          \\draw (CC) -- (CCB);\n");
printf("          \\draw (CC) -- (CCC);\n");
printf("          %% root\n");
printf("          \\fill[fill=black] (Z) circle[radius=2pt];\n");
printf("          %% nodes\n");
printf("          \\filldraw[fill=\\colora, draw=black] (A)   circle[radius=\\radius] node{\\ntexta};\n");
printf("          \\filldraw[fill=\\colorb, draw=black] (B)   circle[radius=\\radius] node{\\ntextb};\n");
printf("          \\filldraw[fill=\\colorc, draw=black] (C)   circle[radius=\\radius] node{\\ntextc};\n");
printf("          \\filldraw[fill=\\colora, draw=black] (AA)  circle[radius=\\radius] node{\\ntexta};\n");
printf("          \\filldraw[fill=\\colorb, draw=black] (AB)  circle[radius=\\radius] node{\\ntextb};\n");
printf("          \\filldraw[fill=\\colorc, draw=black] (AC)  circle[radius=\\radius] node{\\ntextc};\n");
printf("          \\filldraw[fill=\\colora, draw=black] (BA)  circle[radius=\\radius] node{\\ntexta};\n");
printf("          \\filldraw[fill=\\colorb, draw=black] (BB)  circle[radius=\\radius] node{\\ntextb};\n");
printf("          \\filldraw[fill=\\colorc, draw=black] (BC)  circle[radius=\\radius] node{\\ntextc};\n");
printf("          \\filldraw[fill=\\colora, draw=black] (CA)  circle[radius=\\radius] node{\\ntexta};\n");
printf("          \\filldraw[fill=\\colorb, draw=black] (CB)  circle[radius=\\radius] node{\\ntextb};\n");
printf("          \\filldraw[fill=\\colorc, draw=black] (CC)  circle[radius=\\radius] node{\\ntextc};\n");
printf("          \\filldraw[fill=\\colora, draw=black] (AAA) circle[radius=\\radius] node{\\ntexta};\n");
printf("          \\filldraw[fill=\\colorb, draw=black] (AAB) circle[radius=\\radius] node{\\ntextb};\n");
printf("          \\filldraw[fill=\\colorc, draw=black] (AAC) circle[radius=\\radius] node{\\ntextc};\n");
printf("          \\filldraw[fill=\\colora, draw=black] (ABA) circle[radius=\\radius] node{\\ntexta};\n");
printf("          \\filldraw[fill=\\colorb, draw=black] (ABB) circle[radius=\\radius] node{\\ntextb};\n");
printf("          \\filldraw[fill=\\colorc, draw=black] (ABC) circle[radius=\\radius] node{\\ntextc};\n");
printf("          \\filldraw[fill=\\colora, draw=black] (ACA) circle[radius=\\radius] node{\\ntexta};\n");
printf("          \\filldraw[fill=\\colorb, draw=black] (ACB) circle[radius=\\radius] node{\\ntextb};\n");
printf("          \\filldraw[fill=\\colorc, draw=black] (ACC) circle[radius=\\radius] node{\\ntextc};\n");
printf("          \\filldraw[fill=\\colora, draw=black] (BAA) circle[radius=\\radius] node{\\ntexta};\n");
printf("          \\filldraw[fill=\\colorb, draw=black] (BAB) circle[radius=\\radius] node{\\ntextb};\n");
printf("          \\filldraw[fill=\\colorc, draw=black] (BAC) circle[radius=\\radius] node{\\ntextc};\n");
printf("          \\filldraw[fill=\\colora, draw=black] (BBA) circle[radius=\\radius] node{\\ntexta};\n");
printf("          \\filldraw[fill=\\colorb, draw=black] (BBB) circle[radius=\\radius] node{\\ntextb};\n");
printf("          \\filldraw[fill=\\colorc, draw=black] (BBC) circle[radius=\\radius] node{\\ntextc};\n");
printf("          \\filldraw[fill=\\colora, draw=black] (BCA) circle[radius=\\radius] node{\\ntexta};\n");
printf("          \\filldraw[fill=\\colorb, draw=black] (BCB) circle[radius=\\radius] node{\\ntextb};\n");
printf("          \\filldraw[fill=\\colorc, draw=black] (BCC) circle[radius=\\radius] node{\\ntextc};\n");
printf("          \\filldraw[fill=\\colora, draw=black] (CAA) circle[radius=\\radius] node{\\ntexta};\n");
printf("          \\filldraw[fill=\\colorb, draw=black] (CAB) circle[radius=\\radius] node{\\ntextb};\n");
printf("          \\filldraw[fill=\\colorc, draw=black] (CAC) circle[radius=\\radius] node{\\ntextc};\n");
printf("          \\filldraw[fill=\\colora, draw=black] (CBA) circle[radius=\\radius] node{\\ntexta};\n");
printf("          \\filldraw[fill=\\colorb, draw=black] (CBB) circle[radius=\\radius] node{\\ntextb};\n");
printf("          \\filldraw[fill=\\colorc, draw=black] (CBC) circle[radius=\\radius] node{\\ntextc};\n");
printf("          \\filldraw[fill=\\colora, draw=black] (CCA) circle[radius=\\radius] node{\\ntexta};\n");
printf("          \\filldraw[fill=\\colorb, draw=black] (CCB) circle[radius=\\radius] node{\\ntextb};\n");
printf("          \\filldraw[fill=\\colorc, draw=black] (CCC) circle[radius=\\radius] node{\\ntextc};\n");
printf("          %% label macros\n");
printf("          \\newcommand{\\rlabel}[4]%%\n");
printf("          {%%\n");
printf("            \\coordinate (TEMP) at ($(#1)!0.5!(#2)$);\n");
printf("            \\coordinate (TEMP) at ($(TEMP)!#3!270:(#2)$);\n");
printf("            \\node at (TEMP) {#4};\n");
printf("          }%%\n");
printf("          \\newcommand{\\llabel}[4]{\\rlabel{#2}{#1}{#3}{#4}};\n");
printf("          \\newcommand{\\tshift}[3]%%\n");
printf("          {%%\n");
printf("            \\rule{0pt}{#1}#3\\rule{#2}{0pt}%%\n");
printf("          }%%\n");
printf("          %% edge labels\n");
printf("          \\rlabel{Z}{A}{3mm}{\\etexta};\n");
printf("          \\llabel{Z}{B}{2mm}{\\etextb};\n");
printf("          \\llabel{Z}{C}{3mm}{\\etextc};\n");
printf("          \\rlabel{A}{AA}{3mm}{\\etexta};\n");
printf("          \\llabel{A}{AB}{2mm}{\\etextb};\n");
printf("          \\llabel{A}{AC}{3mm}{\\etextc};\n");
printf("          \\rlabel{B}{BA}{3mm}{\\etexta};\n");
printf("          \\llabel{B}{BB}{2mm}{\\etextb};\n");
printf("          \\llabel{B}{BC}{3mm}{\\etextc};\n");
printf("          \\rlabel{C}{CA}{3mm}{\\etexta};\n");
printf("          \\llabel{C}{CB}{2mm}{\\etextb};\n");
printf("          \\llabel{C}{CC}{3mm}{\\etextc};\n");
printf("          \\rlabel{AA}{AAA}{3mm}{\\etexta};\n");
printf("          \\llabel{AA}{AAB}{2mm}{\\tshift{3.75ex}{1.0ex}{\\etextb}};\n");
printf("          \\llabel{AA}{AAC}{3mm}{\\etextc};\n");
printf("          \\rlabel{AB}{ABA}{3mm}{\\etexta};\n");
printf("          \\llabel{AB}{ABB}{2mm}{\\tshift{3.75ex}{1.0ex}{\\etextb}};\n");
printf("          \\llabel{AB}{ABC}{3mm}{\\etextc};\n");
printf("          \\rlabel{AC}{ACA}{3mm}{\\etexta};\n");
printf("          \\llabel{AC}{ACB}{2mm}{\\tshift{3.75ex}{1.0ex}{\\etextb}};\n");
printf("          \\llabel{AC}{ACC}{3mm}{\\etextc};\n");
printf("          \\rlabel{BA}{BAA}{3mm}{\\etexta};\n");
printf("          \\llabel{BA}{BAB}{2mm}{\\tshift{3.75ex}{1.0ex}{\\etextb}};\n");
printf("          \\llabel{BA}{BAC}{3mm}{\\etextc};\n");
printf("          \\rlabel{BB}{BBA}{3mm}{\\etexta};\n");
printf("          \\llabel{BB}{BBB}{2mm}{\\tshift{3.75ex}{1.0ex}{\\etextb}};\n");
printf("          \\llabel{BB}{BBC}{3mm}{\\etextc};\n");
printf("          \\rlabel{BC}{BCA}{3mm}{\\etexta};\n");
printf("          \\llabel{BC}{BCB}{2mm}{\\tshift{3.75ex}{1.0ex}{\\etextb}};\n");
printf("          \\llabel{BC}{BCC}{3mm}{\\etextc};\n");
printf("          \\rlabel{CA}{CAA}{3mm}{\\etexta};\n");
printf("          \\llabel{CA}{CAB}{2mm}{\\tshift{3.75ex}{1.0ex}{\\etextb}};\n");
printf("          \\llabel{CA}{CAC}{3mm}{\\etextc};\n");
printf("          \\rlabel{CB}{CBA}{3mm}{\\etexta};\n");
printf("          \\llabel{CB}{CBB}{2mm}{\\tshift{3.75ex}{1.0ex}{\\etextb}};\n");
printf("          \\llabel{CB}{CBC}{3mm}{\\etextc};\n");
printf("          \\rlabel{CC}{CCA}{3mm}{\\etexta};\n");
printf("          \\llabel{CC}{CCB}{2mm}{\\tshift{3.75ex}{1.0ex}{\\etextb}};\n");
printf("          \\llabel{CC}{CCC}{3mm}{\\etextc};\n");
printf("          %% path numbers\n");
printf("          \\node[below=\\radius] at (AAA) {$E_1$};\n");
printf("          \\node[below=\\radius] at (AAB) {};\n");
printf("          \\node[below=\\radius] at (AAC) {};\n");
printf("          \\node[below=\\radius] at (ABA) {};\n");
printf("          \\node[below=\\radius] at (ABB) {};\n");
printf("          \\node[below=\\radius] at (ABC) {$E_2$};\n");
printf("          \\node[below=\\radius] at (ACA) {};\n");
printf("          \\node[below=\\radius] at (ACB) {$E_2$};\n");
printf("          \\node[below=\\radius] at (ACC) {};\n");
printf("          \\node[below=\\radius] at (BAA) {};\n");
printf("          \\node[below=\\radius] at (BAB) {};\n");
printf("          \\node[below=\\radius] at (BAC) {$E_2$};\n");
printf("          \\node[below=\\radius] at (BBA) {};\n");
printf("          \\node[below=\\radius] at (BBB) {$E_1$};\n");
printf("          \\node[below=\\radius] at (BBC) {};\n");
printf("          \\node[below=\\radius] at (BCA) {$E_2$};\n");
printf("          \\node[below=\\radius] at (BCB) {};\n");
printf("          \\node[below=\\radius] at (BCC) {};\n");
printf("          \\node[below=\\radius] at (CAA) {};\n");
printf("          \\node[below=\\radius] at (CAB) {$E_2$};\n");
printf("          \\node[below=\\radius] at (CAC) {};\n");
printf("          \\node[below=\\radius] at (CBA) {$E_2$};\n");
printf("          \\node[below=\\radius] at (CBB) {};\n");
printf("          \\node[below=\\radius] at (CBC) {};\n");
printf("          \\node[below=\\radius] at (CCA) {};\n");
printf("          \\node[below=\\radius] at (CCB) {};\n");
printf("          \\node[below=\\radius] at (CCC) {$E_1$};\n");
printf("        \\end{scope}\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("    %% </OUTLINE>\n");
printf("  \\fi\n");
printf("  %%\\ifoutcome\\outcome\\par\n");
printf("    %% <OUTCOME>\n");
printf("    %% </OUTCOME>\n");
printf("  %%\\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

