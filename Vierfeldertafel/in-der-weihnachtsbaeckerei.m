clear all;

%%% addpath 'Octave/';

%%% NO CALCULATIONS YET %%%

printf("\\begin{exercise}\n");
printf("      {ID-ac8923a85b40ed61447a49c313d32ec44d42e646}\n");
printf("      {In der Weihnachtsbäckerei}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Oma hat für ihre Familie insgesamt 80 Plätzchen\n");
printf("    gebacken und in kleine Tütchen verpackt.\n");
printf("    Insgesamt haben 48 Plätzchen einen Überzug aus\n");
printf("    Schokolade, 20 haben eine Füllung mit Erdbeermarmelade.\n");
printf("    Unter diesen 48 bzw. 20 Plätzchen gibt es 12, die\n");
printf("    sogar beides haben: Schokoladenüberzug und\n");
printf("    Marmeladenfüllung.\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Erstelle eine Vierfeldertafel zu der\n");
printf("            genannten Situation.\n");
printf("      \\item Stelle die Situation in zwei\n");
printf("            Baumdiagrammen dar und gib die\n");
printf("            Wahrscheinlichkeiten aller Ergebnisse an.\n");
printf("      \\item Aus einer Tüte wird ein Plätzchen mit\n");
printf("            Schokolade gezogen. Berechne die\n");
printf("            Wahrscheinlichkeit dafür, dass es auch\n");
printf("            zusätzlich mit Marmelade gefüllt ist.\n");
printf("    \\end{enumerate}\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    %% </OUTLINE>\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome%%\\par\n");
printf("    %% <OUTCOME>\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Die fettgedruckten Werte in der\n");
printf("            Vierfeldertafel wurden aus der\n");
printf("            Aufgabenstellung übernommen, die\n");
printf("            normalgedruckten Werte sind\n");
printf("            Ergebnisse entsprechender\n");
printf("            Berechnungen.\\par\n");
printf("            \\begin{minipage}{0.40\\linewidth}\n");
printf("              \\begin{fofotab}\n");
printf("                \\lblA{$S$}\n");
printf("                \\lbla{$\\overline{S}$}\n");
printf("                \\lblB{$M$}\n");
printf("                \\lblb{$\\overline{M}$}\n");
printf("                %% Vorgaben aus der Aufgabenstellung\n");
printf("                \\andAB{\\textbf{12}}\n");
printf("                \\sumA {\\textbf{48}}\n");
printf("                \\sumB {\\textbf{20}}\n");
printf("                \\total{\\textbf{80}}\n");
printf("                %% Berechnungen\n");
printf("                \\andAb{36}\n");
printf("                \\andaB{8}\n");
printf("                \\andab{24}\n");
printf("                \\suma{32}\n");
printf("                \\sumb{60}\n");
printf("              \\end{fofotab}\n");
printf("            \\end{minipage}%%\n");
printf("            \\begin{minipage}{0.38\\linewidth}\n");
printf("              \\begin{itemize}\n");
printf("                \\renewcommand{\\itemsep}{-1ex}%%\n");
printf("                \\item[$S$:] \\glqq mit Schokoladenüberzug\\grqq\n");
printf("                \\item[$\\overline{S}$:] \\glqq ohne Schokoladenüberzug\\grqq\n");
printf("                \\item[$M$:] \\glqq mit Marmeladenfüllung\\grqq\n");
printf("                \\item[$\\overline{M}$:] \\glqq ohne Marmeladenfüllung\\grqq\n");
printf("              \\end{itemize}%%\n");
printf("            \\end{minipage}%%\n");
printf("      \\item Im nächsten Schritt werden die absoluten\n");
printf("            Häufigkeiten der Vierfeldertafel in relative\n");
printf("            Häufigkeiten umgerechnet, indem man jeden\n");
printf("            Wert durch die Gesamtanzahl (80) teilt. Die\n");
printf("            relativen Häufigkeiten sind dann als\n");
printf("            Wahrscheinlichkeiten interpretierbar.\n");
printf("            \\begin{center}\n");
printf("              \\begin{fofotab}%%[t]\n");
printf("                %% Bezeichnungen\n");
printf("                \\lblA{$S$}\n");
printf("                \\lbla{$\\overline{S}$}\n");
printf("                \\lblB{$M$}\n");
printf("                \\lblb{$\\overline{M}$}\n");
printf("                %% Berechnungen\n");
printf("                %%<OCTAVE>\n");
printf("                \\andAB{\\num{0.15}}\n");
printf("                \\andAb{\\num{0.45}}\n");
printf("                \\andaB{\\num{0.1}}\n");
printf("                \\andab{\\num{0.3}}\n");
printf("                \\sumA {\\num{0.6}}\n");
printf("                \\suma {\\num{0.4}}\n");
printf("                \\sumB {\\num{0.25}}\n");
printf("                \\sumb {\\num{0.75}}\n");
printf("                \\total{\\num{1}}\n");
printf("                %%</OCTAVE>\n");
printf("                %%printf(\"\\\\andAB{%%s}\\n\", myn2s(12/80, 3, 0, 0, 0, 1));\n");
printf("                %%printf(\"\\\\andAb{%%s}\\n\", myn2s(36/80, 3, 0, 0, 0, 1));\n");
printf("                %%printf(\"\\\\andaB{%%s}\\n\", myn2s( 8/80, 3, 0, 0, 0, 1));\n");
printf("                %%printf(\"\\\\andab{%%s}\\n\", myn2s(24/80, 3, 0, 0, 0, 1));\n");
printf("                %%printf(\"\\\\sumA {%%s}\\n\", myn2s(48/80, 3, 0, 0, 0, 1));\n");
printf("                %%printf(\"\\\\suma {%%s}\\n\", myn2s(32/80, 3, 0, 0, 0, 1));\n");
printf("                %%printf(\"\\\\sumB {%%s}\\n\", myn2s(20/80, 3, 0, 0, 0, 1));\n");
printf("                %%printf(\"\\\\sumb {%%s}\\n\", myn2s(60/80, 3, 0, 0, 0, 1));\n");
printf("                %%printf(\"\\\\total{%%s}\\n\", myn2s(80/80, 3, 0, 0, 0, 1));\n");
printf("              \\end{fofotab}\n");
printf("            \\end{center}\n");
printf("            Aus dieser Vierfeldertafel kann man bereits die\n");
printf("            Wahrscheinlichkeiten aller (vier) Ergebnisse\n");
printf("            ablesen:\n");
printf("            \\begin{equation*}\n");
printf("              P(S\\cap M)=\\num{0.15}\n");
printf("              \\qquad\n");
printf("              P(S\\cap\\overline{M})=\\num{0.45}\n");
printf("              \\qquad\n");
printf("              P(\\overline{S}\\cap M)=\\num{0.1}\n");
printf("              \\qquad\n");
printf("              P(\\overline{S}\\cap\\overline{M})=\\num{0.3}\n");
printf("            \\end{equation*}\n");
printf("            Aus dieser Vierfeldertafel lassen sich\n");
printf("            zwei verschiedene Baumdiagramme ableiten:\n");
printf("            \\begin{center}\n");
printf("              \\begin{tabular}{llcll}\n");
printf("                Stufe 1:\n");
printf("                & Schokoladenüberzug\n");
printf("                & \\qquad\n");
printf("                & Stufe 1:\n");
printf("                & Marmeladenfüllung\n");
printf("                \\\\\n");
printf("                Stufe 2:\n");
printf("                & Marmeladenfüllung\n");
printf("                & \\qquad\n");
printf("                & Stufe 2: &\n");
printf("                Schokoladenüberzug\n");
printf("              \\end{tabular}\n");
printf("            \\end{center}\n");
printf("            Um die beiden Baumdiagramme vollständig\n");
printf("            zeichnen zu können, müssen allerdings\n");
printf("            erst die bedingten Wahrscheinlichkeiten\n");
printf("            für die jeweilige 2. Stufe berechnet\n");
printf("            werden.\n");
printf("            \\par\n");
printf("            Wenn man den Schokoladenüberzug für die erste\n");
printf("            Stufe wählt, erhält man:\n");
printf("            \\begin{align*}\n");
printf("              P_{S}(M)&=\n");
printf("              \\frac{P(S\\cap M)}{P(S)}=\n");
printf("              \\frac{\\num{0.15}}{\\num{0.6}}=\n");
printf("              \\num{0.25}\n");
printf("              &\n");
printf("              P_{S}(\\overline{M})&=\n");
printf("              \\frac{P(S\\cap\\overline{M})}{P(S)}=\n");
printf("              \\frac{\\num{0.45}}{\\num{0.6}}=\n");
printf("              \\num{0.75}\n");
printf("              \\\\\n");
printf("              P_{\\overline{S}}(M)&=\n");
printf("              \\frac{P(\\overline{S}\\cap M)}{P(\\overline{S})}=\n");
printf("              \\frac{\\num{0.1}}{\\num{0.4}}=\n");
printf("              \\num{0.25}\n");
printf("              &\n");
printf("              P_{\\overline{S}}(\\overline{M})&=\n");
printf("              \\frac{P(\\overline{S}\\cap\\overline{M})}{P(\\overline{S})}=\n");
printf("              \\frac{\\num{0.3}}{\\num{0.4}}=\n");
printf("              \\num{0.75}\n");
printf("            \\end{align*}\n");
printf("            Wenn man die Marmeladenfüllung für die erste\n");
printf("            Stufe wählt, erhält man:\n");
printf("            \\begin{align*}\n");
printf("              P_{M}(S)&=\n");
printf("              \\frac{P(S\\cap M)}{P(M)}=\n");
printf("              \\frac{\\num{0.15}}{\\num{0.25}}=\n");
printf("              \\num{0.6}\n");
printf("              &\n");
printf("              P_{M}(\\overline{S})&=\n");
printf("              \\frac{P(\\overline{S}\\cap M)}{P(M)}=\n");
printf("              \\frac{\\num{0.1}}{\\num{0.25}}=\n");
printf("              \\num{0.4}\n");
printf("              \\\\\n");
printf("              P_{\\overline{M}}(S)&=\n");
printf("              \\frac{P(S\\cap\\overline{M})}{P(\\overline{M})}=\n");
printf("              \\frac{\\num{0.45}}{\\num{0.75}}=\n");
printf("              \\num{0.6}\n");
printf("              &\n");
printf("              P_{\\overline{M}}(\\overline{S})&=\n");
printf("              \\frac{P(\\overline{S}\\cap\\overline{M})}{P(\\overline{M})}=\n");
printf("              \\frac{\\num{0.3}}{\\num{0.75}}=\n");
printf("              \\num{0.4}\n");
printf("            \\end{align*}\n");
printf("            Damit erhält man die beiden Bäume:\\bigskip\\par\n");
printf("            \\hspace*{\\fill}%%\n");
printf("            \\begin{tikzpicture}[line width=0.6pt]\n");
printf("              %% tree\n");
printf("              \\begin{scope}\n");
printf("                %% some default colors\n");
printf("                \\newcommand{\\colr}{Red};%%\n");
printf("                \\newcommand{\\colg}{ForestGreen};%%\n");
printf("                \\newcommand{\\colb}{Cerulean};%%\n");
printf("                \\newcommand{\\coly}{YellowOrange};%%\n");
printf("                \\newcommand{\\cola}{Black!35!White};%%\n");
printf("                \\newcommand{\\cole}{Black!55!White};%%\n");
printf("                %% size settings\n");
printf("                \\newcommand{\\radius}{4mm}%%\n");
printf("                \\newcommand{\\xscale}{4}%%\n");
printf("                \\newcommand{\\yscale}{4}%%\n");
printf("                %% background color of nodes\n");
printf("                \\newcommand{\\colora}{white}%%\n");
printf("                \\newcommand{\\colorb}{white}%%\n");
printf("                %% default node text\n");
printf("                \\newcommand{\\ntextA}{$S$}%%\n");
printf("                \\newcommand{\\ntexta}{$\\overline{S}$}%%\n");
printf("                \\newcommand{\\ntextB}{$M$}%%\n");
printf("                \\newcommand{\\ntextb}{$\\overline{M}$}%%\n");
printf("                %% default edge text\n");
printf("                \\newcommand{\\etextA} {\\num{0.6}}%%\n");
printf("                \\newcommand{\\etexta} {\\num{0.4}}%%\n");
printf("                \\newcommand{\\etextAB}{\\num{0.25}~~~}%%\n");
printf("                \\newcommand{\\etextAb}{~~\\num{0.75}}%%\n");
printf("                \\newcommand{\\etextaB}{\\num{0.25}~~~}%%\n");
printf("                \\newcommand{\\etextab}{~~\\num{0.75}}%%\n");
printf("                %% geometry\n");
printf("                \\coordinate (Z)  at ( 1.500*\\xscale*\\radius,  2.000*\\yscale*\\radius);\n");
printf("                \\coordinate (A)  at ( 0.500*\\xscale*\\radius,  1.000*\\yscale*\\radius);\n");
printf("                \\coordinate (B)  at ( 2.500*\\xscale*\\radius,  1.000*\\yscale*\\radius);\n");
printf("                \\coordinate (AA) at ( 0.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("                \\coordinate (AB) at ( 1.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("                \\coordinate (BA) at ( 2.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("                \\coordinate (BB) at ( 3.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("                %% edges\n");
printf("                \\draw (Z) -- (A);\n");
printf("                \\draw (Z) -- (B);\n");
printf("                \\draw (A) -- (AA);\n");
printf("                \\draw (A) -- (AB);\n");
printf("                \\draw (B) -- (BA);\n");
printf("                \\draw (B) -- (BB);\n");
printf("                %% root\n");
printf("                \\fill[fill=black] (Z) circle[radius=2pt];\n");
printf("                %% nodes\n");
printf("                \\filldraw[fill=\\colora, draw=black] (A)  circle[radius=\\radius] node{\\ntextA};\n");
printf("                \\filldraw[fill=\\colorb, draw=black] (B)  circle[radius=\\radius] node{\\ntexta};\n");
printf("                \\filldraw[fill=\\colora, draw=black] (AA) circle[radius=\\radius] node{\\ntextB};\n");
printf("                \\filldraw[fill=\\colorb, draw=black] (AB) circle[radius=\\radius] node{\\ntextb};\n");
printf("                \\filldraw[fill=\\colora, draw=black] (BA) circle[radius=\\radius] node{\\ntextB};\n");
printf("                \\filldraw[fill=\\colorb, draw=black] (BB) circle[radius=\\radius] node{\\ntextb};\n");
printf("                %% label macros\n");
printf("                \\newcommand{\\rlabel}[4]%%\n");
printf("                {%%\n");
printf("                  \\coordinate (TEMP) at ($(#1)!0.5!(#2)$);\n");
printf("                  \\coordinate (TEMP) at ($(TEMP)!#3!270:(#2)$);\n");
printf("                  \\node at (TEMP) {#4};\n");
printf("                }%%\n");
printf("                \\newcommand{\\llabel}[4]{\\rlabel{#2}{#1}{#3}{#4}};\n");
printf("                %% edge labels\n");
printf("                \\rlabel{Z}{A}{3mm}{\\etextA};\n");
printf("                \\llabel{Z}{B}{3mm}{\\etexta};\n");
printf("                \\rlabel{A}{AA}{3mm}{\\etextAB};\n");
printf("                \\llabel{A}{AB}{3mm}{\\etextAb};\n");
printf("                \\rlabel{B}{BA}{3mm}{\\etextaB};\n");
printf("                \\llabel{B}{BB}{3mm}{\\etextab};\n");
printf("              \\end{scope}\n");
printf("            \\end{tikzpicture}\n");
printf("            \\hspace*{\\fill}%%\n");
printf("            \\begin{tikzpicture}[line width=0.6pt]\n");
printf("              %% tree\n");
printf("              \\begin{scope}\n");
printf("                %% some default colors\n");
printf("                \\newcommand{\\colr}{Red};%%\n");
printf("                \\newcommand{\\colg}{ForestGreen};%%\n");
printf("                \\newcommand{\\colb}{Cerulean};%%\n");
printf("                \\newcommand{\\coly}{YellowOrange};%%\n");
printf("                \\newcommand{\\cola}{Black!35!White};%%\n");
printf("                \\newcommand{\\cole}{Black!55!White};%%\n");
printf("                %% size settings\n");
printf("                \\newcommand{\\radius}{4mm}%%\n");
printf("                \\newcommand{\\xscale}{4}%%\n");
printf("                \\newcommand{\\yscale}{4}%%\n");
printf("                %% background color of nodes\n");
printf("                \\newcommand{\\colora}{white}%%\n");
printf("                \\newcommand{\\colorb}{white}%%\n");
printf("                %% default node text\n");
printf("                \\newcommand{\\ntextA}{$M$}%%\n");
printf("                \\newcommand{\\ntexta}{$\\overline{M}$}%%\n");
printf("                \\newcommand{\\ntextB}{$S$}%%\n");
printf("                \\newcommand{\\ntextb}{$\\overline{S}$}%%\n");
printf("                %% default edge text\n");
printf("                \\newcommand{\\etextA} {\\num{0.25}~~~}%%\n");
printf("                \\newcommand{\\etexta} {~~\\num{0.75}}%%\n");
printf("                \\newcommand{\\etextAB}{\\num{0.6}~~}%%\n");
printf("                \\newcommand{\\etextAb}{~\\num{0.4}}%%\n");
printf("                \\newcommand{\\etextaB}{\\num{0.6}~~}%%\n");
printf("                \\newcommand{\\etextab}{~\\num{0.4}}%%\n");
printf("                %% geometry\n");
printf("                \\coordinate (Z)  at ( 1.500*\\xscale*\\radius,  2.000*\\yscale*\\radius);\n");
printf("                \\coordinate (A)  at ( 0.500*\\xscale*\\radius,  1.000*\\yscale*\\radius);\n");
printf("                \\coordinate (B)  at ( 2.500*\\xscale*\\radius,  1.000*\\yscale*\\radius);\n");
printf("                \\coordinate (AA) at ( 0.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("                \\coordinate (AB) at ( 1.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("                \\coordinate (BA) at ( 2.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("                \\coordinate (BB) at ( 3.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("                %% edges\n");
printf("                \\draw (Z) -- (A);\n");
printf("                \\draw (Z) -- (B);\n");
printf("                \\draw (A) -- (AA);\n");
printf("                \\draw (A) -- (AB);\n");
printf("                \\draw (B) -- (BA);\n");
printf("                \\draw (B) -- (BB);\n");
printf("                %% root\n");
printf("                \\fill[fill=black] (Z) circle[radius=2pt];\n");
printf("                %% nodes\n");
printf("                \\filldraw[fill=\\colora, draw=black] (A)  circle[radius=\\radius] node{\\ntextA};\n");
printf("                \\filldraw[fill=\\colorb, draw=black] (B)  circle[radius=\\radius] node{\\ntexta};\n");
printf("                \\filldraw[fill=\\colora, draw=black] (AA) circle[radius=\\radius] node{\\ntextB};\n");
printf("                \\filldraw[fill=\\colorb, draw=black] (AB) circle[radius=\\radius] node{\\ntextb};\n");
printf("                \\filldraw[fill=\\colora, draw=black] (BA) circle[radius=\\radius] node{\\ntextB};\n");
printf("                \\filldraw[fill=\\colorb, draw=black] (BB) circle[radius=\\radius] node{\\ntextb};\n");
printf("                %% label macros\n");
printf("                \\newcommand{\\rlabel}[4]%%\n");
printf("                {%%\n");
printf("                  \\coordinate (TEMP) at ($(#1)!0.5!(#2)$);\n");
printf("                  \\coordinate (TEMP) at ($(TEMP)!#3!270:(#2)$);\n");
printf("                  \\node at (TEMP) {#4};\n");
printf("                }%%\n");
printf("                \\newcommand{\\llabel}[4]{\\rlabel{#2}{#1}{#3}{#4}};\n");
printf("                %% edge labels\n");
printf("                \\rlabel{Z}{A}{3mm}{\\etextA};\n");
printf("                \\llabel{Z}{B}{3mm}{\\etexta};\n");
printf("                \\rlabel{A}{AA}{3mm}{\\etextAB};\n");
printf("                \\llabel{A}{AB}{3mm}{\\etextAb};\n");
printf("                \\rlabel{B}{BA}{3mm}{\\etextaB};\n");
printf("                \\llabel{B}{BB}{3mm}{\\etextab};\n");
printf("              \\end{scope}\n");
printf("            \\end{tikzpicture}\n");
printf("            \\hspace*{\\fill}%%\n");
printf("      \\item Gesucht wird die bedingte Wahrscheinlichkeit\n");
printf("            für \\glqq Marmelade\\grqq{} unter der\n");
printf("            Bedingung \\glqq Schokolade\\grqq, also:\n");
printf("            \\begin{equation*}\n");
printf("              P_{S}(M)=\n");
printf("              \\frac{P(S\\cap M)}{P(S)}=\n");
printf("              \\frac{\\num{0.15}}{\\num{0.6}}=\n");
printf("              \\num{0.25}\n");
printf("            \\end{equation*}\n");
printf("    \\end{enumerate}\n");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

