clear all;

addpath 'Octave/';

% Werte aus der Aufgabenstellung
freunde                = 440;
ohneAngabe             = 196;
mitBeziehung           = 288;
mitAngabeOhneBeziehung = 116;

% Aufteilung der Vierfeldertafel
mang = [1 true];  % Status angegeben
oang = [1 false]; % Status nicht angegeben
mbez = [2 true];  % in einer Beziehung
obez = [2 false]; % nicht in einer Beziehung

% vorgegebene Werte
A = fofota_init();
A = fofota_settot(A,             freunde);
A = fofota_setsum(A, oang,       ohneAngabe);
A = fofota_setsum(A, mbez,       mitBeziehung);
A = fofota_setand(A, mang, obez, mitAngabeOhneBeziehung);

% vollstaendige Vierfeldertafel
B = fofota_complete(A);

% relative Haeufigkeiten
C = B ./ fofota_gettot(B);

% Wahrscheinlichkeiten fuer das Baumdiagramm
P1pos       = fofota_getsum   (C, mbez);
P1neg       = fofota_getsum   (C, obez);
P_1pos_2pos = fofota_condprob (C, mbez, mang);
P_1pos_2neg = fofota_condprob (C, mbez, oang);
P_1neg_2pos = fofota_condprob (C, obez, mang);
P_1neg_2neg = fofota_condprob (C, obez, oang);
P1pos2pos   = fofota_getand   (C, mbez, mang);
P1pos2neg   = fofota_getand   (C, mbez, oang);
P1neg2pos   = fofota_getand   (C, obez, mang);
P1neg2neg   = fofota_getand   (C, obez, oang);

% Wahrscheinlichkeiten fuer Aufgabe c) und d) in [%]
nrcP = fofota_getand   (C, mbez, mang) * 100;
nrdP = fofota_condprob (C, obez, mang) * 100;

% Formatierung
ins_freunde                = sprintf("%d", freunde);
ins_ohneAngabe             = sprintf("%d", ohneAngabe);
ins_mitBeziehung           = sprintf("%d", mitBeziehung);
ins_mitAngabeOhneBeziehung = sprintf("%d", mitAngabeOhneBeziehung);
ins_A                      = fofota_cat(A, "%d");
ins_B                      = fofota_cat(B, "%d");
ins_C                      = fofota_cat(C, "%.6f");
ins_P1pos                  = sprintf("%.3f", P1pos);
ins_P1neg                  = sprintf("%.3f", P1neg);
ins_P_1pos_2pos            = sprintf("%.3f", P_1pos_2pos);
ins_P_1pos_2neg            = sprintf("%.3f", P_1pos_2neg);
ins_P_1neg_2pos            = sprintf("%.3f", P_1neg_2pos);
ins_P_1neg_2neg            = sprintf("%.3f", P_1neg_2neg);
ins_P1pos2pos              = sprintf("%.3f", P1pos2pos);
ins_P1pos2neg              = sprintf("%.3f", P1pos2neg);
ins_P1neg2pos              = sprintf("%.3f", P1neg2pos);
ins_P1neg2neg              = sprintf("%.3f", P1neg2neg);
ins_nrcP                   = sprintf("%.1f", nrcP);
ins_nrdP                   = sprintf("%.1f", nrdP);

printf("\\begin{exercise}\n");
printf("      {ID-2b08229d39b094fb81c38059c4d9f77e20dc37ed}\n");
printf("      {Beziehungsstatus}\n");
printf("  \\ifproblem\\problem\n");
printf("    \\num{%s} deiner \\num{%s} Facebook-Freunde haben ihren Beziehungsstatus nicht angegeben.\n", ins_ohneAngabe, ins_freunde);
printf("    Da du natürlich alle persönlich kennst, weißt du, dass insgesamt \\num{%s} deiner\n", ins_mitBeziehung);
printf("    Face\\-book-Freunde in einer Beziehung sind. \\num{%s} von denen, die ihren\n", ins_mitAngabeOhneBeziehung);
printf("    Beziehungsstatus angegeben haben, sind single.\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Erstelle mit den Informationen aus dem Text eine Vierfeldertafel,\n");
printf("            und ergänze alle fehlenden Werte.\n");
printf("      \\item Erstelle mit den Informationen aus der Vierfeldertafel ein\n");
printf("            vollständiges Baumdiagramm auf dessen erster Stufe der\n");
printf("            tatsächliche Beziehungsstatus unterschieden wird.\n");
printf("      \\item Wie wahrscheinlich ist es, dass jemand in einer Beziehung\n");
printf("            ist und dies auch bei Facebook angibt?\n");
printf("      \\item Wie groß ist die Wahrscheinlichkeit, dass jemand, der Single ist,\n");
printf("            dies auch bei Facebook angibt?\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Eine Vierfeldertafel mit den Angaben aus dem Text\n");
printf("            könnte z.\\,B. so aussehen:\n");
printf("            \\begin{center}\n");
printf("              \\begin{minipage}{0.36\\linewidth}\n");
printf("                \\begin{itemize}\n");
printf("                  \\setlength{\\leftskip}{0pt}%%\n");
printf("                  \\setlength{\\itemsep}{-0.1\\baselineskip}%%\n");
printf("                  \\item[$A$:]            Status angegeben\n");
printf("                  \\item[$\\overline{A}$:] Status nicht angegeben\n");
printf("                  \\item[$B$:]            ist in einer Beziehung\n");
printf("                  \\item[$\\overline{B}$:] ist nicht in einer Beziehung\n");
printf("                \\end{itemize}\n");
printf("              \\end{minipage}\n");
printf("              \\qquad\n");
printf("              \\begin{fourfoldtable}\n");
printf("                \\Apos{$A$}%%\n");
printf("                \\Aneg{$\\overline{A}$}%%\n");
printf("                \\Bpos{$B$}%%\n");
printf("                \\Bneg{$\\overline{B}$}%%\n");
printf("                %s%%\n", ins_A);
printf("              \\end{fourfoldtable}\n");
printf("            \\end{center}\n");
printf("      \\item Berechne die bedingten Wahrscheinlichkeiten, indem du die\n");
printf("            jeweiligen Pfadregeln umformst!\n");
printf("      \\item Gesucht ist: $P(A\\cap B)$\n");
printf("      \\item Gesucht ist: $P_{\\overline{B}}(A)$\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Eine vollständige Vierfeldertafel könnte z.\\,B. so aussehen:\n");
printf("            \\begin{center}\n");
printf("              \\begin{minipage}{0.36\\linewidth}\n");
printf("                \\begin{itemize}\n");
printf("                  \\setlength{\\leftskip}{0pt}%%\n");
printf("                  \\setlength{\\itemsep}{-0.1\\baselineskip}%%\n");
printf("                  \\item[$A$:]            Status angegeben\n");
printf("                  \\item[$\\overline{A}$:] Status nicht angegeben\n");
printf("                  \\item[$B$:]            ist in einer Beziehung\n");
printf("                  \\item[$\\overline{B}$:] ist nicht in einer Beziehung\n");
printf("                \\end{itemize}\n");
printf("              \\end{minipage}\n");
printf("              \\qquad\n");
printf("              \\begin{fourfoldtable}\n");
printf("                \\Apos{$A$}%%\n");
printf("                \\Aneg{$\\overline{A}$}%%\n");
printf("                \\Bpos{$B$}%%\n");
printf("                \\Bneg{$\\overline{B}$}%%\n");
printf("                %s%%\n", ins_B);
printf("              \\end{fourfoldtable}\n");
printf("            \\end{center}\n");
printf("             Wenn man die relativen Häufigkeiten berechnet, erhält man\n");
printf("             folgende Vierfeldertafel:\n");
printf("             \\begin{center}\n");
printf("               \\begin{fourfoldtable}\n");
printf("                 \\Apos{$A$}%%\n");
printf("                 \\Aneg{$\\overline{A}$}%%\n");
printf("                 \\Bpos{$B$}%%\n");
printf("                 \\Bneg{$\\overline{B}$}%%\n");
printf("                 \\numbers{128}{160}{288}{116}{36}{152}{244}{196}{440}%%\n");
printf("                 %s%%\n", ins_C);
printf("               \\end{fourfoldtable}\n");
printf("             \\end{center}\n");
printf("      \\item Als Baumdiagramm lässt sich der Sachverhalt wie folgt\n");
printf("            darstellen:\n");
printf("            \\begin{center}\n");
printf("              \\begin{tikzpicture}\n");
printf("                %% labels\n");
printf("                \\newcommand{\\lvlApos}  {\\ensuremath{B}}%%\n");
printf("                \\newcommand{\\lvlAneg}  {\\ensuremath{\\overline{B}}}%%\n");
printf("                \\newcommand{\\lvlBpos}  {\\ensuremath{A}}%%\n");
printf("                \\newcommand{\\lvlBneg}  {\\ensuremath{\\overline{A}}}%%\n");
printf("                \\newcommand{\\pApos}    {\\num{%s}}%%\n", ins_P1pos);
printf("                \\newcommand{\\pAneg}    {\\num{%s}}%%\n", ins_P1neg);
printf("                \\newcommand{\\pAposBpos}{\\num{%s}}%%\n", ins_P_1pos_2pos);
printf("                \\newcommand{\\pAposBneg}{\\num{%s}}%%\n", ins_P_1pos_2neg);
printf("                \\newcommand{\\pAnegBpos}{\\num{%s}}%%\n", ins_P_1neg_2pos);
printf("                \\newcommand{\\pAnegBneg}{\\num{%s}}%%\n", ins_P_1neg_2neg);
printf("                \\newcommand{\\PAposBpos}{$P(\\lvlApos\\cap\\lvlBpos)\\approx\\num{%s}$}%%\n", ins_P1pos2pos);
printf("                \\newcommand{\\PAposBneg}{$P(\\lvlApos\\cap\\lvlBneg)\\approx\\num{%s}$}%%\n", ins_P1pos2neg);
printf("                \\newcommand{\\PAnegBpos}{$P(\\lvlAneg\\cap\\lvlBpos)\\approx\\num{%s}$}%%\n", ins_P1neg2pos);
printf("                \\newcommand{\\PAnegBneg}{$P(\\lvlAneg\\cap\\lvlBneg)\\approx\\num{%s}$}%%\n", ins_P1neg2neg);
printf("                %% spacing\n");
printf("                \\newcommand{\\radius}{5mm}%%\n");
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
printf("                \\draw (B) -- node[below=2pt]     {\\pAposBneg} (E);\n");
printf("                \\draw (C) -- node[above=1pt]     {\\pAnegBpos} (F);\n");
printf("                \\draw (C) -- node[below=2pt]     {\\pAnegBneg} (G);\n");
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
printf("      \\item Die Wahrscheinlichkeit dafür, dass jemand in einer Beziehung\n");
printf("            ist und dies auch bei Facebook angibt, liegt bei etwa\n");
printf("            \\pc{%s}.\n", ins_nrcP);
printf("      \\item Die Wahrscheinlichkeit dafür, dass jemand, der Single ist,\n");
printf("            dies auch bei Facebook angibt, liegt bei etwa \\pc{%s}.\n", ins_nrdP);
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

