clear all;

addpath 'Octave/';

med = [1 true];
pla = [1 false];
ges = [2 true];
kra = [2 false];

A = fofota_init();
A = fofota_setand(A, med, ges, 6312);
A = fofota_setand(A, med, kra,   87);
A = fofota_setand(A, pla, ges,  312);
A = fofota_setand(A, pla, kra, 4390);

% vollstaendige Vierfeldertafel
B = fofota_complete(A);

% Anzahl aller Erkrankten
erkrankte = fofota_gettot(B);

% relative Haeufigkeiten
C = B ./ B(3, 3);

% totale Wahrscheinlichkeiten
PM = fofota_getsum(C, med);
PP = fofota_getsum(C, pla);
% Pfadwahrscheinlichkeiten
PMG  = fofota_getand(C, med, ges);
PMnG = fofota_getand(C, med, kra);
PPG  = fofota_getand(C, pla, ges);
PPnG = fofota_getand(C, pla, kra);
% bedingze Wahrscheinlichkeiten
P_M_G  = PMG  / PM;
P_M_nG = PMnG / PM;
P_P_G  = PPG  / PP;
P_P_nG = PPnG / PP;
% Aufgabe b) und c)
nrbP = P_M_G * 100;  % in [%]
nrcP = P_P_nG * 100; % in [%]

% Formatierung
ins_erkrankte = sprintf("%d", erkrankte);
ins_PM        = sprintf("%.3f", PM);
ins_PP        = sprintf("%.3f", PP);
ins_PMG       = sprintf("%.4f", PMG);
ins_PMnG      = sprintf("%.4f", PMnG);
ins_PPG       = sprintf("%.4f", PPG);
ins_PPnG      = sprintf("%.4f", PPnG);
ins_P_M_G     = sprintf("%.3f", P_M_G);
ins_P_M_nG    = sprintf("%.3f", P_M_nG);
ins_P_P_G     = sprintf("%.3f", P_P_G);
ins_P_P_nG    = sprintf("%.3f", P_P_nG);
ins_nrbP      = sprintf("%.1f", nrbP);
ins_nrcP      = sprintf("%.1f", nrcP);

printf("\\begin{exercise}\n");
printf("      {ID-4f571895f0bdd4bfff0c475224a7e8c573d8a892}\n");
printf("      {Großversuch}\n");
printf("  \\ifproblem\\problem\n");
printf("    In einem Großversuch wurde an \\num{%s} erkrankten Personen ein\n", ins_erkrankte);
printf("    Medikament getestet. Die Ergebnisse sind in einer Tabelle festgehalten.\n");
printf("    Dabei bedeuten:\n");
printf("    \\begin{center}\n");
printf("      \\begin{minipage}{0.45\\linewidth}\n");
printf("        \\begin{itemize}\n");
printf("          \\setlength{\\itemsep}{-0.1\\baselineskip}\n");
printf("          \\item[$M$:]            Medikament genommen\n");
printf("          \\item[$P$:]            Placebo genommen\n");
printf("          \\item[$G$:]            gesund geworden\n");
printf("          \\item[$\\overline{G}$:] nicht gesund geworden\n");
printf("        \\end{itemize}%%\n");
printf("      \\end{minipage}%%\n");
printf("      \\begin{minipage}{0.45\\linewidth}\n");
printf("        \\centering\n");
printf("        \\begin{fourfoldtable}\n");
printf("          \\Apos{$M$}%%\n");
printf("          \\Aneg{$P$}%%\n");
printf("          \\Bpos{$G$}%%\n");
printf("          \\Bneg{$\\overline{G}$}%%\n");
printf("          %s%%\n", fofota_cat(B, "%d"));
printf("        \\end{fourfoldtable}\n");
printf("      \\end{minipage}%%\n");
printf("    \\end{center}%%\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Stelle die relativen Häufigkeiten in einer Vierfeldertafel dar\n");
printf("            und zeichne das dazugehörige Baumdiagramm.\n");
printf("      \\item Wie groß ist die Wahrscheinlichkeit bei einer Person, von der\n");
printf("            man weiß, dass sie das Medikament eingenommen hat, zu gesunden?\n");
printf("      \\item Wie groß ist die Wahrscheinlichkeit bei einer Person, von der\n");
printf("            man weiß, dass sie das Placebo eingenommen hat, nicht zu gesunden?\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Wenn man die relativen Häufigkeiten auf vier Nachkommastellen\n");
printf("            rundet, könnte die Vierfeldertafel z.\\,B. so aussehen:\n");
printf("            \\begin{center}\n");
printf("              \\begin{fourfoldtable}\n");
printf("                \\Apos{$M$}%%\n");
printf("                \\Aneg{$P$}%%\n");
printf("                \\Bpos{$G$}%%\n");
printf("                \\Bneg{$\\overline{G}$}%%\n");
printf("                %s%%\n", fofota_cat(C, "%.4f"));
printf("              \\end{fourfoldtable}\n");
printf("            \\end{center}\n");
printf("            In Form eines Baumdiagramms könnte man den Sachverhalt\n");
printf("            wie folgt darstellen:\n");
printf("            \\begin{center}\n");
printf("              \\begin{tikzpicture}\n");
printf("                %% labels\n");
printf("                \\newcommand{\\lvlApos}  {$M$}%%\n");
printf("                \\newcommand{\\lvlAneg}  {$P$}%%\n");
printf("                \\newcommand{\\lvlBpos}  {$G$}%%\n");
printf("                \\newcommand{\\lvlBneg}  {$\\overline{G}$}%%\n");
printf("                \\newcommand{\\pApos}    {\\num{%s}}%%\n", ins_PM);
printf("                \\newcommand{\\pAneg}    {\\num{%s}}%%\n", ins_PP);
printf("                \\newcommand{\\pAposBpos}{\\num{%s}}%%\n", ins_P_M_G);
printf("                \\newcommand{\\pAposBneg}{\\num{%s}}%%\n", ins_P_M_nG);
printf("                \\newcommand{\\pAnegBpos}{\\num{%s}}%%\n", ins_P_P_G);
printf("                \\newcommand{\\pAnegBneg}{\\num{%s}}%%\n", ins_P_P_nG);
printf("                \\newcommand{\\PAposBpos}{$P(M\\cap G)\\approx\\num{%s}$}%%\n", ins_PMG);
printf("                \\newcommand{\\PAposBneg}{$P(M\\cap\\overline{G})\\approx\\num{%s}$}%%\n", ins_PMnG);
printf("                \\newcommand{\\PAnegBpos}{$P(P\\cap G)\\approx\\num{%s}$}%%\n", ins_PPG);
printf("                \\newcommand{\\PAnegBneg}{$P(P\\cap\\overline{G})\\approx\\num{%s}$}%%\n", ins_PPnG);
printf("                %% spacing\n");
printf("                \\newcommand{\\radius}{5.5mm}%%\n");
printf("                \\newcommand{\\vstrut}{\\vphantom{\\ensuremath{\\Big(}}}%%\n");
printf("                %% node positions\n");
printf("                \\coordinate (A) at (0,  0);\n");
printf("                \\coordinate (B) at (3*\\radius,  2.50*\\radius);\n");
printf("                \\coordinate (C) at (3*\\radius, -2.50*\\radius);\n");
printf("                \\coordinate (D) at (8*\\radius,  3.75*\\radius);\n");
printf("                \\coordinate (E) at (8*\\radius,  1.25*\\radius);\n");
printf("                \\coordinate (F) at (8*\\radius, -1.25*\\radius);\n");
printf("                \\coordinate (G) at (8*\\radius, -3.75*\\radius);\n");
printf("                %% edges\n");
printf("                \\draw (A) -- node[above left=1pt]{\\pApos}     (B);\n");
printf("                \\draw (A) -- node[below left=1pt]{\\pAneg}     (C);\n");
printf("                \\draw (B) -- node[above=1pt]     {\\pAposBpos} (D);\n");
printf("                \\draw (B) -- node[below=1pt]     {\\pAposBneg} (E);\n");
printf("                \\draw (C) -- node[above=1pt]     {\\pAnegBpos} (F);\n");
printf("                \\draw (C) -- node[below=1pt]     {\\pAnegBneg} (G);\n");
printf("                %% nodes\n");
printf("                \\fill[fill=black]                 (A) circle[radius=2pt];\n");
printf("                \\filldraw[fill=white, draw=black] (B) circle[radius=\\radius];\n");
printf("                \\filldraw[fill=white, draw=black] (C) circle[radius=\\radius];\n");
printf("                \\filldraw[fill=white, draw=black] (D) circle[radius=\\radius];\n");
printf("                \\filldraw[fill=white, draw=black] (E) circle[radius=\\radius];\n");
printf("                \\filldraw[fill=white, draw=black] (F) circle[radius=\\radius];\n");
printf("                \\filldraw[fill=white, draw=black] (G) circle[radius=\\radius];\n");
printf("                %% node names\n");
printf("                \\node at (B) {\\vstrut\\lvlApos};\n");
printf("                \\node at (C) {\\vstrut\\lvlAneg};\n");
printf("                \\node at (D) {\\vstrut\\lvlBpos};\n");
printf("                \\node at (E) {\\vstrut\\lvlBneg};\n");
printf("                \\node at (F) {\\vstrut\\lvlBpos};\n");
printf("                \\node at (G) {\\vstrut\\lvlBneg};\n");
printf("                %% path probabilities\n");
printf("                \\node[right=2*\\radius] at (D) {\\vstrut\\PAposBpos};\n");
printf("                \\node[right=2*\\radius] at (E) {\\vstrut\\PAposBneg};\n");
printf("                \\node[right=2*\\radius] at (F) {\\vstrut\\PAnegBpos};\n");
printf("                \\node[right=2*\\radius] at (G) {\\vstrut\\PAnegBneg};\n");
printf("              \\end{tikzpicture}\n");
printf("            \\end{center}\n");
printf("      \\item Die Wahrscheinlichkeit zu gesunden liegt bei einer Person,\n");
printf("            von der man weiß, dass sie das Medikament eingenommen hat,\n");
printf("            bei etwa \\pc{%s}.\n", ins_nrbP);
printf("      \\item Die Wahrscheinlichkeit nicht zu gesunden liegt bei einer Person,\n");
printf("            von der man weiß, dass sie das Placebo eingenommen hat,\n");
printf("            bei etwa \\pc{%s}.\n", ins_nrcP);
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

