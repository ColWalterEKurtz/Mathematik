clear all;

addpath 'Octave/';

R = 3;                      % Radius der Kugel
a = 0.66;                   % 0 <= a <= 1
b = 0.33;                   % kleiner Halbmesser der Ellipse
r = R * sqrt(1 - a^2);      % grosser Halbmesser der Ellipse
h = a * R;                  % y-Koordinate des Ellipsenmittelpunktes (ohne Vorzeichen)
H = R + h;                  % Gesamthoehe des Kegels
phirad = atan(r / H);       % Halber Oeffnungswinkel des Kegels
phideg = phirad * 180 / pi; % Halber Oeffnungswinkel des Kegels

% Position des Bezeichners phi
d = 0.8;
phix = 0 - d * sin(phirad / 2);
phiy = R - d * cos(phirad / 2);

printf("\\begin{exercise}\n");
printf("      {ID-44e961ad7fb10c7eadf2439d5789c4034ab8cac3}\n");
printf("      {Kegel in einer Kugel}\n");
printf("  \\ifproblem\\problem\n");
printf("    \\ifthenelse{\\isundefined{\\linecalc}}{\\newlength{\\linecalc}}{\\relax}%%\n");
printf("    \\setlength{\\linecalc}{\\linewidth}%%\n");
printf("    \\addtolength{\\linecalc}{-68mm}%%\n");
printf("    \\begin{minipage}[T]{\\linecalc}\n");
printf("      In eine Kugel mit dem Radius $R$ ist ein gerader Kreiskegel mit dem Radius $r$\n");
printf("      und der Höhe $h$ einbeschrieben.\n");
printf("      \\begin{enumerate}[a)]\n");
printf("        \\item Ermitteln Sie den Term $V(\\varphi)$, der das Kegelvolumen in\n");
printf("              Abhängigkeit von der Größe $\\varphi$ des Winkels zwischen\n");
printf("              der Kegelhöhe und einer Mantellinie darstellt.\n");
printf("              Wie groß muss dieser Winkel sein, damit das Kegelvolumen\n");
printf("              maximal wird?\n");
printf("        \\item Drücken Sie die Kegelvolumenfunktion durch andere Variablen aus\n");
printf("              und diskutieren Sie eine dieser Funktionen.\n");
printf("      \\end{enumerate}\n");
printf("    \\end{minipage}\\hfill\n");
printf("    \\begin{minipage}[T]{61mm}\n");
printf("      \\raggedleft\n");
printf("      \\begin{tikzpicture}\n");
printf("        \\coordinate (M)   at (%8.4f, %8.4f);\n",  0,  0);
printf("        \\coordinate (m)   at (%8.4f, %8.4f);\n",  0, -h);
printf("        \\coordinate (A)   at (%8.4f, %8.4f);\n", -r, -h);
printf("        \\coordinate (B)   at (%8.4f, %8.4f);\n",  r, -h);
printf("        \\coordinate (C)   at (%8.4f, %8.4f);\n",  0,  R);
printf("        \\coordinate (phi) at (%8.4f, %8.4f);\n",  phix, phiy);
printf("        \\draw (M) circle[radius=3cm];\n");
printf("        \\draw (m) ellipse[x radius=%.4f, y radius=%.4f];\n", r, b);
printf("        \\fill (m) circle[radius=1pt];\n");
printf("        \\draw (C) -- (A);\n");
printf("        \\draw (C) -- (B);\n");
printf("        \\draw (C) -- node[right]{{\\small$h$}} (m);\n");
printf("        \\begin{scope}\n");
printf("          \\clip (A) -- (m) -- (C) -- cycle;\n");
printf("          \\draw (C) circle[radius=%.4f];\n", 1.4 * d);
printf("          \\node at (phi) {{\\small$\\varphi$}};\n");
printf("        \\end{scope}\n");
printf("        \\draw (m) -- node[above]{{\\small$r$}} ++(300:%.4f and %.4f);\n", r, b);
printf("      \\end{tikzpicture}\n");
printf("    \\end{minipage}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  %%\\ifoutcome\\outcome\n");
printf("  %%\\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

