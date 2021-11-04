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
printf("      {ID-6b0510e2b36519987fed8db12a9cdc9c114d5a65}\n");
printf("      {Ablesen und rechnen}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Gib die Funktionsgleichung der abgebildeten\n");
printf("    Parabel in Normalform an, und bestimme ihre\n");
printf("    Nullstellen exakt:\n");
printf("    \\begin{center}\n");
printf("    \\begin{tikzpicture}[scale=1.000]\n");
printf("      %% grid\n");
printf("      \\draw[draw=black!50!white] (-5.000, -2.000) grid[step=0.5] (5.000, 5.000);\n");
printf("      %% x-axis\n");
printf("      \\draw[line width=0.6pt, ->, >=stealth] (-5.000, 0) -- (5.000, 0) node[below left] {\\small$x$};\n");
printf("      %% x scale\n");
printf("      \\draw (1, 2pt) -- (1, -2pt) node[below] {1};\n");
printf("      %% y-axis\n");
printf("      \\draw[line width=0.6pt, ->, >=stealth] (0, -2.000) -- (0, 5.000) node[below left] {\\small$y$};\n");
printf("      %% y scale\n");
printf("      \\draw (-2pt, 1) -- (2pt, 1) node[right] {1};\n");
printf("      %% function: f(x)=-\\num{1.5}x^{2}+\\num{3}x+\\num{1.5}\n");
printf("      \\begin{scope}[line width=0.7pt]\n");
printf("        \\clip (-5.000, -2.000) rectangle (5.000, 5.000);\n");
printf("        \\draw plot[smooth] coordinates\n");
printf("        {\n");
printf("          ( -5.000,  -5.000) ( -4.900,  -5.000) ( -4.800,  -5.000)\n");
printf("          ( -4.700,  -5.000) ( -4.600,  -5.000) ( -4.500,  -5.000)\n");
printf("          ( -4.400,  -5.000) ( -4.300,  -5.000) ( -4.200,  -5.000)\n");
printf("          ( -4.100,  -5.000) ( -4.000,  -5.000) ( -3.900,  -5.000)\n");
printf("          ( -3.800,  -5.000) ( -3.700,  -5.000) ( -3.600,  -5.000)\n");
printf("          ( -3.500,  -5.000) ( -3.400,  -5.000) ( -3.300,  -5.000)\n");
printf("          ( -3.200,  -5.000) ( -3.100,  -5.000) ( -3.000,  -5.000)\n");
printf("          ( -2.900,  -5.000) ( -2.800,  -5.000) ( -2.700,  -5.000)\n");
printf("          ( -2.600,  -5.000) ( -2.500,  -5.000) ( -2.400,  -5.000)\n");
printf("          ( -2.300,  -5.000) ( -2.200,  -5.000) ( -2.100,  -5.000)\n");
printf("          ( -2.000,  -5.000) ( -1.900,  -5.000) ( -1.800,  -5.000)\n");
printf("          ( -1.700,  -5.000) ( -1.600,  -5.000) ( -1.500,  -5.000)\n");
printf("          ( -1.400,  -5.000) ( -1.300,  -4.935) ( -1.200,  -4.260)\n");
printf("          ( -1.100,  -3.615) ( -1.000,  -3.000) ( -0.900,  -2.415)\n");
printf("          ( -0.800,  -1.860) ( -0.700,  -1.335) ( -0.600,  -0.840)\n");
printf("          ( -0.500,  -0.375) ( -0.400,   0.060) ( -0.300,   0.465)\n");
printf("          ( -0.200,   0.840) ( -0.100,   1.185) (  0.000,   1.500)\n");
printf("          (  0.100,   1.785) (  0.200,   2.040) (  0.300,   2.265)\n");
printf("          (  0.400,   2.460) (  0.500,   2.625) (  0.600,   2.760)\n");
printf("          (  0.700,   2.865) (  0.800,   2.940) (  0.900,   2.985)\n");
printf("          (  1.000,   3.000) (  1.100,   2.985) (  1.200,   2.940)\n");
printf("          (  1.300,   2.865) (  1.400,   2.760) (  1.500,   2.625)\n");
printf("          (  1.600,   2.460) (  1.700,   2.265) (  1.800,   2.040)\n");
printf("          (  1.900,   1.785) (  2.000,   1.500) (  2.100,   1.185)\n");
printf("          (  2.200,   0.840) (  2.300,   0.465) (  2.400,   0.060)\n");
printf("          (  2.500,  -0.375) (  2.600,  -0.840) (  2.700,  -1.335)\n");
printf("          (  2.800,  -1.860) (  2.900,  -2.415) (  3.000,  -3.000)\n");
printf("          (  3.100,  -3.615) (  3.200,  -4.260) (  3.300,  -4.935)\n");
printf("          (  3.400,  -5.000) (  3.500,  -5.000) (  3.600,  -5.000)\n");
printf("          (  3.700,  -5.000) (  3.800,  -5.000) (  3.900,  -5.000)\n");
printf("          (  4.000,  -5.000) (  4.100,  -5.000) (  4.200,  -5.000)\n");
printf("          (  4.300,  -5.000) (  4.400,  -5.000) (  4.500,  -5.000)\n");
printf("          (  4.600,  -5.000) (  4.700,  -5.000) (  4.800,  -5.000)\n");
printf("          (  4.900,  -5.000) (  5.000,  -5.000)\n");
printf("        };\n");
printf("      \\end{scope}\n");
printf("    \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    %% </OUTLINE>\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    %% <OUTCOME>\n");
printf("    Da man die Koordinaten des Scheitelpunktes\n");
printf("    relativ gut ablesen kann, ist es einen Versuch\n");
printf("    wert, zunächst die Scheitelpunktform der\n");
printf("    Parabel zu bestimmen. Die Scheitelpunktform\n");
printf("    einer Parabel hat folgende Struktur:\n");
printf("    \\begin{equation*}\n");
printf("      f(x)=a(x-d)^2+e\n");
printf("      \\quad\n");
printf("      \\text{mit dem Scheitelpunkt}\n");
printf("      \\quad\n");
printf("      S\\left(d\\;\\middle|\\;e\\right)\n");
printf("    \\end{equation*}\n");
printf("    Für die abgebildete Parabel erhält man also\n");
printf("    folgendes Zwischenergebnis:\n");
printf("    \\begin{equation*}\n");
printf("      f(x)=a(x-1)^2+3\n");
printf("    \\end{equation*}\n");
printf("    Um den Skalierungsfaktor $a$ bestimmen zu\n");
printf("    können, benötigt man einen weiteren Punkt\n");
printf("    $P$ auf der Parabel, dessen Koordinaten\n");
printf("    man genau ablesen kann.\n");
printf("    Hier bietet sich zum Beispiel der\n");
printf("    $y$-Achsen\\-ab\\-schnitt\n");
printf("    $P\\left(0\\;\\middle|\\;\\num{1.5}\\right)$ an.\n");
printf("    Die Scheitelpunktform lässt sich dann nach\n");
printf("    $a$ auflösen, und der Parameter $a$\n");
printf("    kann mit den abgelesenen Werten berechnet\n");
printf("    werden:\n");
printf("    \\begin{equation*}\n");
printf("      \\begin{split}\n");
printf("        f(x)&=a(x-d)^2+e\n");
printf("        \\quad\\Rightarrow\\quad\n");
printf("        \\frac{f(x)-e}{(x-d)^2}=a\n");
printf("        \\\\\n");
printf("        a&=\\frac{\\num{1.5}-\\num{3}}{(\\num{0}-\\num{1})^2}\n");
printf("        =\\num{-1.5}\n");
printf("      \\end{split}\n");
printf("    \\end{equation*}\n");
printf("    Die Scheitelpunktform der abgebildeten Parabel\n");
printf("    lautet also:\n");
printf("    \\begin{equation*}\n");
printf("      f(x)=\\num{-1.5}\\cdot(x-1)^2+3\n");
printf("    \\end{equation*}\n");
printf("    Das Ausmultiplizieren der Scheitelpunktform\n");
printf("    liefert die gesuchte Normalform:\n");
printf("    \\begin{equation*}\n");
printf("      \\begin{split}\n");
printf("        f(x)&=\\num{-1.5}\\cdot(x-1)^2+3\\\\\n");
printf("            &=\\num{-1.5}\\cdot(x^2-2x+1)+3\\\\\n");
printf("            &=\\num{-1.5}x^2+3x-\\num{1.5}+3\\\\\n");
printf("            &=\\num{-1.5}x^2+3x+\\num{1.5}\n");
printf("      \\end{split}\n");
printf("    \\end{equation*}\n");
printf("    Sobald man die Normalform der Parabel kennt,\n");
printf("    kann man ihre Nullstelllen mit Hilfe der\n");
printf("    $pq$-Formel bestimmen:\n");
printf("    \\begin{alignat*}{3}\n");
printf("      \\relax&\\quad\n");
printf("      &\n");
printf("      0&=\\num{-1.5}x^2+3x+\\num{1.5}\n");
printf("      &\n");
printf("      \\quad&|:(\\num{-1.5})\n");
printf("      \\\\\n");
printf("      \\Leftrightarrow&\\quad\n");
printf("      &\n");
printf("      0&=x^2-2x-1\n");
printf("      &\n");
printf("      \\quad&|\\;\\text{$pq$-Formel}\n");
printf("      \\\\\n");
printf("      \\Leftrightarrow&\\quad\n");
printf("      &\n");
printf("      x_{1,2}&=-\\frac{-2}{2}\\pm\\sqrt{\\left(\\frac{-2}{2}\\right)^2-(-1)}\n");
printf("      &\n");
printf("      \\quad&\\relax\n");
printf("      \\\\\n");
printf("      \\relax&\\quad\n");
printf("      &\n");
printf("      &=1\\pm\\sqrt{2}\n");
printf("      &\n");
printf("      \\quad&\\relax\n");
printf("      \\\\\n");
printf("      \\Leftrightarrow&\\quad\n");
printf("      &\n");
printf("      x&=1-\\sqrt{2}\\quad\\lor\\quad\n");
printf("      x=1+\\sqrt{2}\n");
printf("      &\n");
printf("      \\quad&\\relax\n");
printf("    \\end{alignat*}\n");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

