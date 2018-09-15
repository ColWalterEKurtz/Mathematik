clear all;

addpath 'Octave/';

% sichtbarer Ausschnitt der Graphen
xmin = -0.50;
xmax =  5.40;
xinc =  0.05;
ymin = -2.00;
ymax =  4.00;

% Wertetabelle (Spaltenvektoren)
k = 4;
x = [xmin:xinc:xmax]';
f = k * x    .* exp(1 - 2 * x);
g = k * x.^2 .* exp(1 - 2 * x);

% Beschriftung fuer Funktion f
nfx = 0.5;
nfy = k * nfx * exp(1 - 2 * nfx);

% Beschriftung fuer Funktion g
ngx = 2.0;
ngy = k * ngx^2 * exp(1 - 2 * ngx);

ins_nfx = sprintf("%.3f", nfx);
ins_nfy = sprintf("%.3f", nfy);
ins_ngx = sprintf("%.3f", ngx);
ins_ngy = sprintf("%.3f", ngy);

printf("\\begin{exercise}\n");
printf("      {ID-39ac3eb03b43ffb6a2a2fc8aaee79e08a7c1d353}\n");
printf("      {Zwei Graphen}\n");
printf("  \\ifproblem\\problem\n");
printf("    Gegeben sind die Funktionen $f$ und $g$ mit den Gleichungen\n");
printf("    \\begin{equation*}\n");
printf("      f(x)=kxe^{1-2x}\n");
printf("      \\quad\\text{und}\\quad\n");
printf("      g(x)=kx^2e^{1-2x}\n");
printf("      \\quad\\text{mit}\\quad\n");
printf("      x\\in\\mathbb{R}\n");
printf("      \\quad\\text{und}\\quad\n");
printf("      k\\neq0.\n");
printf("    \\end{equation*}\n");
printf("    In folgender Abbildung sind die Graphen $G_f$ und $G_g$ dargestellt.\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}\n");
printf("        \\draw[line width=0.6pt, ->, >=stealth] (-1, 0) -- (5.5, 0) node[below]{{\\small$x$}};\n");
printf("        \\draw[line width=0.6pt, ->, >=stealth] (0, -2) -- (0, 4) node[below right]{{\\small$y$}};\n");
printf("        \\node[below left] at (0, 0) {{\\small$0$}};\n");
printf("        \\node[above right] at (%s, %s) {{\\small$G_f$}};\n", ins_nfx, ins_nfy);
printf("        \\node[above right] at (%s, %s) {{\\small$G_g$}};\n", ins_ngx, ins_ngy);
% Funktion f
printf("        \\begin{scope}\n");
printf("          \\clip (%.3f, %.3f) rectangle (%.3f, %.3f);\n", xmin, ymin, xmax, ymax);
printf("          \\draw[line width=0.5pt] plot[smooth] coordinates\n");
printf("          {\n");
printf("            (%7.3f, %7.3f)\n", [x f]');
printf("          };\n");
printf("        \\end{scope}\n");
% Funktion g
printf("        \\begin{scope}\n");
printf("          \\clip (%.3f, %.3f) rectangle (%.3f, %.3f);\n", xmin, ymin, xmax, ymax);
printf("          \\draw[line width=0.5pt] plot[smooth] coordinates\n");
printf("          {\n");
printf("            (%7.3f, %7.3f)\n", [x g]');
printf("          };\n");
printf("        \\end{scope}\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Begründe, dass die Zuordnung von Graph und Beschriftung\n");
printf("            im Koordinatensystem korrekt erfolgt ist.\n");
printf("      \\item Es wird behauptet, dass das Maximum von $g$ mit dem\n");
printf("            Wendepunkt von $f$ zusammenfällt. Prüfe diese Behauptung.\n");
printf("      \\item Zeige, dass es genau zwei Stellen gibt, an denen $f$ und $g$\n");
printf("            die gleiche Steigung haben.\n");
printf("      \\item Weise nach, dass folgende Funktion eine Stammfunktion\n");
printf("            von $s(x)=f(x)-g(x)$ ist:\n");
printf("            \\begin{equation*}\n");
printf("              S(x)=\\frac{k}{2}x^2e^{1-2x}\n");
printf("            \\end{equation*}\n");
printf("      \\item Für welchen Wert von $k$ schließen die beiden Graphen auf dem\n");
printf("            Intervall von 0 bis zur Schnittstelle der Graphen eine Fläche\n");
printf("            von 1\\,FE ein?\n");
printf("      \\item Gegeben sei der Punkt $C(0\\mid1)$.\n");
printf("            Die Gerade zu $x=u$ schneidet die Graphen $G_f$ und $G_g$\n");
printf("            in den Punkten $A$ und $B$. Für welchen Wert von $u$ ist der\n");
printf("            Inhalt des Dreiecks $ABC$ am größten? Gehe zunächst von $k=3$ aus,\n");
printf("            und überlege dann, ob das Ergebnis überhaupt von $k$ abhängt.\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  %%\\ifoutcome\\outcome\n");
printf("  %%\\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

