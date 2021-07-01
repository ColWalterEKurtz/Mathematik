clear all;

%%% addpath 'Octave/';

%%% NO CALCULATIONS YET %%%

printf("\\begin{exercise}\n");
printf("      {ID-56645a0929240ebd444b862b2b7e53fc2444a06b}\n");
printf("      {Nieten}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    In einem Karton liegen 50 Lose, davon sind 5 Gewinne, der Rest Nieten.\n");
printf("    \\xxa{} zieht zwei Lose. Mit welcher Wahrscheinlichkleit zieht \\xxa{}\n");
printf("    zwei Nieten?\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    %% </OUTLINE>\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    %% <OUTCOME>\n");
printf("    Die gezogenen Lose werden nach dem Ziehen\n");
printf("    nicht wieder zurück in den Karton gelegt.\n");
printf("    Also ändern sich nach jedem Zug die Wahrscheinlichkeiten.\n");
printf("    \\begin{center}\n");
printf("      %%<OCTAVE>\n");
printf("      \\begin{tikzpicture}[line width=0.6pt]\n");
printf("        %% tree\n");
printf("        \\begin{scope}\n");
printf("          %% some default colors\n");
printf("          \\newcommand{\\colr}{Red};%%\n");
printf("          \\newcommand{\\colg}{ForestGreen};%%\n");
printf("          \\newcommand{\\colb}{Cerulean};%%\n");
printf("          \\newcommand{\\coly}{YellowOrange};%%\n");
printf("          \\newcommand{\\cola}{Black!35!White};%%\n");
printf("          \\newcommand{\\cole}{Black!55!White};%%\n");
printf("          %% size settings\n");
printf("          \\newcommand{\\radius}{3mm}%%\n");
printf("          \\newcommand{\\xscale}{4}%%\n");
printf("          \\newcommand{\\yscale}{4}%%\n");
printf("          %% background color of nodes\n");
printf("          \\newcommand{\\colora}{white}%%\n");
printf("          \\newcommand{\\colorb}{white}%%\n");
printf("          %% default node text\n");
printf("          \\newcommand{\\ntexta}{G}%%\n");
printf("          \\newcommand{\\ntextb}{N}%%\n");
printf("          %% default edge text\n");
printf("          \\newcommand{\\etexta}{}%%\n");
printf("          \\newcommand{\\etextb}{}%%\n");
printf("          %% geometry\n");
printf("          \\coordinate (Z)  at ( 1.500*\\xscale*\\radius,  2.000*\\yscale*\\radius);\n");
printf("          \\coordinate (A)  at ( 0.500*\\xscale*\\radius,  1.000*\\yscale*\\radius);\n");
printf("          \\coordinate (B)  at ( 2.500*\\xscale*\\radius,  1.000*\\yscale*\\radius);\n");
printf("          \\coordinate (AA) at ( 0.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (AB) at ( 1.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (BA) at ( 2.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (BB) at ( 3.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          %% edges\n");
printf("          \\draw (Z) -- (A);\n");
printf("          \\draw (Z) -- (B);\n");
printf("          \\draw (A) -- (AA);\n");
printf("          \\draw (A) -- (AB);\n");
printf("          \\draw (B) -- (BA);\n");
printf("          \\draw (B) -- (BB);\n");
printf("          %% root\n");
printf("          \\fill[fill=black] (Z) circle[radius=2pt];\n");
printf("          %% nodes\n");
printf("          \\filldraw[fill=\\colora, draw=black] (A)  circle[radius=\\radius] node{\\ntexta};\n");
printf("          \\filldraw[fill=\\colorb, draw=black] (B)  circle[radius=\\radius] node{\\ntextb};\n");
printf("          \\filldraw[fill=\\colora, draw=black] (AA) circle[radius=\\radius] node{\\ntexta};\n");
printf("          \\filldraw[fill=\\colorb, draw=black] (AB) circle[radius=\\radius] node{\\ntextb};\n");
printf("          \\filldraw[fill=\\colora, draw=black] (BA) circle[radius=\\radius] node{\\ntexta};\n");
printf("          \\filldraw[fill=\\colorb, draw=black] (BB) circle[radius=\\radius] node{\\ntextb};\n");
printf("          %% label macros\n");
printf("          \\newcommand{\\rlabel}[4]%%\n");
printf("          {%%\n");
printf("            \\coordinate (TEMP) at ($(#1)!0.5!(#2)$);\n");
printf("            \\coordinate (TEMP) at ($(TEMP)!#3!270:(#2)$);\n");
printf("            \\node at (TEMP) {#4};\n");
printf("          }%%\n");
printf("          \\newcommand{\\llabel}[4]{\\rlabel{#2}{#1}{#3}{#4}};\n");
printf("          %% edge labels\n");
printf("          \\rlabel{Z}{A}{3mm}{$\\frac{5}{50}$};\n");
printf("          \\llabel{Z}{B}{3mm}{$\\frac{45}{50}$};\n");
printf("          \\rlabel{A}{AA}{3mm}{$\\frac{4}{49}$};\n");
printf("          \\llabel{A}{AB}{3mm}{$\\frac{45}{49}$};\n");
printf("          \\rlabel{B}{BA}{3mm}{$\\frac{5}{49}$};\n");
printf("          \\llabel{B}{BB}{3mm}{$\\frac{44}{49}$};\n");
printf("        \\end{scope}\n");
printf("      \\end{tikzpicture}\n");
printf("      %%</OCTAVE>\n");
printf("      %%mytree(2,2)\n");
printf("    \\end{center}\n");
printf("    Summen- und Pfadregel (Produktregel) gelten unverändert.\n");
printf("    Damit lässt sich die Wahrscheinlichkeit für das Ziehen\n");
printf("    zweier Nieten wie folgt berechnen:\n");
printf("    \\begin{equation*}\n");
printf("      \\begin{split}\n");
printf("        E&=\\text{\\glqq zweimal Niete\\grqq}\n");
printf("        =\\{(\\text{NN})\\}\n");
printf("        \\\\\n");
printf("        P(E)&=\\frac{45}{50}\\cdot\\frac{44}{49}\n");
printf("        =\\frac{9}{10}\\cdot\\frac{44}{49}\n");
printf("        =\\frac{9}{5}\\cdot\\frac{22}{49}\n");
printf("        =\\frac{198}{245}\n");
printf("        \\approx\\num{0.808}\n");
printf("        \\approx\\pc{81}\n");
printf("      \\end{split}\n");
printf("    \\end{equation*}\n");
printf("    \\xxa{} zieht also mit etwa \\pc{81}-iger\n");
printf("    Wahrscheinlichkeit zwei Nieten.\n");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

