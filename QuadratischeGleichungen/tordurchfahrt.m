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
printf("      {ID-cee3879a8f9f566b9be45824d54a98721e3765c6}\n");
printf("      {Tordurchfahrt}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Eine Tordurchfahrt hat die Form einer Parabel.\n");
printf("    Sie ist \\SI{6}{\\metre} hoch und \\SI{4}{\\metre}\n");
printf("    breit. Ein Fahrzeug ist \\SI{3}{\\metre} breit\n");
printf("    und \\SI{2.20}{\\metre} hoch. Kann dieses\n");
printf("    Fahrzeug die Tordurchfahrt passieren?\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    %% </OUTLINE>\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    %% <OUTCOME>\n");
printf("    \\begin{minipage}{3.5cm}\n");
printf("      \\begin{tikzpicture}[scale=0.5]\n");
printf("        %% Fahrzeug\n");
printf("        \\filldraw[fill=black!25!white] (-1.500, 0) rectangle (1.500, 2.200);\n");
printf("        %% x-Achse\n");
printf("        \\draw[->, >=stealth, line width=0.6pt] (-3.000, 0) -- (3.000, 0);\n");
printf("        %% y-Achse\n");
printf("        \\draw[->, >=stealth, line width=0.6pt] (0, -1) -- (0, 7.000);\n");
printf("        %% Parabel\n");
printf("        \\draw[line width=0.5pt] plot[smooth] coordinates\n");
printf("        {\n");
printf("          ( -2.000,   0.000)\n");
printf("          ( -1.900,   0.585)\n");
printf("          ( -1.800,   1.140)\n");
printf("          ( -1.700,   1.665)\n");
printf("          ( -1.600,   2.160)\n");
printf("          ( -1.500,   2.625)\n");
printf("          ( -1.400,   3.060)\n");
printf("          ( -1.300,   3.465)\n");
printf("          ( -1.200,   3.840)\n");
printf("          ( -1.100,   4.185)\n");
printf("          ( -1.000,   4.500)\n");
printf("          ( -0.900,   4.785)\n");
printf("          ( -0.800,   5.040)\n");
printf("          ( -0.700,   5.265)\n");
printf("          ( -0.600,   5.460)\n");
printf("          ( -0.500,   5.625)\n");
printf("          ( -0.400,   5.760)\n");
printf("          ( -0.300,   5.865)\n");
printf("          ( -0.200,   5.940)\n");
printf("          ( -0.100,   5.985)\n");
printf("          (  0.000,   6.000)\n");
printf("          (  0.100,   5.985)\n");
printf("          (  0.200,   5.940)\n");
printf("          (  0.300,   5.865)\n");
printf("          (  0.400,   5.760)\n");
printf("          (  0.500,   5.625)\n");
printf("          (  0.600,   5.460)\n");
printf("          (  0.700,   5.265)\n");
printf("          (  0.800,   5.040)\n");
printf("          (  0.900,   4.785)\n");
printf("          (  1.000,   4.500)\n");
printf("          (  1.100,   4.185)\n");
printf("          (  1.200,   3.840)\n");
printf("          (  1.300,   3.465)\n");
printf("          (  1.400,   3.060)\n");
printf("          (  1.500,   2.625)\n");
printf("          (  1.600,   2.160)\n");
printf("          (  1.700,   1.665)\n");
printf("          (  1.800,   1.140)\n");
printf("          (  1.900,   0.585)\n");
printf("          (  2.000,   0.000)\n");
printf("        };\n");
printf("        %% Beschriftung\n");
printf("        \\draw (-2.000,  0.2) -- (-2.000, -0.2) node[below]{{\\small\\num{-2}\\hphantom{ --}}};\n");
printf("        \\draw (2.000,  0.2) -- (2.000, -0.2) node[below]{{\\small\\num{2}}};\n");
printf("        \\draw ( 0.2, 6.000) -- (-0.2, 6.000) node[left=0.25em]{{\\small\\num{6}}};\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{minipage}%%\n");
printf("    \\hspace*{\\fill}%%\n");
printf("    \\begin{minipage}{11cm}\n");
printf("      Eine nach unten geöffnete Parabel mit dem\n");
printf("      Nullstellen \\num{-2} und \\num{2} hat die Form:\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          f(x)&=a(x+2)(x-2)\\quad\\text{mit $a<0$}\\\\\n");
printf("              &=a(x^2-4)\n");
printf("               =ax^2-4a\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("      Um den Scheitelpunkt $(0\\mid6)$ zu erreichen,\n");
printf("       muss die Parabel noch um den Faktor \\num{-1.5}\n");
printf("      gestreckt werden:\n");
printf("      \\begin{equation*}\n");
printf("        f(x)=-\\num{1.5}x^2+6\n");
printf("      \\end{equation*}\n");
printf("    \\end{minipage}\\bigskip\\par\n");
printf("    Mit dieser Funktion lässt sich jetzt die Höhe\n");
printf("    der Tordurchfahrt \\SI{1.50}{\\metre} links bzw.\n");
printf("    rechts neben der Symmetrieachse berechnen:\n");
printf("    \\begin{equation*}\n");
printf("      f(\\num{-1.5})=f(\\num{1.5})\n");
printf("      =\\num{-1.5}\\cdot\\num{1.5}^2+6\n");
printf("      =\\num{2.625}\n");
printf("      %%-1.5*1.5^2+6\n");
printf("    \\end{equation*}\n");
printf("    Das \\SI{2.20}{\\metre} hohe Fahrzeug passt also\n");
printf("    problemlos unter dem \\SI{2.625}{\\metre} hohen Tor\n");
printf("    hindurch.\n");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

