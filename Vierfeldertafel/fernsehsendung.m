clear all;

addpath 'Octave/';

%%% NO CALCULATIONS YET %%%

printf("\\begin{exercise}\n");
printf("      {ID-88a4ca5d6db7e361e14af294394530579ad3b560}\n");
printf("      {Fernsehsendung}\n");
printf("  \\ifproblem\\problem\n");
printf("    Es soll die Beliebtheit einer Fernsehsendung überprüft werden.\n");
printf("    Eine Blitzumfrage lieferte folgendes Ergebnis: \\pc{30} der Zuschauer,\n");
printf("    die die Sendung gesehen hatten, waren 25 Jahre und jünger.\n");
printf("    Von diesen hatten \\pc{50} und von den übrigen Zuschauern (über 25\n");
printf("    Jahre) hatten \\pc{80} eine positive Meinung.\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Stelle den Sachzusammenhang in einer Vierfeldertafel dar.\n");
printf("      \\item Stelle den Sachzusammenhang in einem Baumdiagramm dar und\n");
printf("            zeichne auch den inversen Baum. Bestimme alle Pfadwahrscheinlichkeiten.\n");
printf("      \\item Wie viel Prozent der Zuschauer, von denen man weiß, dass sie\n");
printf("            eine positive Meinung über die Sendung hatten, waren älter\n");
printf("            als 25 Jahre?\n");
printf("      \\item Wie viel Prozent der Zuschauer, von denen man weiß, dass sie\n");
printf("            älter als 25 Jahre sind, hatten keine positive Meinung über\n");
printf("            die Sendung?\n");
printf("      \\item Überprüfe durch eine Rechnung, ob in diesem Fall \\textit{Alter} und\n");
printf("            \\textit{Meinung} stochastisch unabhängig sind.\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Der Sachzusammenhang lässt sich z.\\,B. auf folgende Weise in\n");
printf("            einer Vierfeldertafel darstellen:\n");
printf("            \\begin{center}\n");
printf("              \\renewcommand{\\arraystretch}{1.25}%%\n");
printf("              \\begin{tabular}{|c||c|c||c|}\n");
printf("                \\hline\n");
printf("                         & pos        & neg        & Summe     \\\\\n");
printf("                \\hline\n");
printf("                \\hline\n");
printf("                $\\leq25$ & \\num{0.15} & \\num{0.15} & \\num{0.3} \\\\\n");
printf("                \\hline\n");
printf("                $>25$    & \\num{0.56} & \\num{0.14} & \\num{0.7} \\\\\n");
printf("                \\hline\n");
printf("                \\hline\n");
printf("                Summe    & \\num{0.71} & \\num{0.29} & \\num{1}   \\\\\n");
printf("                \\hline\n");
printf("              \\end{tabular}\n");
printf("            \\end{center}\n");
printf("      \\item Unterscheidet man auf der ertsen Stufe das \\emph{Alter} der\n");
printf("            Zuschauer, dann könnte der Baum folgenden Aufbau besitzen:\n");
printf("            \\begin{center}\n");
printf("              \\begin{tikzpicture}[yscale=0.8]\n");
printf("                \\coordinate (A) at (0,  0);\n");
printf("                \\coordinate (B) at (2,  2);\n");
printf("                \\coordinate (C) at (2, -2);\n");
printf("                \\coordinate (D) at (5,  3);\n");
printf("                \\coordinate (E) at (5,  1);\n");
printf("                \\coordinate (F) at (5, -1);\n");
printf("                \\coordinate (G) at (5, -3);\n");
printf("                \\draw (A) -- node[above left]{\\vphantom{$($}\\num{0.3}} (B);\n");
printf("                \\draw (B) -- node[above]     {\\vphantom{$($}\\num{0.5}} (D);\n");
printf("                \\draw (B) -- node[below]     {\\vphantom{$($}\\num{0.5}} (E);\n");
printf("                \\draw (A) -- node[below left]{\\vphantom{$($}\\num{0.7}} (C);\n");
printf("                \\draw (C) -- node[above]     {\\vphantom{$($}\\num{0.8}} (F);\n");
printf("                \\draw (C) -- node[below]     {\\vphantom{$($}\\num{0.2}} (G);\n");
printf("                \\fill[fill=black] (A) circle[radius=2pt];\n");
printf("                \\filldraw[fill=white, draw=black] (B) circle[radius=6mm];\n");
printf("                \\filldraw[fill=white, draw=black] (D) circle[radius=6mm];\n");
printf("                \\filldraw[fill=white, draw=black] (E) circle[radius=6mm];\n");
printf("                \\filldraw[fill=white, draw=black] (C) circle[radius=6mm];\n");
printf("                \\filldraw[fill=white, draw=black] (F) circle[radius=6mm];\n");
printf("                \\filldraw[fill=white, draw=black] (G) circle[radius=6mm];\n");
printf("                \\node at (B) {$\\leq25$};\n");
printf("                \\node at (D) {\\vphantom{$($}pos};\n");
printf("                \\node at (E) {\\vphantom{$($}neg};\n");
printf("                \\node at (C) {$>25$};\n");
printf("                \\node at (F) {\\vphantom{$($}pos};\n");
printf("                \\node at (G) {\\vphantom{$($}neg};\n");
printf("                \\node[right=1cm] at (D) {$P(\\leq25\\cap\\text{pos})=\\num{0.15}$};\n");
printf("                \\node[right=1cm] at (E) {$P(\\leq25\\cap\\text{neg})=\\num{0.15}$};\n");
printf("                \\node[right=1cm] at (F) {$P(>25\\cap\\text{pos})=\\num{0.56}$};\n");
printf("                \\node[right=1cm] at (G) {$P(>25\\cap\\text{neg})=\\num{0.14}$};\n");
printf("              \\end{tikzpicture}\n");
printf("            \\end{center}\n");
printf("            Der inverse Baum dazu hat folgende Gestalt:\n");
printf("            \\begin{center}\n");
printf("              \\begin{tikzpicture}[yscale=0.8]\n");
printf("                \\coordinate (A) at (0,  0);\n");
printf("                \\coordinate (B) at (2,  2);\n");
printf("                \\coordinate (C) at (2, -2);\n");
printf("                \\coordinate (D) at (5,  3);\n");
printf("                \\coordinate (E) at (5,  1);\n");
printf("                \\coordinate (F) at (5, -1);\n");
printf("                \\coordinate (G) at (5, -3);\n");
printf("                \\draw (A) -- node[above left] {\\vphantom{$($}\\num{0.71}} (B);\n");
printf("                \\draw (B) -- node[above]      {\\vphantom{$($}\\num{0.21}} (D);\n");
printf("                \\draw (B) -- node[below]      {\\vphantom{$($}\\num{0.79}} (E);\n");
printf("                \\draw (A) -- node[below left] {\\vphantom{$($}\\num{0.29}} (C);\n");
printf("                \\draw (C) -- node[above]      {\\vphantom{$($}\\num{0.52}} (F);\n");
printf("                \\draw (C) -- node[below]      {\\vphantom{$($}\\num{0.48}} (G);\n");
printf("                \\fill[fill=black] (A) circle[radius=2pt];\n");
printf("                \\filldraw[fill=white, draw=black] (B) circle[radius=6mm];\n");
printf("                \\filldraw[fill=white, draw=black] (D) circle[radius=6mm];\n");
printf("                \\filldraw[fill=white, draw=black] (E) circle[radius=6mm];\n");
printf("                \\filldraw[fill=white, draw=black] (C) circle[radius=6mm];\n");
printf("                \\filldraw[fill=white, draw=black] (F) circle[radius=6mm];\n");
printf("                \\filldraw[fill=white, draw=black] (G) circle[radius=6mm];\n");
printf("                \\node at (B) {\\vphantom{$($}pos};\n");
printf("                \\node at (D) {$\\leq25$};\n");
printf("                \\node at (E) {$>25$};\n");
printf("                \\node at (C) {\\vphantom{$($}neg};\n");
printf("                \\node at (F) {$\\leq25$};\n");
printf("                \\node at (G) {$>25$};\n");
printf("                \\node[right=1cm] at (D) {$P(\\text{pos\\;}\\cap\\leq25)=\\num{0.15}$};\n");
printf("                \\node[right=1cm] at (E) {$P(\\text{pos\\;}\\cap>25)=\\num{0.56}$};\n");
printf("                \\node[right=1cm] at (F) {$P(\\text{neg\\;}\\cap\\leq25)=\\num{0.15}$};\n");
printf("                \\node[right=1cm] at (G) {$P(\\text{neg\\;}\\cap>25)=\\num{0.14}$};\n");
printf("              \\end{tikzpicture}\n");
printf("            \\end{center}\n");
printf("      \\item Etwa \\pc{79} der Zuschauer, von denen man weiß, dass sie eine\n");
printf("            positive Meinung über die Sendung hatten, waren älter als\n");
printf("            25 Jahre.\n");
printf("      \\item Etwa \\pc{20} der Zuschauer, von denen man weiß, dass sie\n");
printf("            älter als 25 Jahre sind, hatten keine positive Meinung über\n");
printf("            die Sendung.\n");
printf("      \\item Die beiden Merkmale \\emph{Alter} und \\emph{Meinung} sind\n");
printf("            stochastisch abhängig, denn es gilt:\n");
printf("            \\begin{equation*}\n");
printf("              P(\\leq25\\cap\\text{pos})\n");
printf("              =\\num{0.15}\n");
printf("              \\neq\\num{0.213}\n");
printf("              =\\num{0.3}\\cdot\\num{0.71}\n");
printf("              =P(\\leq25)\\cdot P(\\text{pos})\n");
printf("            \\end{equation*}\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

