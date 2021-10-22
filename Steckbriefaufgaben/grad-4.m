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
printf("      {ID-65244850a6f18971e9d4b9a2867d7c139ed63dab}\n");
printf("      {Grad 4}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Bestimmen Sie -- falls existent -- die Gleichung\n");
printf("    einer ganzrationalen Funktion vierten Grades,\n");
printf("    deren zur $y$-Achse symmetrischer Graph durch\n");
printf("    $Q\\left(1\\;\\middle|\\;2\\right)$ geht und bei\n");
printf("    $x=2$ die $x$-Achse berührt.\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    Folgende Informationen sind in der\n");
printf("    Aufgabenstellung vorhanden:\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item $f$ ist eine ganzrationale Funktion\n");
printf("            vierten Grades\n");
printf("      \\item $f$ ist symmetrisch zur $y$-Achse\n");
printf("      \\item $Q\\left(1\\;\\middle|\\;2\\right)$ liegt\n");
printf("            auf dem Graphen von $f$\n");
printf("      \\item $f$ \\emph{berührt} die $x$-Achse bei\n");
printf("            $x=2$\n");
printf("    \\end{enumerate}\n");
printf("    %% </OUTLINE>\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    %% <OUTCOME>\n");
printf("    Aus den Informationen der Aufgabenstellung\n");
printf("    lassen sich folgende Gleichungen ableiten:\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item $f$ ist eine ganzrationale Funktion\n");
printf("            vierten Grades:\n");
printf("            \\begin{equation*}\n");
printf("              f(x)=ax^4+bx^3+cx^2+dx+e\n");
printf("            \\end{equation*}\n");
printf("      \\item $f$ ist symmetrisch zur $y$-Achse,\n");
printf("            d.\\,h. es gibt keine ungeraden\n");
printf("            Exponenten im Funktionsterm:\n");
printf("            \\begin{equation*}\n");
printf("              b=0\n");
printf("              \\quad\\text{und}\\quad\n");
printf("              d=0\n");
printf("            \\end{equation*}\n");
printf("      \\item $Q\\left(1\\;\\middle|\\;2\\right)$ liegt\n");
printf("            auf dem Graphen von $f$:\n");
printf("            \\begin{equation*}\n");
printf("              f(1)=2\n");
printf("            \\end{equation*}\n");
printf("      \\item $f$ \\emph{berührt} die $x$-Achse bei\n");
printf("            $x=2$:\n");
printf("            \\begin{equation*}\n");
printf("              f(2)=0\n");
printf("              \\quad\\text{und}\\quad\n");
printf("              f'(2)=0\n");
printf("            \\end{equation*}\n");
printf("    \\end{enumerate}\n");
printf("    Die gesuchste Funktion und deren erste Ableitung\n");
printf("    haben also folgende vorläufige Form:\n");
printf("    \\begin{equation*}\n");
printf("      f(x)=ax^4+cx^2+e\n");
printf("      \\quad\\text{und}\\quad\n");
printf("      f'(x)=4ax^3+2cx\n");
printf("    \\end{equation*}\n");
printf("    Die noch unbekannten Koeffizienten $a$, $c$ und\n");
printf("    $e$ ergeben sich dann aus folgendem\n");
printf("    Gleichungssystem:\n");
printf("    \\begin{equation*}\n");
printf("      \\setlength{\\arraycolsep}{0.1em}%%\n");
printf("      \\begin{array}{r|lcr}\n");
printf("          \\text{I}\\;\\; & \\; f(1)  & = & 2 \\\\\n");
printf("         \\text{II}\\;\\; & \\; f(2)  & = & 0 \\\\\n");
printf("        \\text{III}\\;\\; & \\; f'(2) & = & 0\n");
printf("      \\end{array}\n");
printf("      \\quad\\Rightarrow\\quad\n");
printf("      \\begin{array}{r|rcrcrcr}\n");
printf("          \\text{I}\\;\\; & \\;  a\\cdot1^4 & + &  c\\cdot1^2 & + & e & = & 2 \\\\\n");
printf("         \\text{II}\\;\\; & \\;  a\\cdot2^4 & + &  c\\cdot2^2 & + & e & = & 0 \\\\\n");
printf("        \\text{III}\\;\\; & \\; 4a\\cdot2^3 & + & 2c\\cdot2   &   &   & = & 0\n");
printf("      \\end{array}\n");
printf("    \\end{equation*}\n");
printf("    \\par Als Lösung erhält man:\\\\\n");
printf("    \\begin{minipage}[t]{0.49\\linewidth}\n");
printf("      \\vspace*{-\\abovedisplayskip}\n");
printf("      \\begin{alignat*}{1}\n");
printf("        %% <STEP>\n");
printf("        &\\setlength{\\arraycolsep}{0.1em}%%\n");
printf("        \\begin{array}{r|rrrrrrrrrl}\n");
printf("          \\text{I}{\\,} & {\\,} &  \\num{1}a & + & \\num{1}c & + & \\num{1}e & = & \\num{2} & {\\quad} &            \\\\\n");
printf("         \\text{II}{\\,} & {\\,} & \\num{16}a & + & \\num{4}c & + & \\num{1}e & = & \\num{0} & {\\quad} & |-\\text{I} \\\\\n");
printf("        \\text{III}{\\,} & {\\,} & \\num{32}a & + & \\num{4}c & + & \\num{0}e & = & \\num{0} & {\\quad} &\n");
printf("        \\end{array}\n");
printf("        %% </STEP>\n");
printf("        %% <STEP>\n");
printf("        \\\\[1ex]&\\setlength{\\arraycolsep}{0.1em}%%\n");
printf("        \\begin{array}{r|rrrrrrrrrl}\n");
printf("          \\text{I}{\\,} & {\\,} &  \\num{1}a & + & \\num{1}c & + & \\num{1}e & = &  \\num{2} & {\\quad} &                                     \\\\\n");
printf("         \\text{II}{\\,} & {\\,} & \\num{15}a & + & \\num{3}c & + & \\num{0}e & = & -\\num{2} & {\\quad} &                                     \\\\\n");
printf("        \\text{III}{\\,} & {\\,} & \\num{32}a & + & \\num{4}c & + & \\num{0}e & = &  \\num{0} & {\\quad} & |\\cdot\\num{3}-\\num{4}\\cdot\\text{II}\n");
printf("        \\end{array}\n");
printf("        %% </STEP>\n");
printf("        %% <STEP>\n");
printf("        \\\\[1ex]&\\setlength{\\arraycolsep}{0.1em}%%\n");
printf("        \\begin{array}{r|rrrrrrrrrl}\n");
printf("          \\text{I}{\\,} & {\\,} &  \\num{1}a & + & \\num{1}c & + & \\num{1}e & = &  \\num{2} & {\\quad} &           \\\\\n");
printf("         \\text{II}{\\,} & {\\,} & \\num{15}a & + & \\num{3}c & + & \\num{0}e & = & -\\num{2} & {\\quad} &           \\\\\n");
printf("        \\text{III}{\\,} & {\\,} & \\num{36}a & + & \\num{0}c & + & \\num{0}e & = &  \\num{8} & {\\quad} & |:\\num{4}\n");
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
printf("        \\begin{array}{r|rrrrrrrrrl}\n");
printf("          \\text{I}{\\,} & {\\,} &  \\num{1}a & + & \\num{1}c & + & \\num{1}e & = &  \\num{2} & {\\quad} & |\\cdot\\num{9}-\\text{III}             \\\\\n");
printf("         \\text{II}{\\,} & {\\,} & \\num{15}a & + & \\num{3}c & + & \\num{0}e & = & -\\num{2} & {\\quad} & |\\cdot\\num{3}-\\num{5}\\cdot\\text{III} \\\\\n");
printf("        \\text{III}{\\,} & {\\,} &  \\num{9}a & + & \\num{0}c & + & \\num{0}e & = &  \\num{2} & {\\quad} &\n");
printf("        \\end{array}\n");
printf("        %% </STEP>\n");
printf("        %% <STEP>\n");
printf("        \\\\[1ex]&\\setlength{\\arraycolsep}{0.1em}%%\n");
printf("        \\begin{array}{r|rrrrrrrrrl}\n");
printf("          \\text{I}{\\,} & {\\,} & \\num{0}a & + & \\num{9}c & + & \\num{9}e & = &  \\num{16} & {\\quad} & |-\\text{II} \\\\\n");
printf("         \\text{II}{\\,} & {\\,} & \\num{0}a & + & \\num{9}c & + & \\num{0}e & = & -\\num{16} & {\\quad} &             \\\\\n");
printf("        \\text{III}{\\,} & {\\,} & \\num{9}a & + & \\num{0}c & + & \\num{0}e & = &   \\num{2} & {\\quad} &\n");
printf("        \\end{array}\n");
printf("        %% </STEP>\n");
printf("        %% <STEP>\n");
printf("        \\\\[1ex]&\\setlength{\\arraycolsep}{0.1em}%%\n");
printf("        \\begin{array}{r|rrrrrrrrrl}\n");
printf("          \\text{I}{\\,} & {\\,} & \\num{0}a & + & \\num{0}c & + & \\num{9}e & = &  \\num{32} & {\\quad} &   \\\\\n");
printf("         \\text{II}{\\,} & {\\,} & \\num{0}a & + & \\num{9}c & + & \\num{0}e & = & -\\num{16} & {\\quad} &   \\\\\n");
printf("        \\text{III}{\\,} & {\\,} & \\num{9}a & + & \\num{0}c & + & \\num{0}e & = &   \\num{2} & {\\quad} &\n");
printf("        \\end{array}\n");
printf("        %% </STEP>\n");
printf("      \\end{alignat*}\n");
printf("    \\end{minipage}\\par\n");
printf("    Der gesuchte Funktionsterm lautet also:\n");
printf("    \\begin{equation*}\n");
printf("      %%<OCTAVE>\n");
printf("      f(x)=\\frac{\\num{2}}{\\num{9}}x^{4}-\\frac{\\num{16}}{\\num{9}}x^{2}+\\frac{\\num{32}}{\\num{9}}\n");
printf("      %%</OCTAVE>\n");
printf("      %%f = [2/9 0 -16/9 0 32/9];\n");
printf("      %%printf(\"f(x)=%%s\\n\", mypolystr(f, \"x\", [0,0,0,0,1]));\n");
printf("    \\end{equation*}\n");
printf("    \\begin{center}\n");
printf("      %%<OCTAVE>\n");
printf("      \\begin{tikzpicture}[scale=1.000]\n");
printf("        %% grid\n");
printf("        \\draw[draw=black!50!white] (-5.000, -1.000) grid[step=0.5] (5.000, 5.000);\n");
printf("        %% x-axis\n");
printf("        \\draw[line width=0.6pt, ->, >=stealth] (-5.000, 0) -- (5.000, 0) node[below left] {\\small$x$};\n");
printf("        %% y-axis\n");
printf("        \\draw[line width=0.6pt, ->, >=stealth] (0, -1.000) -- (0, 5.000) node[below left] {\\small$y$};\n");
printf("        %% function: f(x)=\\num{0.2222222}x^{4}-\\num{1.7777778}x^{2}+\\num{3.5555556}\n");
printf("        \\begin{scope}[line width=0.7pt]\n");
printf("          \\clip (-5.000, -1.000) rectangle (5.000, 5.000);\n");
printf("          \\draw plot[smooth] coordinates\n");
printf("          {\n");
printf("            ( -5.000,   8.000) ( -4.900,   8.000) ( -4.800,   8.000)\n");
printf("            ( -4.700,   8.000) ( -4.600,   8.000) ( -4.500,   8.000)\n");
printf("            ( -4.400,   8.000) ( -4.300,   8.000) ( -4.200,   8.000)\n");
printf("            ( -4.100,   8.000) ( -4.000,   8.000) ( -3.900,   8.000)\n");
printf("            ( -3.800,   8.000) ( -3.700,   8.000) ( -3.600,   8.000)\n");
printf("            ( -3.500,   8.000) ( -3.400,   8.000) ( -3.300,   8.000)\n");
printf("            ( -3.200,   8.000) ( -3.100,   6.994) ( -3.000,   5.556)\n");
printf("            ( -2.900,   4.322) ( -2.800,   3.277) ( -2.700,   2.405)\n");
printf("            ( -2.600,   1.693) ( -2.500,   1.125) ( -2.400,   0.688)\n");
printf("            ( -2.300,   0.370) ( -2.200,   0.157) ( -2.100,   0.037)\n");
printf("            ( -2.000,   0.000) ( -1.900,   0.034) ( -1.800,   0.128)\n");
printf("            ( -1.700,   0.274) ( -1.600,   0.461) ( -1.500,   0.681)\n");
printf("            ( -1.400,   0.925) ( -1.300,   1.186) ( -1.200,   1.456)\n");
printf("            ( -1.100,   1.730) ( -1.000,   2.000) ( -0.900,   2.261)\n");
printf("            ( -0.800,   2.509) ( -0.700,   2.738) ( -0.600,   2.944)\n");
printf("            ( -0.500,   3.125) ( -0.400,   3.277) ( -0.300,   3.397)\n");
printf("            ( -0.200,   3.485) ( -0.100,   3.538) (  0.000,   3.556)\n");
printf("            (  0.100,   3.538) (  0.200,   3.485) (  0.300,   3.397)\n");
printf("            (  0.400,   3.277) (  0.500,   3.125) (  0.600,   2.944)\n");
printf("            (  0.700,   2.738) (  0.800,   2.509) (  0.900,   2.261)\n");
printf("            (  1.000,   2.000) (  1.100,   1.730) (  1.200,   1.456)\n");
printf("            (  1.300,   1.186) (  1.400,   0.925) (  1.500,   0.681)\n");
printf("            (  1.600,   0.461) (  1.700,   0.274) (  1.800,   0.128)\n");
printf("            (  1.900,   0.034) (  2.000,   0.000) (  2.100,   0.037)\n");
printf("            (  2.200,   0.157) (  2.300,   0.370) (  2.400,   0.688)\n");
printf("            (  2.500,   1.125) (  2.600,   1.693) (  2.700,   2.405)\n");
printf("            (  2.800,   3.277) (  2.900,   4.322) (  3.000,   5.556)\n");
printf("            (  3.100,   6.994) (  3.200,   8.000) (  3.300,   8.000)\n");
printf("            (  3.400,   8.000) (  3.500,   8.000) (  3.600,   8.000)\n");
printf("            (  3.700,   8.000) (  3.800,   8.000) (  3.900,   8.000)\n");
printf("            (  4.000,   8.000) (  4.100,   8.000) (  4.200,   8.000)\n");
printf("            (  4.300,   8.000) (  4.400,   8.000) (  4.500,   8.000)\n");
printf("            (  4.600,   8.000) (  4.700,   8.000) (  4.800,   8.000)\n");
printf("            (  4.900,   8.000) (  5.000,   8.000)\n");
printf("          };\n");
printf("        \\end{scope}\n");
printf("      \\end{tikzpicture}\n");
printf("      %%</OCTAVE>\n");
printf("      %%f = [2/9 0 -16/9 0 32/9];\n");
printf("      %%mypolyplot(f, -5, 5, -1, 5, 0.1);\n");
printf("    \\end{center}\n");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

