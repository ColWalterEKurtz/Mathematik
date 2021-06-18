clear all;

addpath 'Octave/';

%%% NO CALCULATIONS YET %%%

printf("\\begin{exercise}\n");
printf("      {ID-750209decdb850a379dd956a4ed0766b567921ed}\n");
printf("      {Dreimaliges Werfen einer Münze}\n");
printf("  \\ifproblem\\problem\n");
printf("    %% <PROBLEM>\n");
printf("    Eine Münze wird dreimal geworfen. Zeichne das Baumdiagramm und bestimme\n");
printf("    die Wahrscheinlichkeit für folgende Ereignisse:\n");
printf("    \\begin{equation*}\n");
printf("      \\begin{split}\n");
printf("        E_1&:\\;\\text{\\glqq mehr als zweimal Wappen\\grqq} \\\\\n");
printf("        E_2&:\\;\\text{\\glqq höchstens zweimal Wappen\\grqq} \\\\\n");
printf("        E_3&:\\;\\text{\\glqq mindestens einmal Zahl\\grqq} \\\\\n");
printf("        E_4&:\\;\\text{\\glqq genau einmal Wappen\\grqq}\n");
printf("      \\end{split}\n");
printf("    \\end{equation*}\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("    %% <OUTLINE>\n");
printf("    %% </OUTLINE>\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    %% <OUTCOME>\n");
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
printf("          \\newcommand{\\ntexta}{W}%%\n");
printf("          \\newcommand{\\ntextb}{Z}%%\n");
printf("          %% default edge text\n");
printf("          \\newcommand{\\etexta}{$\\frac{1}{2}$}%%\n");
printf("          \\newcommand{\\etextb}{$\\frac{1}{2}$}%%\n");
printf("          %% geometry\n");
printf("          \\coordinate (Z)   at ( 3.500*\\xscale*\\radius,  3.000*\\yscale*\\radius);\n");
printf("          \\coordinate (A)   at ( 1.500*\\xscale*\\radius,  2.000*\\yscale*\\radius);\n");
printf("          \\coordinate (B)   at ( 5.500*\\xscale*\\radius,  2.000*\\yscale*\\radius);\n");
printf("          \\coordinate (AA)  at ( 0.500*\\xscale*\\radius,  1.000*\\yscale*\\radius);\n");
printf("          \\coordinate (AB)  at ( 2.500*\\xscale*\\radius,  1.000*\\yscale*\\radius);\n");
printf("          \\coordinate (BA)  at ( 4.500*\\xscale*\\radius,  1.000*\\yscale*\\radius);\n");
printf("          \\coordinate (BB)  at ( 6.500*\\xscale*\\radius,  1.000*\\yscale*\\radius);\n");
printf("          \\coordinate (AAA) at ( 0.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (AAB) at ( 1.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (ABA) at ( 2.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (ABB) at ( 3.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (BAA) at ( 4.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (BAB) at ( 5.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (BBA) at ( 6.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          \\coordinate (BBB) at ( 7.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("          %% edges\n");
printf("          \\draw  (Z) -- (A);\n");
printf("          \\draw  (Z) -- (B);\n");
printf("          \\draw  (A) -- (AA);\n");
printf("          \\draw  (A) -- (AB);\n");
printf("          \\draw  (B) -- (BA);\n");
printf("          \\draw  (B) -- (BB);\n");
printf("          \\draw (AA) -- (AAA);\n");
printf("          \\draw (AA) -- (AAB);\n");
printf("          \\draw (AB) -- (ABA);\n");
printf("          \\draw (AB) -- (ABB);\n");
printf("          \\draw (BA) -- (BAA);\n");
printf("          \\draw (BA) -- (BAB);\n");
printf("          \\draw (BB) -- (BBA);\n");
printf("          \\draw (BB) -- (BBB);\n");
printf("          %% root\n");
printf("          \\fill[fill=black] (Z) circle[radius=2pt];\n");
printf("          %% nodes\n");
printf("          \\filldraw[fill=\\colora, draw=black] (A)   circle[radius=\\radius] node{\\ntexta};\n");
printf("          \\filldraw[fill=\\colorb, draw=black] (B)   circle[radius=\\radius] node{\\ntextb};\n");
printf("          \\filldraw[fill=\\colora, draw=black] (AA)  circle[radius=\\radius] node{\\ntexta};\n");
printf("          \\filldraw[fill=\\colorb, draw=black] (AB)  circle[radius=\\radius] node{\\ntextb};\n");
printf("          \\filldraw[fill=\\colora, draw=black] (BA)  circle[radius=\\radius] node{\\ntexta};\n");
printf("          \\filldraw[fill=\\colorb, draw=black] (BB)  circle[radius=\\radius] node{\\ntextb};\n");
printf("          \\filldraw[fill=\\colora, draw=black] (AAA) circle[radius=\\radius] node{\\ntexta};\n");
printf("          \\filldraw[fill=\\colorb, draw=black] (AAB) circle[radius=\\radius] node{\\ntextb};\n");
printf("          \\filldraw[fill=\\colora, draw=black] (ABA) circle[radius=\\radius] node{\\ntexta};\n");
printf("          \\filldraw[fill=\\colorb, draw=black] (ABB) circle[radius=\\radius] node{\\ntextb};\n");
printf("          \\filldraw[fill=\\colora, draw=black] (BAA) circle[radius=\\radius] node{\\ntexta};\n");
printf("          \\filldraw[fill=\\colorb, draw=black] (BAB) circle[radius=\\radius] node{\\ntextb};\n");
printf("          \\filldraw[fill=\\colora, draw=black] (BBA) circle[radius=\\radius] node{\\ntexta};\n");
printf("          \\filldraw[fill=\\colorb, draw=black] (BBB) circle[radius=\\radius] node{\\ntextb};\n");
printf("          %% label macros\n");
printf("          \\newcommand{\\rlabel}[4]%%\n");
printf("          {%%\n");
printf("            \\coordinate (TEMP) at ($(#1)!0.5!(#2)$);\n");
printf("            \\coordinate (TEMP) at ($(TEMP)!#3!270:(#2)$);\n");
printf("            \\node at (TEMP) {#4};\n");
printf("          }%%\n");
printf("          \\newcommand{\\llabel}[4]{\\rlabel{#2}{#1}{#3}{#4}};\n");
printf("          %% edge labels\n");
printf("          \\rlabel{Z}{A}{3mm}{\\etexta};\n");
printf("          \\llabel{Z}{B}{3mm}{\\etextb};\n");
printf("          \\rlabel{A}{AA}{3mm}{\\etexta};\n");
printf("          \\llabel{A}{AB}{3mm}{\\etextb};\n");
printf("          \\rlabel{B}{BA}{3mm}{\\etexta};\n");
printf("          \\llabel{B}{BB}{3mm}{\\etextb};\n");
printf("          \\rlabel{AA}{AAA}{3mm}{\\etexta};\n");
printf("          \\llabel{AA}{AAB}{3mm}{\\etextb};\n");
printf("          \\rlabel{AB}{ABA}{3mm}{\\etexta};\n");
printf("          \\llabel{AB}{ABB}{3mm}{\\etextb};\n");
printf("          \\rlabel{BA}{BAA}{3mm}{\\etexta};\n");
printf("          \\llabel{BA}{BAB}{3mm}{\\etextb};\n");
printf("          \\rlabel{BB}{BBA}{3mm}{\\etexta};\n");
printf("          \\llabel{BB}{BBB}{3mm}{\\etextb};\n");
printf("        \\end{scope}\n");
printf("      \\end{tikzpicture}\n");
printf("      %%</OCTAVE>\n");
printf("      %%mytree(2, 3)\n");
printf("    \\end{center}\n");
printf("    \\begin{equation*}\n");
printf("      \\begin{split}\n");
printf("        E_1&=\\text{\\glqq mehr als zweimal Wappen\\grqq}\n");
printf("        =\\{(\\text{WWW})\\}\n");
printf("        \\\\[1ex]\n");
printf("        P(E_1)&=\\frac{1}{2}\\cdot\\frac{1}{2}\\cdot\\frac{1}{2}\n");
printf("        =\\frac{1}{8}\n");
printf("        =\\pc{12.5}\n");
printf("        \\\\[3ex]\n");
printf("        E_2&=\\text{\\glqq höchstens zweimal Wappen\\grqq}\n");
printf("        \\\\\n");
printf("        &=\\{\n");
printf("          (\\text{WWZ});\n");
printf("          (\\text{WZW});\n");
printf("          (\\text{WZZ});\n");
printf("          (\\text{ZWW});\n");
printf("          (\\text{ZWZ});\n");
printf("          (\\text{ZZW});\n");
printf("          (\\text{ZZZ})\n");
printf("         \\}\n");
printf("        \\\\\n");
printf("        &=\\Omega\\setminus\\{(\\text{WWW})\\}\n");
printf("        \\\\[1ex]\n");
printf("        P(E_2)&=\\frac{1}{2}\\cdot\\frac{1}{2}\\cdot\\frac{1}{2}\\cdot7\n");
printf("        =\\frac{7}{8}\n");
printf("        =\\pc{87.5}\n");
printf("        \\\\[1ex]\n");
printf("        &=1-\\frac{1}{2}\\cdot\\frac{1}{2}\\cdot\\frac{1}{2}\n");
printf("        =1-\\frac{1}{8}\n");
printf("        =\\frac{7}{8}\n");
printf("        =\\pc{87.5}\n");
printf("        \\\\[3ex]\n");
printf("        E_3&=\\text{\\glqq mindestens einmal Zahl\\grqq}\n");
printf("        \\\\\n");
printf("        &=\\{\n");
printf("          (\\text{WWZ});\n");
printf("          (\\text{WZW});\n");
printf("          (\\text{WZZ});\n");
printf("          (\\text{ZWW});\n");
printf("          (\\text{ZWZ});\n");
printf("          (\\text{ZZW});\n");
printf("          (\\text{ZZZ})\n");
printf("         \\}\n");
printf("        \\\\\n");
printf("        &=\\Omega\\setminus\\{(\\text{WWW})\\}\n");
printf("        \\\\[1ex]\n");
printf("        P(E_3)&=\\frac{1}{2}\\cdot\\frac{1}{2}\\cdot\\frac{1}{2}\\cdot7\n");
printf("        =\\frac{7}{8}\n");
printf("        =\\pc{87.5}\n");
printf("        \\\\[1ex]\n");
printf("        &=1-\\frac{1}{2}\\cdot\\frac{1}{2}\\cdot\\frac{1}{2}\n");
printf("        =1-\\frac{1}{8}\n");
printf("        =\\frac{7}{8}\n");
printf("        =\\pc{87.5}\n");
printf("        \\\\[3ex]\n");
printf("        E_4&=\\text{\\glqq genau einmal Wappen\\grqq}\n");
printf("        =\\{(\\text{WZZ});(\\text{ZWZ});(\\text{ZZW}))\\}\n");
printf("        \\\\[1ex]\n");
printf("        P(E_4)&=\\frac{1}{2}\\cdot\\frac{1}{2}\\cdot\\frac{1}{2}\\cdot3\n");
printf("        =\\frac{3}{8}\n");
printf("        =\\pc{37.5}\n");
printf("      \\end{split}\n");
printf("    \\end{equation*}\n");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

