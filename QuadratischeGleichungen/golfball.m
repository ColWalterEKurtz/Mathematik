clear all;

addpath 'Octave/';

% --------
% parabola
% --------
%
% Diese Funktion bestimmt die Koeffizienten einer 
% quadratischen Funktion aus drei gegebenen Punkten.
%
% P  [x y]
% Q  [x y]
% R  [x y]
%
function [a b c] = parabola(P, Q, R)

  y = [P(2); Q(2); R(2)];

  A = [ P(1)^2 P(1) 1
        Q(1)^2 Q(1) 1
        R(1)^2 R(1) 1 ];

  x = A \ y;

  a = x(1);
  b = x(2);
  c = x(3);

endfunction

% -------
% pqzeros
% -------
%
% Diese Funktion bestimmt die Loesungen der
% Gleichung: 0 = ax^2 + bx + c
%
function [xmin xmax] = pqzeros(a, b, c)

  D = b^2 - 4 * a * c;

  if (D < 0)

    xmin = NaN;
    xmax = NaN;
    return

  endif

  p = b / a;
  q = c / a;

  xmin = -p/2 - sqrt((p/2)^2 - q);
  xmax = -p/2 + sqrt((p/2)^2 - q);

endfunction

% ------
% vertex
% ------
%
% Diese Funktion berechnet den Scheitelpunkt
% der Parabel f(x) = ax^2 + bx + c
%
function v = vertex(a, b, c)

  D = b^2 - 4 * a * c;

  v = [-b / (2 * a) -D / (4 * a)];

endfunction

% ---
%  f
% ---
%
% Diese Funktion berechnet die Koordinaten fuer
% die Zeichnung.
%
function y = f(a, b, c, x)

  y = a.*x.^2 .+ b.*x .+ c;

endfunction

a = -0.007;
b =  0.9;
c =  0.0;

x = [-10:1:140]';
y = f(a, b, c, x);

cnum = 1;
cmax = 4;

printf("\\begin{exercise}\n");
printf("      {ID-49712269135e7d4b30bf0d643149cc3fa2bb48c2}\n");
printf("      {Golfball}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Der Flug eines Golfballs kann näherungsweise durch eine Parabel modelliert werden.\n");
printf("    Der Graph ist in folgendem Koordinatensystem abgebildet.\n");
printf("    \\begin{center}\n");
printf("      \\newcommand{\\xmark}[2]{\\draw (#1, 2) -- (#1, -2) node[below]{\\vphantom{\\ensuremath{(}}#2};}%%\n");
printf("      \\newcommand{\\ymark}[2]{\\draw (2, #1) -- (-2, #1) node[left]{\\vphantom{\\ensuremath{(}}#2};}%%\n");
printf("      \\begin{tikzpicture}[scale=0.0625]\n");
printf("        \\draw[line width=0.66pt, ->, >=stealth] (-20, 0) -- (150, 0) node[below] {$x$};;\n");
printf("        \\xmark{-10}{}\n");
printf("        \\xmark{10}{10}\n");
printf("        \\xmark{20}{}\n");
printf("        \\xmark{30}{}\n");
printf("        \\xmark{40}{}\n");
printf("        \\xmark{50}{50}\n");
printf("        \\xmark{60}{}\n");
printf("        \\xmark{70}{}\n");
printf("        \\xmark{80}{}\n");
printf("        \\xmark{90}{}\n");
printf("        \\xmark{100}{100}\n");
printf("        \\xmark{110}{}\n");
printf("        \\xmark{120}{}\n");
printf("        \\xmark{130}{}\n");
printf("        \\xmark{140}{}\n");
printf("        \\draw[line width=0.66pt, ->, >=stealth] (0, -20) -- (0, 50) node[left] {$y$};\n");
printf("        \\ymark{-10}{}\n");
printf("        \\ymark{10}{10}\n");
printf("        \\ymark{20}{20}\n");
printf("        \\ymark{30}{30}\n");
printf("        \\ymark{40}{40}\n");
printf("        \\begin{scope}\n");

printf("          \\draw plot[smooth] coordinates\n");
printf("          {\n");
for i = 1:size(x)
  if (cnum > cmax)
    printf("\n");
    cnum = 1;
  endif
  if (cnum == 1)
    printf("            ");
  else
    printf("  ");
  endif
  printf("(%7.3f, %7.3f)", x(i), y(i));
  cnum += 1;
endfor
printf("\n          };\n");

printf("        \\end{scope}\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Durch welche der folgenden Funktionsgleichungen kann die Flugbahn\n");
printf("            des Golfballs beschrieben werden? Begründe deine Antwort.\n");
printf("            \\begin{equation*}\n");
printf("                y_1=\\num{-0.007}x^2+\\num{0.9}x\n");
printf("                \\quad,\\quad\n");
printf("                y_2=\\num{0.007}x^2+\\num{0.9}x\n");
printf("                \\quad,\\quad\n");
printf("                y_3=\\num{-0.07}x\n");
printf("            \\end{equation*}\n");
printf("      \\item Gib die maximale Höhe des Golfballs an.\n");
printf("      \\item Fliegt ein Ball, dessen Flugbahn durch die Punkte\n");
printf("            $P(0\\mid0)$, $Q(10\\mid\\num{10.3})$ und $R(20\\mid\\num{19.2})$\n");
printf("            verläuft, höher bzw. weiter als der oben beschriebene Golfball?\n");
printf("            Begründe deine Antwort.\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Die Funktion $y_1$ beschreibt als einzige Funktion eine nach\n");
printf("            unten geöffnete Parabel.\n");
printf("      \\item Gesucht ist die $y$-Koordinate des Scheitelpunkts:\n");
printf("        \\begin{equation*}\n");
printf("          \\begin{split}\n");
printf("            y&=\\num{-0.007}x^2+\\num{0.9}x\\\\\n");
printf("             &=-\\frac{7}{1000}\\cdot\\left(x^2-\\frac{900}{7}x\\right)\\\\\n");
printf("             &=-\\frac{7}{1000}\\cdot\\left(x^2-\\frac{900}{7}x+\\left(\\frac{450}{7}\\right)^2-\\left(\\frac{450}{7}\\right)^2\\right)\\\\\n");
printf("             &=-\\frac{7}{1000}\\cdot\\left(\\left(x-\\frac{450}{7}\\right)^2-\\left(\\frac{450}{7}\\right)^2\\right)\\\\\n");
printf("             &=-\\frac{7}{1000}\\cdot\\left(x-\\frac{450}{7}\\right)^2+\\frac{405}{14}\n");
printf("          \\end{split}\n");
printf("        \\end{equation*}\n");
printf("        Also erreicht der Golfball eine maximale Höhe von etwa \\simeter{28.9}.\n");
printf("      \\item Zunächst muss hier die Funktionsgleichung $f(x)=ax^2+bx+c$ der zweiten Flugbahn\n");
printf("            ermittelt werden. Mit dieser können dann die beiden Scheitelpunkte\n");
printf("            und die zweiten Nullstellen verglichen werden.\\par\n");
printf("            Aus $P(0\\mid0)$ folgt unmittelbar $f(0)=0$, also $c=0$.\n");
printf("            Die beiden anderen Koeffizienten $a$ und $b$ lassen sich durch\n");
printf("            das Lösen eines lineares Gleichungssystems bestimmen.\n");
printf("            \\begin{equation*}\n");
printf("              \\left|\n");
printf("              \\begin{aligned}\n");
printf("                \\num{10.3}&=f(10)=a\\cdot\\num{10}^2+b\\cdot\\num{10}=100a+10b\\\\\n");
printf("                \\num{19.2}&=f(20)=a\\cdot\\num{20}^2+b\\cdot\\num{20}=400a+20b\n");
printf("              \\end{aligned}\n");
printf("              \\right.\n");
printf("            \\end{equation*}\n");
printf("            Man erhält mit der Lösung $a=\\num{-0.007}$ und $b=\\num{1.1}$ die Funktionsgleichung:\n");
printf("            \\begin{equation*}\n");
printf("              f(x)=\\num{-0.007}x^2+\\num{1.1}x\n");
printf("            \\end{equation*}\n");
printf("            Da der Scheitelpunkt dieser Parabel bei etwa $(\\num{78.6}\\mid\\num{43.2})$\n");
printf("            und die zweite Nullstelle bei etwa $x=\\num{157.14}$ liegt, fliegt dieser Golfball\n");
printf("            sowohl höher, als auch weiter als der erste Golfball.\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

