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
printf("      {ID-18e18708d8d2556756e8bbe48ca99cc674e80029}\n");
printf("      {Gummibärchen}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    \\xya{} und \\xxb{} würfeln abwechselnd um Gummibärchen. \\xya{} gewinnt bei den\n");
printf("    Augenzahlen 1, 2, 3 oder 4, \\xxb{} gewinnt bei 5 oder 6. Der Gewinner\n");
printf("    erhält vom anderen Spieler die Augenzahl in Gummibärchen. Ist das Spiel\n");
printf("    fair, oder ist einer besser gestellt als der andere?\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    Wenn man die Zufallsvariable $X$ so definiert,\n");
printf("    dass eigene Verluste bzw. Investitionen\n");
printf("    negative und eigene Gewinne positive Werte\n");
printf("    erzeugen, dann zeigt der Erwartungswert $E(X)=0$\n");
printf("    ein faires Spiel an.\\par\n");
printf("    Aus der Sicht von \\xya{} könnte die Zufallsvariable\n");
printf("    $X$ z.\\,B. auf folgende Weise definiert werden:\n");
printf("    \\begingroup\n");
printf("      \\newcommand{\\dw}{2mm}%%\n");
printf("      \\newcommand{\\dr}{1pt}%%\n");
printf("      \\newcommand{\\dicea}%%\n");
printf("      {%%\n");
printf("        \\begin{tikzpicture}%%\n");
printf("          \\draw (-\\dw, -\\dw) rectangle (\\dw, \\dw);\n");
printf("          \\fill (0, 0) circle[radius=\\dr];\n");
printf("        \\end{tikzpicture}%%\n");
printf("      }%%\n");
printf("      \\newcommand{\\diceb}%%\n");
printf("      {%%\n");
printf("        \\begin{tikzpicture}%%\n");
printf("          \\draw (-\\dw, -\\dw) rectangle (\\dw, \\dw);\n");
printf("          \\fill (-0.33*\\dw, -0.33*\\dw) circle[radius=\\dr];\n");
printf("          \\fill ( 0.33*\\dw,  0.33*\\dw) circle[radius=\\dr];\n");
printf("        \\end{tikzpicture}%%\n");
printf("      }%%\n");
printf("      \\newcommand{\\dicec}%%\n");
printf("      {%%\n");
printf("        \\begin{tikzpicture}%%\n");
printf("          \\draw (-\\dw, -\\dw) rectangle (\\dw, \\dw);\n");
printf("          \\fill (-0.45*\\dw, -0.45*\\dw) circle[radius=\\dr];\n");
printf("          \\fill (        0,         0) circle[radius=\\dr];\n");
printf("          \\fill ( 0.45*\\dw,  0.45*\\dw) circle[radius=\\dr];\n");
printf("        \\end{tikzpicture}%%\n");
printf("      }%%\n");
printf("      \\newcommand{\\diced}%%\n");
printf("      {%%\n");
printf("        \\begin{tikzpicture}%%\n");
printf("          \\draw (-\\dw, -\\dw) rectangle (\\dw, \\dw);\n");
printf("          \\fill (-0.38*\\dw,  0.38*\\dw) circle[radius=\\dr];\n");
printf("          \\fill ( 0.38*\\dw,  0.38*\\dw) circle[radius=\\dr];\n");
printf("          \\fill (-0.38*\\dw, -0.38*\\dw) circle[radius=\\dr];\n");
printf("          \\fill ( 0.38*\\dw, -0.38*\\dw) circle[radius=\\dr];\n");
printf("        \\end{tikzpicture}%%\n");
printf("      }%%\n");
printf("      \\newcommand{\\dicee}%%\n");
printf("      {%%\n");
printf("        \\begin{tikzpicture}%%\n");
printf("          \\draw (-\\dw, -\\dw) rectangle (\\dw, \\dw);\n");
printf("          \\fill (-0.5*\\dw,  0.5*\\dw) circle[radius=\\dr];\n");
printf("          \\fill ( 0.5*\\dw,  0.5*\\dw) circle[radius=\\dr];\n");
printf("          \\fill (       0,        0) circle[radius=\\dr];\n");
printf("          \\fill (-0.5*\\dw, -0.5*\\dw) circle[radius=\\dr];\n");
printf("          \\fill ( 0.5*\\dw, -0.5*\\dw) circle[radius=\\dr];\n");
printf("        \\end{tikzpicture}%%\n");
printf("      }%%\n");
printf("      \\newcommand{\\dicef}%%\n");
printf("      {%%\n");
printf("        \\begin{tikzpicture}%%\n");
printf("          \\draw (-\\dw, -\\dw) rectangle (\\dw, \\dw);\n");
printf("          \\fill (-0.52*\\dw,  0.38*\\dw) circle[radius=\\dr];\n");
printf("          \\fill (        0,  0.38*\\dw) circle[radius=\\dr];\n");
printf("          \\fill ( 0.52*\\dw,  0.38*\\dw) circle[radius=\\dr];\n");
printf("          \\fill (-0.52*\\dw, -0.38*\\dw) circle[radius=\\dr];\n");
printf("          \\fill (        0, -0.38*\\dw) circle[radius=\\dr];\n");
printf("          \\fill ( 0.52*\\dw, -0.38*\\dw) circle[radius=\\dr];\n");
printf("        \\end{tikzpicture}%%\n");
printf("      }%%\n");
printf("      \\newcommand{\\cmapsto}\n");
printf("      {%%\n");
printf("        \\begin{tikzpicture}%%\n");
printf("          \\node at (0, 0) {$\\mapsto$};\n");
printf("          \\clip (-\\dw, -\\dw) rectangle (\\dw, \\dw);\n");
printf("        \\end{tikzpicture}%%\n");
printf("      }%%\n");
printf("      \\newcommand{\\cnum}[1]\n");
printf("      {%%\n");
printf("        \\hspace*{-0.5em}%%\n");
printf("        \\begin{tikzpicture}%%\n");
printf("          \\node[left] at (\\dw, 0) {$#1$};\n");
printf("          \\clip (-\\dw, -\\dw) rectangle (\\dw, \\dw);\n");
printf("        \\end{tikzpicture}%%\n");
printf("      }%%\n");
printf("      \\begin{equation*}\n");
printf("        X:\\Omega\\to\\mathbb{R}\n");
printf("        \\quad\\text{mit}\\quad\n");
printf("        \\begin{array}{lcr}\n");
printf("          \\text{\\dicea} & \\text{\\cmapsto} & \\text{\\cnum{1}}  \\\\\n");
printf("          \\text{\\diceb} & \\text{\\cmapsto} & \\text{\\cnum{2}}  \\\\\n");
printf("          \\text{\\dicec} & \\text{\\cmapsto} & \\text{\\cnum{3}}  \\\\\n");
printf("          \\text{\\diced} & \\text{\\cmapsto} & \\text{\\cnum{4}}  \\\\\n");
printf("          \\text{\\dicee} & \\text{\\cmapsto} & \\text{\\cnum{-5}} \\\\\n");
printf("          \\text{\\dicef} & \\text{\\cmapsto} & \\text{\\cnum{-6}}\n");
printf("        \\end{array}\n");
printf("      \\end{equation*}\n");
printf("    \\endgroup\n");
printf("    Der Erwartungswert dieser Funktion gibt dann\n");
printf("    die durchschnittliche Anzahl von Gummibärchen\n");
printf("    an, um die sich der Vorrat von \\xya{} pro\n");
printf("    Runde verändert.\n");
printf("    %% </OUTLINE>\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    %% <OUTCOME>\n");
printf("    Für die im Ansatz definierte Zufallsvariable\n");
printf("    $X$ erhält man folgenden Erwartungswert:\n");
printf("    \\begin{equation*}\n");
printf("      E(X)=\\frac{1}{6}\\cdot1\n");
printf("          +\\frac{1}{6}\\cdot2\n");
printf("          +\\frac{1}{6}\\cdot3\n");
printf("          +\\frac{1}{6}\\cdot4\n");
printf("          +\\frac{1}{6}\\cdot(-5)\n");
printf("          +\\frac{1}{6}\\cdot(-6)\n");
printf("          =\n");
printf("          %%<OCTAVE>\n");
printf("          -\\frac{\\num{1}}{\\num{6}}\n");
printf("          %%</OCTAVE>\n");
printf("          %%myn2s((1+2+3+4-5-6)/6, 0,0,0,0,1)\n");
printf("    \\end{equation*}\n");
printf("    Da der Erwartungswert negativ ist, wird\n");
printf("    \\xya{} auf lange Sicht alle Gummibärchen\n");
printf("    an \\xxb{} verlieren.\n");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

