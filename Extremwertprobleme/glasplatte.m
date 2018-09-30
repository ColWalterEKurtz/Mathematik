clear all;

addpath 'Octave/';

% Groesse des Rechtecks
a = 100;
b = 60;

% Groesse des abgebrochenen Dreiecks
c = 40;
d = 25;

% erster Punkt auf der Geraden
x1 = a - c;
y1 = b;

% zweiter Punkt auf der Geraden
x2 = a;
y2 = b - d;

% Geradenparameter
m = (y2 - y1) / (x2 - x1);
n = y1 - m * x1;

% Parameter zur Bestimmung der Breite des inneren Rechtecks (nur Zeichnung)
% 0 <= p <= 1
p = 0.5;

% rechte obere Ecke des inneren Rechtecks
xi = (a - c) + p * c;
yi = m * xi + n;

printf("\\begin{exercise}\n");
printf("      {ID-3f2907460f3f3f644e1ebc02f5798964143cafe4}\n");
printf("      {Glasplatte}\n");
printf("  \\ifproblem\\problem\n");
printf("    \\ifthenelse{\\isundefined{\\linecalc}}{\\newlength{\\linecalc}}{\\relax}%%\n");
printf("    \\setlength{\\linecalc}{\\linewidth}%%\n");
printf("    \\addtolength{\\linecalc}{-72mm}%%\n");
printf("    \\begin{minipage}[b]{\\linecalc}\n");
printf("      Von einer rechteckigen Glasplatte mit den Seitenlängen $a$ und $b$\n");
printf("      ist an einer Ecke ein Stück von der Form eines rechtwinkligen\n");
printf("      Dreiecks abgebrochen.\n");
printf("      Gegeben sind die Maße $a=\\simeter{1}$, $b=\\sicm{60}$, $c=\\sicm{10}$ und\n");
printf("      $d=\\sicm{4}$.\n");
printf("      Wie sind $e$ und $f$ zu wählen, damit aus dem Rest eine\n");
printf("      möglichst große, rechteckige Platte geschnitten werden kann?\n");
printf("    \\end{minipage}\\hfill\n");
printf("    \\begin{minipage}[b]{65mm}\n");
printf("      \\raisebox{\\baselineskip}[7\\baselineskip][0pt]{%%\n");
printf("      \\begin{tikzpicture}[scale=0.05]\n");
printf("        %% um die Punkte verschieben zu koennen\n");
printf("        \\newcommand{\\pdef}\n");
printf("        {\n");
printf("          \\coordinate (A) at (%8.4f, %8.4f);\n", 0,  0);
printf("          \\coordinate (B) at (%8.4f, %8.4f);\n", a,  0);
printf("          \\coordinate (C) at (%8.4f, %8.4f);\n", a,  b);
printf("          \\coordinate (D) at (%8.4f, %8.4f);\n", 0,  b);
printf("          \\coordinate (E) at (%8.4f, %8.4f);\n", x2, y2);
printf("          \\coordinate (F) at (%8.4f, %8.4f);\n", x1, y1);
printf("          \\coordinate (G) at (%8.4f, %8.4f);\n", xi, 0);
printf("          \\coordinate (H) at (%8.4f, %8.4f);\n", xi, yi);
printf("          \\coordinate (I) at (%8.4f, %8.4f);\n", 0,  yi);
printf("        }\n");
printf("        %% die unverschobene Variante\n");
printf("        \\pdef\n");
printf("        %% abgebrochene Ecke\n");
printf("        \\filldraw[fill=black!25!white] (E) -- (C) -- (F);\n");
printf("        %% Reststueck\n");
printf("        \\draw (A) -- (B) -- (E) -- (F) -- (D) -- cycle;\n");
printf("        %% inneres Rechteck\n");
printf("        \\draw (G) -- node[left]{{\\small$f$}} (H)\n");
printf("                  -- node[below]{{\\small$e$}}  (I);\n");
printf("        %% Beschriftung oben\n");
printf("        \\begin{scope}[yshift=200]\n");
printf("          \\pdef\n");
printf("          \\draw[|<->|, >=stealth] (D) -- node[above]{{\\small$a-c$}} (F);\n");
printf("          \\draw[<->|, >=stealth] (F) -- node[above]{{\\small$c$}} (C);\n");
printf("        \\end{scope}\n");
printf("        %% Beschriftung rechts\n");
printf("        \\begin{scope}[xshift=200]\n");
printf("          \\pdef\n");
printf("          \\draw[|<->|, >=stealth] (B) -- node[right]{{\\small$b-d$}} (E);\n");
printf("          \\draw[<->|, >=stealth] (E) -- node[right]{{\\small$d$}} (C);\n");
printf("        \\end{scope}\n");
printf("      \\end{tikzpicture}}\n");
printf("    \\end{minipage}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  %%\\ifoutcome\\outcome\n");
printf("  %%\\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

