clear all;

addpath 'Octave/';

% sichtbarer Ausschnitt der Graphen
xmin =  0.00;
xmax =  6.00;
xinc =  0.10;
ymin = -2.00;
ymax =  3.50;

% Wertetabelle (Spaltenvektoren)
x = [xmin:xinc:xmax]';
y = (x.^2 - 10 * x + 24) .* exp(0.5 * x);

% Streckung oder Stauchung
y = (1/8) * y;

printf("\\begin{exercise}\n");
printf("      {ID-3cbc9dea2421a4c62fafeb3cac3bde9a82da7caa}\n");
printf("      {Stausee}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Die Wassermenge eines Stausees ändert sich, indem Wasser entweder\n");
printf("    hineinfließt oder herausläuft. Die Zuflussratenfunktion ist für den\n");
printf("    hier betrachteten Stausee gegeben durch:\n");
printf("    \\begin{equation*}\n");
printf("      z(x)=\\left(x^2-10x+24\\right)\\cdot e^{\\frac{1}{2}x}\n");
printf("    \\end{equation*}\n");
printf("    Dabei wird $x$ in Tagen und $z(x)$ in \\num{1000} Kubikmetern pro Tag angegeben.\n");
printf("    Betrachtet wird das Intervall $0\\leq x\\leq\\num{6.5}$.\n");
printf("    Folgende Abbildung zeigt den Graphen von $z(x)$, der zur besseren\n");
printf("    Veranschaulichung in $y$-Richtung mit den Faktor \\num{0.125} gestaucht wurde:\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}\n");
printf("        %% Koordinatensystem\n");
printf("        \\draw[line width=0.6pt, ->, >=stealth] (-1.0,  0.0) -- (7.0, 0.0) node[below]      {{\\small$x$}};\n");
printf("        \\draw[line width=0.6pt, ->, >=stealth] ( 0.0, -2.0) -- (0.0, 4.0) node[below left] {{\\small$y$}};\n");
printf("        %% Ursprung\n");
printf("        \\node[below left] at (0, 0) {{\\small$0$}};\n");
printf("        %% Graph\n");
printf("        \\begin{scope}\n");
printf("          \\clip (%.3f, %.3f) rectangle (%.3f, %.3f);\n", xmin, ymin, xmax, ymax);
printf("          \\draw[line width=0.5pt] plot[smooth] coordinates\n");
printf("          {\n");
printf("            (%7.3f, %7.3f)\n", [x y]');
printf("          };\n");
printf("        \\end{scope}\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("    Ohne eigene Herleitung dürfen Sie für die zweite und dritte Ableitung\n");
printf("    im Weiteren folgende Funktionen verwenden:\n");
printf("    \\begin{equation*}\n");
printf("      \\begin{split}\n");
printf("         z''(x)&=\\left(\\frac{1}{4}x^2-\\frac{1}{2}x-2\\right)\\cdot e^{\\frac{1}{2}x} \\\\[2ex]\n");
printf("        z'''(x)&=\\left(\\frac{1}{8}x^2+\\frac{1}{4}x-\\frac{3}{2}\\right)\\cdot e^{\\frac{1}{2}x}\n");
printf("      \\end{split}\n");
printf("    \\end{equation*}\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Berechnen Sie die Zeitpunkte, zu denen das Wasser weder ein- noch abfließt.\n");
printf("            Geben Sie die Zeitintervalle an, in denen Wasser zu- bzw. abläuft.\n");
printf("      \\item Bestimmen Sie den Zeitpunkt, zu welchem die Zuflussrate im betrachteten\n");
printf("            Intervall maximal ist.\n");
printf("      \\item Welche Aussagen über die Änderung der Wassermenge zum Zeitpunkt\n");
printf("            $x=5$ sind möglich?\n");
printf("      \\item Bestimmen Sie den Zeitpunkt, zu dem sich die Zuflussrate am stärksten ändert.\n");
printf("      \\item Entscheiden Sie, ob es einen Zeitpunkt gibt, zu dem sich im Stausee wieder\n");
printf("            die Anfangswassermenge befindet. Die Begründung soll ohne Rechnung erfolgen.\n");
printf("      \\item Im Stausee ist eine bestimmte Bakteriensorte aufgetreten.\n");
printf("            Zum Zeitpunkt $x=0$ befinden sich bereits \\num{5000} Bakterien im Stausee.\n");
printf("            Die Wachstumsratenfunktion der Bakterien ist gegeben durch:\n");
printf("            \\begin{equation*}\n");
printf("              w(x)=x^3-12x^2+35x\n");
printf("            \\end{equation*}\n");
printf("            Dabei wird $x$ wieder in Tagen angegeben und $w(x)$ in \\num{10000} Bakterien pro Tag.\n");
printf("            Ermitteln Sie die Anzahl der Bakterien, die nach 3 Tagen im Stausee vorhanden sind.\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  %%\\ifoutcome\\outcome\\par\n");
printf("  %%\\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

