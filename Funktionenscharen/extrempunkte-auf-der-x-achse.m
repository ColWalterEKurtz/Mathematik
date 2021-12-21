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

printf("%% 2021-12-21\n");
printf("\\begin{exercise}\n");
printf("      {ID-909815443901ddb5acb3cab777d97cca8c7a3c8f}\n");
printf("      {Extrempunkte auf der $x$-Achse}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Bestimmen Sie die Koordinaten der Extrempunkte\n");
printf("    folgender Funktionenschar:\n");
printf("    \\begin{equation*}\n");
printf("      f_a(x)=ax^3-3ax+1\n");
printf("      \\qquad\n");
printf("      a\\in\\mathbb{R}\\setminus\\{0\\}\n");
printf("    \\end{equation*}\n");
printf("    Für welche Werte von $a$ liegt mindestens ein\n");
printf("    Extrempunkt auf der $x$-Achse und um welche\n");
printf("    Art von Extremum handelt es sich dann dabei?\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    %% </OUTLINE>\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    %% <OUTCOME>\n");
printf("    Zum Überprüfen der notwendigen und\n");
printf("    hinreichenden Bedingung für die\n");
printf("    Existenz lokaler Extrema, werden\n");
printf("    zunächst die ersten beiden Ableitungen\n");
printf("    von $f_a$ gebildet. Der Parameter $a$ kann\n");
printf("    dabei wie eine feste Zahl behandelt\n");
printf("    werden:\n");
printf("    \\begin{equation*}\n");
printf("      \\begin{split}\n");
printf("        f_{a}'(x)&=3ax^2-3a\n");
printf("                  =3a\\cdot(x^2-1)\n");
printf("                  =3a\\cdot(x+1)\\cdot(x-1)\n");
printf("        \\\\[1ex]\n");
printf("        f_{a}''(x)&=6ax\n");
printf("      \\end{split}\n");
printf("    \\end{equation*}\n");
printf("    Notwendig für die Existenz eines\n");
printf("    lokalen Extremums an der Stelle $x$\n");
printf("    ist eine Nullstelle der ersten\n");
printf("    Ableitung bei diesem $x$:\n");
printf("    \\begin{equation*}\n");
printf("      f_{a}'(x)=0=3a\\cdot(x+1)\\cdot(x-1)\n");
printf("      \\quad\\Rightarrow\\quad\n");
printf("      x=-1\\;\\lor\\;x=1\n");
printf("    \\end{equation*}\n");
printf("    Hinreichend für die Existenz eines\n");
printf("    lokalen Extremums an der Stelle $x$\n");
printf("    ist eine Nullstelle der ersten\n");
printf("    Ableitung bei diesem $x$\n");
printf("    \\emph{und} ein Wert ungleich Null\n");
printf("    der zweiten Ableitung an dieser\n");
printf("    Stelle:\n");
printf("    \\begin{alignat*}{2}\n");
printf("      f_{a}''(-1)&=-6a\\neq0\n");
printf("      & \\qquad&\\text{(wegen $a\\neq0$)}\n");
printf("      \\\\[1ex]\n");
printf("      f_{a}''(1)&=6a\\neq0\n");
printf("      & \\qquad&\\text{(wegen $a\\neq0$)}\n");
printf("    \\end{alignat*}\n");
printf("    Da die beiden mit \\glqq und\\grqq{}\n");
printf("    verknüpften Teilaussagen der\n");
printf("    hinreichenden Bedingung an den\n");
printf("    Stellen $x=-1$ und $x=1$ für jedes\n");
printf("    gültige $a$ erfüllt sind, besitzt\n");
printf("    jede Funktion der Funktionenschar\n");
printf("    $f_a$ dort Extrempunkte mit den\n");
printf("    Koordinaten:\n");
printf("    \\begin{equation*}\n");
printf("      \\begin{split}\n");
printf("        P\\left(-1\\;\\middle|\\;f_{a}(-1)\\right)\n");
printf("        \\quad&\\Rightarrow\\quad\n");
printf("        P\\left(-1\\;\\middle|\\;-a+3a+1\\right)\n");
printf("        =\n");
printf("        P\\left(-1\\;\\middle|\\;2a+1\\right)\n");
printf("        \\\\[1ex]\n");
printf("        Q\\left(1\\;\\middle|\\;f_{a}(1)\\right)\n");
printf("        \\quad&\\Rightarrow\\quad\n");
printf("        Q\\left(1\\;\\middle|\\;a-3a+1\\right)\n");
printf("        =\n");
printf("        Q\\left(1\\;\\middle|\\;-2a+1\\right)\n");
printf("      \\end{split}\n");
printf("    \\end{equation*}\n");
printf("    Mit der Wahl $a=\\num{-0.5}$ liegt\n");
printf("    $P$ genau auf der $x$-Achse und die\n");
printf("    zweite Ableitung nimmt dort einen\n");
printf("    Positiven Wert an:\n");
printf("    \\begin{equation*}\n");
printf("      f_{\\num{-0.5}}''(-1)\n");
printf("      =6\\cdot(\\num{-0.5})\\cdot(\\num{-1})\n");
printf("      =3\n");
printf("      >0\n");
printf("    \\end{equation*}\n");
printf("    Damit hat die Funktion\n");
printf("    $f_{\\num{-0.5}}(x)$ an der Stelle\n");
printf("    $x=-1$ ein Minimum auf der $x$-Achse.\n");
printf("    \\par\n");
printf("    Mit der Wahl $a=\\num{0.5}$ liegt\n");
printf("    $Q$ genau auf der $x$-Achse und die\n");
printf("    zweite Ableitung nimmt auch dort\n");
printf("    einen Positiven Wert an:\n");
printf("    \\begin{equation*}\n");
printf("      f_{\\num{0.5}}''(1)\n");
printf("      =6\\cdot\\num{0.5}\\cdot\\num{1}\n");
printf("      =3\n");
printf("      >0\n");
printf("    \\end{equation*}\n");
printf("    Damit hat die Funktion\n");
printf("    $f_{\\num{0.5}}(x)$ an der Stelle\n");
printf("    $x=1$ ein Minimum auf der $x$-Achse.\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}[scale=0.800]\n");
printf("        %% grid\n");
printf("        \\draw[draw=black!50!white] (-4.000, -1.000) grid[step=0.5] (4.000, 3.000);\n");
printf("        %% x-axis\n");
printf("        \\draw[line width=0.6pt, ->, >=stealth] (-4.000, 0) -- (4.000, 0) node[below left] {\\small$x$};\n");
printf("        %% y-axis\n");
printf("        \\draw[line width=0.6pt, ->, >=stealth] (0, -1.000) -- (0, 3.000) node[below left] {\\small$y$};\n");
printf("        %% function: f(x)=-\\num{0.5}x^{3}+\\num{1.5}x+\\num{1}\n");
printf("        \\begin{scope}[line width=0.7pt]\n");
printf("          \\clip (-4.000, -1.000) rectangle (4.000, 3.000);\n");
printf("          \\draw plot[smooth] coordinates\n");
printf("          {\n");
printf("            ( -4.000,   6.000) ( -3.900,   6.000) ( -3.800,   6.000)\n");
printf("            ( -3.700,   6.000) ( -3.600,   6.000) ( -3.500,   6.000)\n");
printf("            ( -3.400,   6.000) ( -3.300,   6.000) ( -3.200,   6.000)\n");
printf("            ( -3.100,   6.000) ( -3.000,   6.000) ( -2.900,   6.000)\n");
printf("            ( -2.800,   6.000) ( -2.700,   6.000) ( -2.600,   5.888)\n");
printf("            ( -2.500,   5.062) ( -2.400,   4.312) ( -2.300,   3.633)\n");
printf("            ( -2.200,   3.024) ( -2.100,   2.480) ( -2.000,   2.000)\n");
printf("            ( -1.900,   1.579) ( -1.800,   1.216) ( -1.700,   0.906)\n");
printf("            ( -1.600,   0.648) ( -1.500,   0.438) ( -1.400,   0.272)\n");
printf("            ( -1.300,   0.148) ( -1.200,   0.064) ( -1.100,   0.015)\n");
printf("            ( -1.000,   0.000) ( -0.900,   0.014) ( -0.800,   0.056)\n");
printf("            ( -0.700,   0.122) ( -0.600,   0.208) ( -0.500,   0.312)\n");
printf("            ( -0.400,   0.432) ( -0.300,   0.564) ( -0.200,   0.704)\n");
printf("            ( -0.100,   0.851) (  0.000,   1.000) (  0.100,   1.150)\n");
printf("            (  0.200,   1.296) (  0.300,   1.436) (  0.400,   1.568)\n");
printf("            (  0.500,   1.688) (  0.600,   1.792) (  0.700,   1.879)\n");
printf("            (  0.800,   1.944) (  0.900,   1.986) (  1.000,   2.000)\n");
printf("            (  1.100,   1.984) (  1.200,   1.936) (  1.300,   1.851)\n");
printf("            (  1.400,   1.728) (  1.500,   1.562) (  1.600,   1.352)\n");
printf("            (  1.700,   1.093) (  1.800,   0.784) (  1.900,   0.420)\n");
printf("            (  2.000,   0.000) (  2.100,  -0.481) (  2.200,  -1.024)\n");
printf("            (  2.300,  -1.634) (  2.400,  -2.312) (  2.500,  -3.062)\n");
printf("            (  2.600,  -3.888) (  2.700,  -4.000) (  2.800,  -4.000)\n");
printf("            (  2.900,  -4.000) (  3.000,  -4.000) (  3.100,  -4.000)\n");
printf("            (  3.200,  -4.000) (  3.300,  -4.000) (  3.400,  -4.000)\n");
printf("            (  3.500,  -4.000) (  3.600,  -4.000) (  3.700,  -4.000)\n");
printf("            (  3.800,  -4.000) (  3.900,  -4.000) (  4.000,  -4.000)\n");
printf("          };\n");
printf("        \\end{scope}\n");
printf("        \\node[below left] at (4,3) {$a=\\num{-0.5}$};\n");
printf("      \\end{tikzpicture}\n");
printf("      \\hspace{1cm}\n");
printf("      \\begin{tikzpicture}[scale=0.800]\n");
printf("        %% grid\n");
printf("        \\draw[draw=black!50!white] (-4.000, -1.000) grid[step=0.5] (4.000, 3.000);\n");
printf("        %% x-axis\n");
printf("        \\draw[line width=0.6pt, ->, >=stealth] (-4.000, 0) -- (4.000, 0) node[below left] {\\small$x$};\n");
printf("        %% y-axis\n");
printf("        \\draw[line width=0.6pt, ->, >=stealth] (0, -1.000) -- (0, 3.000) node[below left] {\\small$y$};\n");
printf("        %% function: f(x)=\\num{0.5}x^{3}-\\num{1.5}x+\\num{1}\n");
printf("        \\begin{scope}[line width=0.7pt]\n");
printf("          \\clip (-4.000, -1.000) rectangle (4.000, 3.000);\n");
printf("          \\draw plot[smooth] coordinates\n");
printf("          {\n");
printf("            ( -4.000,  -4.000) ( -3.900,  -4.000) ( -3.800,  -4.000)\n");
printf("            ( -3.700,  -4.000) ( -3.600,  -4.000) ( -3.500,  -4.000)\n");
printf("            ( -3.400,  -4.000) ( -3.300,  -4.000) ( -3.200,  -4.000)\n");
printf("            ( -3.100,  -4.000) ( -3.000,  -4.000) ( -2.900,  -4.000)\n");
printf("            ( -2.800,  -4.000) ( -2.700,  -4.000) ( -2.600,  -3.888)\n");
printf("            ( -2.500,  -3.062) ( -2.400,  -2.312) ( -2.300,  -1.633)\n");
printf("            ( -2.200,  -1.024) ( -2.100,  -0.480) ( -2.000,   0.000)\n");
printf("            ( -1.900,   0.421) ( -1.800,   0.784) ( -1.700,   1.094)\n");
printf("            ( -1.600,   1.352) ( -1.500,   1.562) ( -1.400,   1.728)\n");
printf("            ( -1.300,   1.852) ( -1.200,   1.936) ( -1.100,   1.985)\n");
printf("            ( -1.000,   2.000) ( -0.900,   1.986) ( -0.800,   1.944)\n");
printf("            ( -0.700,   1.878) ( -0.600,   1.792) ( -0.500,   1.688)\n");
printf("            ( -0.400,   1.568) ( -0.300,   1.436) ( -0.200,   1.296)\n");
printf("            ( -0.100,   1.149) (  0.000,   1.000) (  0.100,   0.850)\n");
printf("            (  0.200,   0.704) (  0.300,   0.564) (  0.400,   0.432)\n");
printf("            (  0.500,   0.312) (  0.600,   0.208) (  0.700,   0.121)\n");
printf("            (  0.800,   0.056) (  0.900,   0.014) (  1.000,   0.000)\n");
printf("            (  1.100,   0.016) (  1.200,   0.064) (  1.300,   0.149)\n");
printf("            (  1.400,   0.272) (  1.500,   0.438) (  1.600,   0.648)\n");
printf("            (  1.700,   0.907) (  1.800,   1.216) (  1.900,   1.580)\n");
printf("            (  2.000,   2.000) (  2.100,   2.481) (  2.200,   3.024)\n");
printf("            (  2.300,   3.634) (  2.400,   4.312) (  2.500,   5.062)\n");
printf("            (  2.600,   5.888) (  2.700,   6.000) (  2.800,   6.000)\n");
printf("            (  2.900,   6.000) (  3.000,   6.000) (  3.100,   6.000)\n");
printf("            (  3.200,   6.000) (  3.300,   6.000) (  3.400,   6.000)\n");
printf("            (  3.500,   6.000) (  3.600,   6.000) (  3.700,   6.000)\n");
printf("            (  3.800,   6.000) (  3.900,   6.000) (  4.000,   6.000)\n");
printf("          };\n");
printf("        \\end{scope}\n");
printf("        \\node[below right] at (-4,3) {$a=\\num{0.5}$};\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("    %%printf(\"\\\\begin{center}\\n\");\n");
printf("    %%a = -0.5;\n");
printf("    %%f = [a 0 -3*a 1];\n");
printf("    %%mypolyplot(f, -4, 4, -1, 3, 0.1, 0.8);\n");
printf("    %%printf(\"\\\\hspace{1cm}\\n\");\n");
printf("    %%a = 0.5;\n");
printf("    %%f = [a 0 -3*a 1];\n");
printf("    %%mypolyplot(f, -4, 4, -1, 3, 0.1, 0.8);\n");
printf("    %%printf(\"\\\\end{center}\\n\");\n");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

