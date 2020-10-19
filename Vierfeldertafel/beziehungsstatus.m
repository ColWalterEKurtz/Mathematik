clear all;

addpath 'Octave/';

% Werte aus der Aufgabenstellung
freunde         = 440;
keinenStatus    = 196;
beziehung       = 288;
statusUndSingle = 116;

% Aufteilung der Vierfeldertafel
sta = [1 true];
kst = [1 false];
bez = [2 true];
sng = [2 false];

% vorgegebene Werte
A = fofota_init();
A = fofota_setsum(A, bez,      beziehung);
A = fofota_setand(A, sta, sng, statusUndSingle);
A = fofota_setsum(A, kst,      keinenStatus);
A = fofota_settot(A,           freunde);

% vollstaendige Vierfeldertafel
B = fofota_complete(A);

% relative Haeufigkeiten
C = B ./ fofota_gettot(B);

% Wahrscheinlichkeiten fuer das Baumdiagramm
Psta      = fofota_getsum(C, sta);
Pkst      = fofota_getsum(C, kst);
P_sta_bez = fofota_condprob(C, sta, bez);
P_sta_sng = fofota_condprob(C, sta, sng);
P_kst_bez = fofota_condprob(C, kst, bez);
P_kst_sng = fofota_condprob(C, kst, sng);
Pstabez   = fofota_getand(C, sta, bez);
Pstasng   = fofota_getand(C, sta, sng);
Pkstbez   = fofota_getand(C, kst, bez);
Pkstsng   = fofota_getand(C, kst, sng);

% Wahrscheinlichkeiten fuer c) und d) in [%]
nrcP = Pstabez * 100;
nrdP = fofota_condprob(C, sng, sta) * 100;

% Formatierung
ins_freunde         = sprintf("%d", freunde);
ins_keinenStatus    = sprintf("%d", keinenStatus);
ins_beziehung       = sprintf("%d", beziehung);
ins_statusUndSingle = sprintf("%d", statusUndSingle);
ins_Psta            = sprintf("%.3f", Psta);
ins_Pkst            = sprintf("%.3f", Pkst);
ins_P_sta_bez       = sprintf("%.3f", P_sta_bez);
ins_P_sta_sng       = sprintf("%.3f", P_sta_sng);
ins_P_kst_bez       = sprintf("%.3f", P_kst_bez);
ins_P_kst_sng       = sprintf("%.3f", P_kst_sng);
ins_Pstabez         = sprintf("%.3f", Pstabez);
ins_Pstasng         = sprintf("%.3f", Pstasng);
ins_Pkstbez         = sprintf("%.3f", Pkstbez);
ins_Pkstsng         = sprintf("%.3f", Pkstsng);
ins_nrcP            = sprintf("%.1f", nrcP);
ins_nrdP            = sprintf("%.1f", nrdP);

printf("\\begin{exercise}\n");
printf("      {ID-2b08229d39b094fb81c38059c4d9f77e20dc37ed}\n");
printf("      {Beziehungsstatus}\n");
printf("  \\ifproblem\\problem\n");
printf("    \\num{%s} deiner \\num{%s} Facebook-Freunde haben ihren Beziehungsstatus nicht angegeben.\n", ins_keinenStatus, ins_freunde);
printf("    Da du natürlich alle persönlich kennst, weißt du, dass insgesamt \\num{%s} deiner\n", ins_beziehung);
printf("    Face\\-book-Freunde in einer Beziehung sind. \\num{%s} von denen, die ihren\n", ins_statusUndSingle);
printf("    Beziehungsstatus angegeben haben, sind single.\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Erstelle mit den Informationen aus dem Text eine Vierfeldertafel,\n");
printf("            und ergänze alle fehlenden Werte.\n");
printf("      \\item Leite aus den Daten der Vierfeldertafel ein vollständiges\n");
printf("            Baumdiagramm ab, und zeichne dieses.\n");
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
printf("              \\begin{fourfoldtable}\n");
printf("                \\Apos{Status}%%\n");
printf("                \\Aneg{$\\overline{\\text{Status}}$}%%\n");
printf("                \\Bpos{Beziehung}%%\n");
printf("                \\Bneg{Single}%%\n");
printf("                %s%%\n", fofota_cat(A, "%d"));
printf("              \\end{fourfoldtable}\n");
printf("            \\end{center}\n");
printf("      \\item Berechne die bedingten Wahrscheinlichkeiten, indem du die\n");
printf("            jeweiligen Pfadregeln umformst!\n");
printf("      \\item Gesucht ist: $P(\\text{Status}\\cap\\text{Beziehung})$\n");
printf("      \\item Gesucht ist: $P_\\text{Single}(\\text{Status})$\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Vollständige Vierfeldertafeln mit den Angaben aus dem Text\n");
printf("            könnten z.\\,B. so aussehen:\\par\n");
printf("            \\begin{fourfoldtable}\n");
printf("              \\Apos{Status}%%\n");
printf("              \\Aneg{$\\overline{\\text{Status}}$}%%\n");
printf("              \\Bpos{Beziehung}%%\n");
printf("              \\Bneg{Single}%%\n");
printf("              %s%%\n", fofota_cat(B, "%d"));
printf("            \\end{fourfoldtable}%%\n");
printf("            \\hfill\n");
printf("            \\begin{fourfoldtable}\n");
printf("              \\Apos{Status}%%\n");
printf("              \\Aneg{$\\overline{\\text{Status}}$}%%\n");
printf("              \\Bpos{Beziehung}%%\n");
printf("              \\Bneg{Single}%%\n");
printf("              %s%%\n", fofota_cat(C, "%.3f"));
printf("            \\end{fourfoldtable}\n");
printf("      \\item Als Baumdiagramm lässt sich der Sachverhalt wie folgt\n");
printf("            darstellen:\n");
printf("            \\begin{center}\n");
printf("              \\begin{tikzpicture}\n");
printf("                %% labels\n");
printf("                \\newcommand{\\lvlApos}  {Sta}%%\n");
printf("                \\newcommand{\\lvlAneg}  {$\\overline{\\text{Sta}}$}%%\n");
printf("                \\newcommand{\\lvlBpos}  {Bez}%%\n");
printf("                \\newcommand{\\lvlBneg}  {Sin}%%\n");
printf("                \\newcommand{\\pApos}    {\\num{%s}}%%\n", ins_Psta);
printf("                \\newcommand{\\pAneg}    {\\num{%s}}%%\n", ins_Pkst);
printf("                \\newcommand{\\pAposBpos}{\\num{%s}}%%\n", ins_P_sta_bez);
printf("                \\newcommand{\\pAposBneg}{\\num{%s}}%%\n", ins_P_sta_sng);
printf("                \\newcommand{\\pAnegBpos}{\\num{%s}}%%\n", ins_P_kst_bez);
printf("                \\newcommand{\\pAnegBneg}{\\num{%s}}%%\n", ins_P_kst_sng);
printf("                \\newcommand{\\PAposBpos}{$P(\\text{\\lvlApos}\\cap\\text{\\lvlBpos})\\approx\\num{%s}$}%%\n", ins_Pstabez);
printf("                \\newcommand{\\PAposBneg}{$P(\\text{\\lvlApos}\\cap\\text{\\lvlBneg})\\approx\\num{%s}$}%%\n", ins_Pstasng);
printf("                \\newcommand{\\PAnegBpos}{$P(\\text{\\lvlAneg}\\cap\\text{\\lvlBpos})\\approx\\num{%s}$}%%\n", ins_Pkstbez);
printf("                \\newcommand{\\PAnegBneg}{$P(\\text{\\lvlAneg}\\cap\\text{\\lvlBneg})\\approx\\num{%s}$}%%\n", ins_Pkstsng);
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

