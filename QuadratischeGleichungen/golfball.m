clear all;

addpath 'Octave/';

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

cnum=1;
cmax=4;
printf("\\begin{exercise}\n");
printf("      {ID-49712269135e7d4b30bf0d643149cc3fa2bb48c2}\n");
printf("      {Golfball}\n");
printf("  \\ifproblem\\problem\n");
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
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  %%\\ifoutcome\\outcome\n");
printf("  %%\\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

