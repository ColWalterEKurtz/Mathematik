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

printf("%% 2021-11-16\n");
printf("\\begin{exercise}\n");
printf("      {ID-57f45e9ca6ce3bccc30110ee5b44d510f1fc632c}\n");
printf("      {Glasplatte}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("      \\ifthenelse{\\isundefined{\\linecalc}}{\\newlength{\\linecalc}}{\\relax}%%\n");
printf("      \\setlength{\\linecalc}{\\linewidth}%%\n");
printf("      \\addtolength{\\linecalc}{-72mm}%%\n");
printf("      \\begin{minipage}[b]{\\linecalc}\n");
printf("        Von einer rechteckigen Glasplatte mit den Seitenlängen $a$ und $b$\n");
printf("        ist an einer Ecke ein Stück von der Form eines rechtwinkligen\n");
printf("        Dreiecks abgebrochen.\n");
printf("        Gegeben sind die Maße $a=\\simeter{1}$, $b=\\sicm{60}$, $c=\\sicm{10}$ und\n");
printf("        $d=\\sicm{4}$.\n");
printf("        Wie sind $e$ und $f$ zu wählen, damit aus dem Rest eine\n");
printf("        möglichst große, rechteckige Platte geschnitten werden kann?\n");
printf("      \\end{minipage}\\hspace*{\\fill}%%\n");
printf("      \\begin{minipage}[b]{65mm}\n");
printf("        \\raggedleft\n");
printf("        \\raisebox{\\baselineskip}[7\\baselineskip][0pt]{%%\n");
printf("        \\begin{tikzpicture}[scale=0.05]\n");
printf("          %% um die Punkte verschieben zu koennen\n");
printf("          \\newcommand{\\pdef}\n");
printf("          {\n");
printf("            \\coordinate (A) at (  0.0000,   0.0000);\n");
printf("            \\coordinate (B) at (100.0000,   0.0000);\n");
printf("            \\coordinate (C) at (100.0000,  60.0000);\n");
printf("            \\coordinate (D) at (  0.0000,  60.0000);\n");
printf("            \\coordinate (E) at (100.0000,  35.0000);\n");
printf("            \\coordinate (F) at ( 60.0000,  60.0000);\n");
printf("            \\coordinate (G) at ( 80.0000,   0.0000);\n");
printf("            \\coordinate (H) at ( 80.0000,  47.5000);\n");
printf("            \\coordinate (I) at (  0.0000,  47.5000);\n");
printf("          }\n");
printf("          %% die unverschobene Variante\n");
printf("          \\pdef\n");
printf("          %% abgebrochene Ecke\n");
printf("          \\filldraw[fill=black!25!white] (E) -- (C) -- (F);\n");
printf("          %% Reststueck\n");
printf("          \\draw (A) -- (B) -- (E) -- (F) -- (D) -- cycle;\n");
printf("          %% inneres Rechteck\n");
printf("          \\draw (G) -- node[left]{{\\small$f$}} (H)\n");
printf("                    -- node[below]{{\\small$e$}}  (I);\n");
printf("          %% Beschriftung oben\n");
printf("          \\begin{scope}[yshift=200]\n");
printf("            \\pdef\n");
printf("            \\draw[|<->|, >=stealth] (D) -- node[above]{{\\small$a-c$}} (F);\n");
printf("            \\draw[<->|, >=stealth] (F) -- node[above]{{\\small$c$}} (C);\n");
printf("          \\end{scope}\n");
printf("          %% Beschriftung rechts\n");
printf("          \\begin{scope}[xshift=200]\n");
printf("            \\pdef\n");
printf("            \\draw[|<->|, >=stealth] (B) -- node[right]{{\\small$b-d$}} (E);\n");
printf("            \\draw[<->|, >=stealth] (E) -- node[right]{{\\small$d$}} (C);\n");
printf("          \\end{scope}\n");
printf("        \\end{tikzpicture}}\n");
printf("      \\end{minipage}\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    %% </OUTLINE>\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    %% <OUTCOME>\n");
printf("    Gesucht wird eine möglichst große rechteckige\n");
printf("    Fläche mit den Seitenlängen $e$ und $f$.\n");
printf("    Die zu maximierende Funktion lautet also:\n");
printf("    \\begin{equation*}\n");
printf("      A(e,f)=e\\cdot f\n");
printf("    \\end{equation*}\n");
printf("    Die größte Fläche ergibt sich, wenn die rechte\n");
printf("    obere Ecke der neuen Glasplatte genau auf die\n");
printf("    Bruchkante gelegt wird.\n");
printf("    Die Variablen $e$ und $f$ sind also nicht\n");
printf("    unabhängig von einander, sondern müssen\n");
printf("    auf einander abgestimmt werden:\n");
printf("    Zum Beispiel definiert zu einer frei wählbaren\n");
printf("    Breite $e$ die Bruchkante die zugehörige Höhe $f$.\n");
printf("    \\par\n");
printf("    Wenn es nun gelänge, die Gleichung einer Geraden\n");
printf("    aufzustellen, welche die Bruchkante als\n");
printf("    Teilstrecke enthält, hätte man einen\n");
printf("    funktionalen Zusammenhang gefunden, mit\n");
printf("    dem sich die Abhängigkeit zwischen $e$ und\n");
printf("    $f$ quantitativ beschreiben lässt.\n");
printf("    \\par\n");
printf("    Bettet man dazu die Glasplatte in ein\n");
printf("    Koordinatensystem ein, dessen Urprung zum\n");
printf("    Beispiel in die untere linke Ecke der\n");
printf("    Glasplatte gelegt wird, erhalten die Enden\n");
printf("    der Bruchkante folgende Koordinaten:\n");
printf("    \\begin{equation*}\n");
printf("      E_1\\left(a-c\\;\\middle|\\;b\\right)\n");
printf("      \\quad\\text{bzw.}\\quad\n");
printf("      E_2\\left(a\\;\\middle|\\;b-d\\right)\n");
printf("    \\end{equation*}\n");
printf("    Mit den Angaben aus der Aufgabenstellung\n");
printf("    ergeben sich dann die Zahlenwerte:\n");
printf("    \\begin{equation*}\n");
printf("      E_1\\left(90\\;\\middle|\\;60\\right)\n");
printf("      \\quad\\text{bzw.}\\quad\n");
printf("      E_2\\left(100\\;\\middle|\\;56\\right)\n");
printf("    \\end{equation*}\n");
printf("    Da durch zwei verschiedene Punkte eine Gerade\n");
printf("    genau festgelegt ist, und diese im gewählten\n");
printf("    Koordinatensystem nicht parallel zur $y$-Achse\n");
printf("    verläuft, lässt sich deren Funktionsgleichung\n");
printf("    nun wie folgt bestimmen:\n");
printf("    \\begin{equation*}\n");
printf("      \\begin{split}\n");
printf("        g(x)&=m\\cdot x+b\n");
printf("        \\\\\n");
printf("        m&=\\frac{y_2-y_1}{x_2-x_1}\n");
printf("          =\\frac{56-60}{100-90}\n");
printf("          =\\frac{-4}{10}\n");
printf("          =\\num{-0.4}\n");
printf("        \\\\\n");
printf("        b&=g(x)-m\\cdot x\n");
printf("          =56-(\\num{-0.4})\\cdot100\n");
printf("          =\\num{96}\n");
printf("        \\\\[1ex]\n");
printf("        g(x)&=\\num{-0.4}x+96\n");
printf("      \\end{split}\n");
printf("    \\end{equation*}\n");
printf("    Setzt man in diese Geradengleichung einen\n");
printf("    Wert zwischen \\num{90} und \\num{100} ein,\n");
printf("    liefert die Rechnung genau den passenden\n");
printf("    Wert, mit dem ein Punkt auf der Bruchkante\n");
printf("    erreicht wird.\n");
printf("    Zu einem gewählten $e$ erhält man also\n");
printf("    das passende $f$.\n");
printf("    \\par\n");
printf("    Mit dem gefundenen Zusammenhang $f=g(e)$\n");
printf("    erhält die zu maximierende Funktion $A$\n");
printf("    nun folgende Form:\n");
printf("    \\begin{equation*}\n");
printf("      f=\\num{-0.4}e+\\num{96}\n");
printf("      \\quad\\Rightarrow\\quad\n");
printf("      A(e,f)=e\\cdot f\n");
printf("            =e\\cdot(\\num{-0.4}e+\\num{96})\n");
printf("            =\\num{-0.4}e^2+\\num{96}e\n");
printf("            =A(e)\n");
printf("    \\end{equation*}\n");
printf("    Damit ist sie nur noch von einer Variablen\n");
printf("    abhängig und die Extremstellen können mit\n");
printf("    den bekannten Verfahren der Analysis bestimmt\n");
printf("    werden:\n");
printf("    \\begin{alignat*}{3}\n");
printf("      \\relax&\\quad\n");
printf("      &\n");
printf("      A'(e)&=\\num{-0.8}e+\\num{96}\n");
printf("      &\n");
printf("      \\quad&\\relax\n");
printf("      \\\\\n");
printf("      \\relax&\\quad\n");
printf("      &\n");
printf("      0&=\\num{-0.8}e+\\num{96}\n");
printf("      &\n");
printf("      \\quad&|-\\num{96}\n");
printf("      \\\\\n");
printf("      \\Leftrightarrow&\\quad\n");
printf("      &\n");
printf("      \\num{-96}&=\\num{-0.8}e\n");
printf("      &\n");
printf("      \\quad&|:(\\num{-0.8})\n");
printf("      \\\\\n");
printf("      \\Leftrightarrow&\\quad\n");
printf("      &\n");
printf("      120&=e\n");
printf("      &\n");
printf("      \\quad&\\relax\n");
printf("    \\end{alignat*}\n");
printf("    Die einzige Nullstelle der Ableitung liegt\n");
printf("    außerhalb des Definitionsbereichs von $e$.\n");
printf("    Das gesuchte Maximum kann also nur ein\n");
printf("    Randwert des Definitionsbereichs sein:\n");
printf("    \\begin{equation*}\n");
printf("      \\begin{split}\n");
printf("        A(90)&=\\num{-0.4}\\cdot90^2+96\\cdot90=\\num{5400}\n");
printf("        %%-0.4*90^2+96*90\n");
printf("        \\\\\n");
printf("        A(100)&=\\num{-0.4}\\cdot100^2+96\\cdot100=\\num{5600}\n");
printf("        %%-0.4*100^2+96*100\n");
printf("      \\end{split}\n");
printf("    \\end{equation*}\n");
printf("    Die größtmögliche rechteckige Glasplatte, die\n");
printf("    man aus dem beschädigten Original noch\n");
printf("    schneiden kann, hat also eine Breite von\n");
printf("    \\SI{100}{\\centi\\metre} und eine Höhe von\n");
printf("    \\SI{56}{\\centi\\metre}.\n");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

