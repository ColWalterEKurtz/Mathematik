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
printf("      {ID-f6984cf366c7211209d720bfe345f0549391d1d3}\n");
printf("      {Zaun}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Ein rechteckiges Grundstück soll eingezäunt werden.\n");
printf("    Es ist \\SI{120}{\\metre} lang und \\SI{84}{\\metre}\n");
printf("    breit. Der Abstand von einem Zaunpfahl zum Nächsten\n");
printf("    soll überall gleich groß sein.\n");
printf("    Wie viele Zaunpfähle werden mindestens benötigt,\n");
printf("    um das Grundstück einzuzäunen?\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    %% </OUTLINE>\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    %% <OUTCOME>\n");
printf("    Die Anzahl der Zaunpfähle lässt sich bestimmen,\n");
printf("    wenn man den Abstand $x$ kennt, der jeden\n");
printf("    Zaunpfahl von seinem Vorgänger bzw. Nachfolger\n");
printf("    trennt.\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}[scale=0.5]\n");
printf("        %% Grundstueck\n");
printf("        \\draw[line width=0.6pt] (0, 0) rectangle (120mm, 84mm);\n");
printf("        %% Seitenlaengen\n");
printf("        \\node[below] at (60mm, 0mm) {\\SI{120}{\\metre}};\n");
printf("        \\node[right] at (120mm, 42mm) {\\SI{84}{\\metre}};\n");
printf("        %% Ecken\n");
printf("        \\fill (  0mm,  0mm) circle[radius=2pt];\n");
printf("        \\fill (120mm,  0mm) circle[radius=2pt];\n");
printf("        \\fill (120mm, 84mm) circle[radius=2pt];\n");
printf("        \\fill (  0mm, 84mm) circle[radius=2pt];\n");
printf("        %% Beispiele\n");
printf("        \\fill ( 12mm, 84mm) circle[radius=2pt];\n");
printf("        \\fill ( 24mm, 84mm) circle[radius=2pt];\n");
printf("        \\fill ( 36mm, 84mm) circle[radius=2pt];\n");
printf("        \\fill (  0mm, 72mm) circle[radius=2pt];\n");
printf("        \\fill (  0mm, 60mm) circle[radius=2pt];\n");
printf("        \\fill (  0mm, 48mm) circle[radius=2pt];\n");
printf("        \\begin{scope}[|<->|, >=stealth]\n");
printf("          \\draw (12mm, 72mm) -- (24mm, 72mm);\n");
printf("          \\draw (12mm, 72mm) -- (12mm, 60mm);\n");
printf("          \\node at (18mm, 66mm) {$x$};\n");
printf("        \\end{scope}\n");
printf("        \\begin{scope}[style=dashed]\n");
printf("          \\draw (12mm, 84mm) -- (12mm, 72mm);\n");
printf("          \\draw (24mm, 84mm) -- (24mm, 72mm);\n");
printf("          \\draw ( 0mm, 72mm) -- (12mm, 72mm);\n");
printf("          \\draw ( 0mm, 60mm) -- (12mm, 60mm);\n");
printf("        \\end{scope}\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("    Dieser Abstsnd muss so gewählt werden, dass\n");
printf("    sowohl \\num{120}, als auch \\num{84}\n");
printf("    ganzzahlige Vielfache von $x$ sind.\n");
printf("    Außerdem muss er so groß wie möglich sein,\n");
printf("    damit die Anzahl der benötigten Zaunpfähle\n");
printf("    so gering wie möglich ausfällt.\n");
printf("    Gesucht wird also der größte gemeinsame\n");
printf("    Teiler von \\num{120} und \\num{84}.\n");
printf("    \\begin{equation*}\n");
printf("      \\begin{split}\n");
printf("        120&=12\\cdot10=2\\cdot6\\cdot2\\cdot5=2\\cdot2\\cdot3\\cdot2\\cdot5=2^3\\cdot3\\cdot5\n");
printf("        \\\\\n");
printf("        84&=2\\cdot42=2\\cdot6\\cdot7=2\\cdot2\\cdot3\\cdot7=2^2\\cdot3\\cdot7\n");
printf("        \\\\\n");
printf("        \\operatorname{ggT}(120,84)&=2^2\\cdot3=12\n");
printf("      \\end{split}\n");
printf("    \\end{equation*}\n");
printf("    Je zwei Zaunpfähle sollten also \\SI{12}{\\metre}\n");
printf("    Abstand voneinander haben.\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}\n");
printf("        %% ------\n");
printf("        %% clabel\n");
printf("        %% ------\n");
printf("        %%\n");
printf("        %% #1 start point\n");
printf("        %% #2 target point\n");
printf("        %% #3 line distance (pos: left; neg: right)\n");
printf("        %% #4 angle to rotate ([0..360]|auto)\n");
printf("        %% #5 text\n");
printf("        %%\n");
printf("        %% example:\n");
printf("        %% \\clabel{0, 0}{16, 9}{3mm}{auto}{$d$}\n");
printf("        %%\n");
printf("        \\newcommand{\\clabel}[5]%%\n");
printf("        {%%\n");
printf("          \\begingroup\n");
printf("            \\coordinate (TEMP) at ($(#1)!0.5!(#2)$);%%\n");
printf("            \\coordinate (TEMP) at ($(TEMP)!#3!90:(#2)$);%%\n");
printf("            \\ifthenelse{\\equal{#4}{auto}}%%\n");
printf("            {%%\n");
printf("              \\coordinate (TEMPA) at (#1);%%\n");
printf("              \\coordinate (TEMPB) at (#2);%%\n");
printf("              \\pgfmathanglebetweenpoints%%\n");
printf("                {\\pgfpointanchor{TEMPA}{center}}%%\n");
printf("                {\\pgfpointanchor{TEMPB}{center}}%%\n");
printf("              \\node[rotate=\\pgfmathresult] at (TEMP) {#5};%%\n");
printf("            }%%\n");
printf("            {%%\n");
printf("              \\node[rotate=#4] at (TEMP) {#5};%%\n");
printf("            }%%\n");
printf("          \\endgroup\n");
printf("        }%%\n");
printf("        %% ------\n");
printf("        %% vlabel\n");
printf("        %% ------\n");
printf("        %%\n");
printf("        %% vertex label\n");
printf("        %%\n");
printf("        %% #1  label\n");
printf("        %% #2  label node\n");
printf("        %% #3  direction 1 node\n");
printf("        %% #4  direction 2 node\n");
printf("        %% #5  label distance\n");
printf("        %%\n");
printf("        %% example:\n");
printf("        %% \\vlabel{$A$}{A}{B}{C}{0.75em};\n");
printf("        %%\n");
printf("        \\newcommand{\\vlabel}[5]%%\n");
printf("        {%%\n");
printf("          \\begin{scope}%%\n");
printf("            \\coordinate (S1) at ($(#2)!1cm!0:(#3)$);\n");
printf("            \\coordinate (S2) at ($(#2)!1cm!0:(#4)$);\n");
printf("            \\coordinate (M)  at ($(S1)!0.5!0:(S2)$);\n");
printf("            \\node at ($(#2)!#5!180:(M)$) {#1};\n");
printf("          \\end{scope}%%\n");
printf("        }%%\n");
printf("        \\begin{scope}[yshift=6.5mm]\n");
printf("          \\coordinate (A) at (0, 0);\n");
printf("          \\coordinate (B) at (0:12mm);\n");
printf("          \\coordinate (C) at (0:24mm);\n");
printf("          \\draw[line width=0.6pt] (A) -- (B) -- (C);\n");
printf("          \\fill (A) circle[radius=1pt];\n");
printf("          \\fill (B) circle[radius=1pt];\n");
printf("          \\fill (C) circle[radius=1pt];\n");
printf("          \\clabel{A}{B}{2mm}{0}{$s$};\n");
printf("          \\clabel{B}{C}{2mm}{0}{$s$};\n");
printf("          \\node[below] at (A) {$p$};\n");
printf("          \\node[below] at (B) {$p$};\n");
printf("          \\node[below] at (C) {$p$};\n");
printf("        \\end{scope}\n");
printf("        \\begin{scope}[xshift=5cm]\n");
printf("          \\coordinate (A) at (0, 0);\n");
printf("          \\coordinate (B) at (0:12mm);\n");
printf("          \\coordinate (C) at (60:12mm);\n");
printf("          \\draw[line width=0.6pt] (A) -- (B) -- (C) -- cycle;\n");
printf("          \\fill (A) circle[radius=1pt];\n");
printf("          \\fill (B) circle[radius=1pt];\n");
printf("          \\fill (C) circle[radius=1pt];\n");
printf("          \\clabel{A}{B}{-2mm}{0}{$s$};\n");
printf("          \\clabel{B}{C}{-2mm}{0}{$s$};\n");
printf("          \\clabel{C}{A}{-2mm}{0}{$s$};\n");
printf("          \\vlabel{$p$}{A}{B}{C}{0.75em};\n");
printf("          \\vlabel{$p$}{B}{C}{A}{0.75em};\n");
printf("          \\vlabel{$p$}{C}{A}{B}{0.75em};\n");
printf("        \\end{scope}\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("    Wenn man einen Zaun baut, der an verschiedenen\n");
printf("    Punkten beginnt und endet, benötigt man für\n");
printf("    $n$ Segmente $n+1$ Zaunpfähle (wie in der\n");
printf("    linken Darstellung).\n");
printf("    Wenn der Zaun einen geschlossenen Weg darstellt,\n");
printf("    kann das letzte Segment wieder am ersten\n");
printf("    Zaunpfahl befestigt werden, und man benötigt\n");
printf("    genau so viele Pfähle wie Segmente (wie in der\n");
printf("    rechten Darstellung).\\par\n");
printf("    Da der Zaun aus der Aufgabenstellung einen\n");
printf("    geschlossenen Weg darstellt, erhält man die\n");
printf("    Anzahl der Zaunpfähle schon dadurch, dass man\n");
printf("    die Gesamtlänge des Zauns durch die Segmentlänge\n");
printf("    teilt:\n");
printf("    \\begin{equation*}\n");
printf("      \\frac{2\\cdot120+2\\cdot84}{12}\n");
printf("      =2\\cdot\\frac{120}{12}+2\\cdot\\frac{84}{12}\n");
printf("      =2\\cdot10+2\\cdot7\n");
printf("      =34\n");
printf("    \\end{equation*}\n");
printf("    Man benötigt also mindestes 34 Zaunpfähle, um\n");
printf("    das Grundstück mit einem gleichmäßigen Abstand\n");
printf("    zwischen den Zaunpfählen eizuzäunen.\n");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

