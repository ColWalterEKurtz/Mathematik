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
printf("      {ID-b8804547d0d591c4238b208f8f21c16a66d5bf64}\n");
printf("      {Zugfahrt}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Eine historische Eisenbahn befährt eine Kurzstrecke.\n");
printf("    Dabei übernimmt zur Entlastung des Fahrers ein Computer\n");
printf("    die Geschwindigkeitssteuerung. Er ist so programmiert,\n");
printf("    dass der zurückgelegte Weg durch eine ganzrationale\n");
printf("    Funktion $s$ mit\n");
printf("    \\begin{equation*}\n");
printf("      s(t)=at^3+bt^2+ct+d\n");
printf("      \\qquad\\text{($t$ in \\si{\\minute}, $s(t)$ in \\si{\\kilo\\metre})}\n");
printf("    \\end{equation*}\n");
printf("    beschrieben werden kann.\n");
printf("    Ein aufmerksamer Fahrgast stellt fest, dass\n");
printf("    die gesamte Fahrt 8 Minuten dauert. Außerdem\n");
printf("    beobachtet er, dass nach 4 Minuten Fahrt\n");
printf("    \\SI{4}{\\kilo\\metre} zurückhelegt werden.\n");
printf("    Am Anfang und am Ende der Fahrt steht der Zug.\n");
printf("    \\par\n");
printf("    Bestimmen Sie die Gleichung der\n");
printf("    Weg-Zeit-Funktion $s$.\n");
printf("    \\par\n");
printf("    \\textit{Hinweis:} Die Geschwindigkeit $v$ ist\n");
printf("    die Ableitung des Weges $s$.\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    Folgende Informationen sind in der\n");
printf("    Aufgabenstellung vorhanden:\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item $s(t)$ beschreibt den zurückgelegten Weg\n");
printf("      \\item nach 4 Minuten hat der Zug\n");
printf("            \\SI{4}{\\kilo\\metre} zurückgelegt\n");
printf("      \\item die Geschwindigkeit ist die Ableitung des Weges\n");
printf("      \\item am Anfang der Fahrt steht der Zug\n");
printf("      \\item am Ende der Fahrt (die Fahrt dauert\n");
printf("            8 Minuten) steht der Zug\n");
printf("    \\end{enumerate}\n");
printf("    %% </OUTLINE>\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    %% <OUTCOME>\n");
printf("    Aus den Informationen der Aufgabenstellung\n");
printf("    lassen sich folgende Gleichungen ableiten:\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item $s(t)=at^3+bt^2+ct+d$ beschreibt den\n");
printf("            zurückgelegten Weg:\n");
printf("            \\begin{equation*}\n");
printf("              s(0)=0\n");
printf("              \\quad\\Rightarrow\\quad\n");
printf("              d=0\n");
printf("            \\end{equation*}\n");
printf("      \\item nach 4 Minuten hat der Zug\n");
printf("            \\SI{4}{\\kilo\\metre} zurückgelegt:\n");
printf("            \\begin{equation*}\n");
printf("              s(4)=4\n");
printf("            \\end{equation*}\n");
printf("      \\item die Geschwindigkeit ist die Ableitung des Weges\n");
printf("            \\begin{equation*}\n");
printf("              v(t)=s'(t)=3at^2+2bt+c\n");
printf("            \\end{equation*}\n");
printf("      \\item am Anfang der Fahrt steht der Zug:\n");
printf("            \\begin{equation*}\n");
printf("              s'(0)=0\n");
printf("              \\quad\\Rightarrow\\quad\n");
printf("              c=0\n");
printf("            \\end{equation*}\n");
printf("      \\item am Ende der Fahrt (die Fahrt dauert\n");
printf("            8 Minuten) steht der Zug:\n");
printf("            \\begin{equation*}\n");
printf("              s'(8)=0\n");
printf("            \\end{equation*}\n");
printf("    \\end{enumerate}\n");
printf("    Die gesuchste Funktion und deren erste Ableitung\n");
printf("    haben also folgende vorläufige Form:\n");
printf("    \\begin{equation*}\n");
printf("      s(t)=at^3+bt^2\n");
printf("      \\quad\\text{und}\\quad\n");
printf("      s'(t)=3at^2+2bt\n");
printf("    \\end{equation*}\n");
printf("    Die noch unbekannten Koeffizienten $a$ und\n");
printf("    $b$ ergeben sich dann aus folgendem\n");
printf("    Gleichungssystem:\n");
printf("    \\begin{equation*}\n");
printf("      \\setlength{\\arraycolsep}{0.1em}%%\n");
printf("      \\begin{array}{r|lcr}\n");
printf("         \\text{I}\\;\\; & \\;  s(4) & = & 4 \\\\\n");
printf("        \\text{II}\\;\\; & \\; s'(8) & = & 0\n");
printf("      \\end{array}\n");
printf("      \\quad\\Rightarrow\\quad\n");
printf("      %%s(t)=at^3+bt^2\n");
printf("      %%s'(t)=3at^2+2bt\n");
printf("      \\begin{array}{r|rcrcr}\n");
printf("         \\text{I}\\;\\; & \\;  a\\cdot4^3 & + &  b\\cdot4^2 & = & 4 \\\\\n");
printf("        \\text{II}\\;\\; & \\; 3a\\cdot8^2 & + & 2b\\cdot8   & = & 0\n");
printf("      \\end{array}\n");
printf("    \\end{equation*}\n");
printf("    \\par Als Lösung erhält man:\\\\\n");
printf("    \\begin{minipage}[t]{0.49\\linewidth}\n");
printf("      \\vspace*{-\\abovedisplayskip}\n");
printf("      \\begin{alignat*}{1}\n");
printf("        %% <STEP>\n");
printf("        &\\setlength{\\arraycolsep}{0.1em}%%\n");
printf("        \\begin{array}{r|rrrrrrrl}\n");
printf("         \\text{I}{\\,} & {\\,} &  \\num{64}a & + & \\num{16}b & = & \\num{4} & {\\quad} & |:\\num{4}  \\\\\n");
printf("        \\text{II}{\\,} & {\\,} & \\num{192}a & + & \\num{16}b & = & \\num{0} & {\\quad} & |:\\num{16}\n");
printf("        \\end{array}\n");
printf("        %% </STEP>\n");
printf("        %% <STEP>\n");
printf("        \\\\[1ex]&\\setlength{\\arraycolsep}{0.1em}%%\n");
printf("        \\begin{array}{r|rrrrrrrl}\n");
printf("         \\text{I}{\\,} & {\\,} & \\num{16}a & + & \\num{4}b & = & \\num{1} & {\\quad} &                                    \\\\\n");
printf("        \\text{II}{\\,} & {\\,} & \\num{12}a & + & \\num{1}b & = & \\num{0} & {\\quad} & |\\cdot\\num{4}-\\num{3}\\cdot\\text{I}\n");
printf("        \\end{array}\n");
printf("        %% </STEP>\n");
printf("      \\end{alignat*}\n");
printf("    \\end{minipage}%%\n");
printf("    \\hfill\n");
printf("    \\begin{minipage}[t]{0.49\\linewidth}\n");
printf("      \\vspace*{-\\abovedisplayskip}\n");
printf("      \\begin{alignat*}{1}\n");
printf("        %% <STEP>\n");
printf("        &\\setlength{\\arraycolsep}{0.1em}%%\n");
printf("        \\begin{array}{r|rrrrrrrl}\n");
printf("         \\text{I}{\\,} & {\\,} & \\num{16}a & + & \\num{4}b & = &  \\num{1} & {\\quad} & |\\cdot\\num{2}+\\text{II}     \\\\\n");
printf("        \\text{II}{\\,} & {\\,} &  \\num{0}a & - & \\num{8}b & = & -\\num{3} & {\\quad} & |\\cdot\\left(-\\num{1}\\right)\n");
printf("        \\end{array}\n");
printf("        %% </STEP>\n");
printf("        %% <STEP>\n");
printf("        \\\\[1ex]&\\setlength{\\arraycolsep}{0.1em}%%\n");
printf("        \\begin{array}{r|rrrrrrrl}\n");
printf("         \\text{I}{\\,} & {\\,} & \\num{32}a & + & \\num{0}b & = & -\\num{1} & {\\quad} &   \\\\\n");
printf("        \\text{II}{\\,} & {\\,} &  \\num{0}a & + & \\num{8}b & = &  \\num{3} & {\\quad} &\n");
printf("        \\end{array}\n");
printf("        %% </STEP>\n");
printf("      \\end{alignat*}\n");
printf("    \\end{minipage}\\par\n");
printf("    Der gesuchte Funktionsterm lautet also:\n");
printf("    \\begin{equation*}\n");
printf("      %%<OCTAVE>\n");
printf("      s(t)=-\\frac{\\num{1}}{\\num{32}}t^{3}+\\frac{\\num{3}}{\\num{8}}t^{2}\n");
printf("      %%</OCTAVE>\n");
printf("      %%s = [-1/32 3/8 0 0];\n");
printf("      %%printf(\"s(t)=%%s\\n\", mypolystr(s, \"t\", [0,0,0,0,1]));\n");
printf("    \\end{equation*}\n");
printf("    \\begin{center}\n");
printf("      %%<OCTAVE>\n");
printf("      \\begin{tikzpicture}[scale=0.500]\n");
printf("        %% grid\n");
printf("        \\draw[draw=black!50!white] (0.000, 0.000) grid[step=0.5] (8.000, 8.000);\n");
printf("        %% x-axis\n");
printf("        \\draw[line width=0.6pt, ->, >=stealth] (0.000, 0) -- (8.000, 0) node[below left] {\\small$t$};\n");
printf("        %% y-axis\n");
printf("        \\draw[line width=0.6pt, ->, >=stealth] (0, 0.000) -- (0, 8.000) node[below left] {\\small$s$};\n");
printf("        %% function: f(x)=-\\num{0.03125}x^{3}+\\num{0.375}x^{2}\n");
printf("        \\begin{scope}[line width=0.7pt]\n");
printf("          \\clip (0.000, 0.000) rectangle (8.000, 8.000);\n");
printf("          \\draw plot[smooth] coordinates\n");
printf("          {\n");
printf("            (  0.000,   0.000) (  0.100,   0.004) (  0.200,   0.015)\n");
printf("            (  0.300,   0.033) (  0.400,   0.058) (  0.500,   0.090)\n");
printf("            (  0.600,   0.128) (  0.700,   0.173) (  0.800,   0.224)\n");
printf("            (  0.900,   0.281) (  1.000,   0.344) (  1.100,   0.412)\n");
printf("            (  1.200,   0.486) (  1.300,   0.565) (  1.400,   0.649)\n");
printf("            (  1.500,   0.738) (  1.600,   0.832) (  1.700,   0.930)\n");
printf("            (  1.800,   1.033) (  1.900,   1.139) (  2.000,   1.250)\n");
printf("            (  2.100,   1.364) (  2.200,   1.482) (  2.300,   1.604)\n");
printf("            (  2.400,   1.728) (  2.500,   1.855) (  2.600,   1.986)\n");
printf("            (  2.700,   2.119) (  2.800,   2.254) (  2.900,   2.392)\n");
printf("            (  3.000,   2.531) (  3.100,   2.673) (  3.200,   2.816)\n");
printf("            (  3.300,   2.961) (  3.400,   3.107) (  3.500,   3.254)\n");
printf("            (  3.600,   3.402) (  3.700,   3.551) (  3.800,   3.700)\n");
printf("            (  3.900,   3.850) (  4.000,   4.000) (  4.100,   4.150)\n");
printf("            (  4.200,   4.300) (  4.300,   4.449) (  4.400,   4.598)\n");
printf("            (  4.500,   4.746) (  4.600,   4.893) (  4.700,   5.039)\n");
printf("            (  4.800,   5.184) (  4.900,   5.327) (  5.000,   5.469)\n");
printf("            (  5.100,   5.608) (  5.200,   5.746) (  5.300,   5.881)\n");
printf("            (  5.400,   6.014) (  5.500,   6.145) (  5.600,   6.272)\n");
printf("            (  5.700,   6.396) (  5.800,   6.518) (  5.900,   6.636)\n");
printf("            (  6.000,   6.750) (  6.100,   6.861) (  6.200,   6.967)\n");
printf("            (  6.300,   7.070) (  6.400,   7.168) (  6.500,   7.262)\n");
printf("            (  6.600,   7.351) (  6.700,   7.435) (  6.800,   7.514)\n");
printf("            (  6.900,   7.588) (  7.000,   7.656) (  7.100,   7.719)\n");
printf("            (  7.200,   7.776) (  7.300,   7.827) (  7.400,   7.872)\n");
printf("            (  7.500,   7.910) (  7.600,   7.942) (  7.700,   7.967)\n");
printf("            (  7.800,   7.985) (  7.900,   7.996) (  8.000,   8.000)\n");
printf("          };\n");
printf("        \\end{scope}\n");
printf("      \\end{tikzpicture}\n");
printf("      %%</OCTAVE>\n");
printf("      %%s = [-1/32 3/8 0 0];\n");
printf("      %%mypolyplot(s, 0, 8, 0, 8, 0.1);\n");
printf("    \\end{center}\n");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

