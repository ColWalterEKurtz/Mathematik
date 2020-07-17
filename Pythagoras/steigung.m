clear all;
format long;

addpath 'Octave/';

Alaenge     = 12.17;                                  % [km]
Avertikal   = 1091;                                   % [m]
Ahorizontal = sqrt(Alaenge^2 - (Avertikal / 1000)^2); % [km]
Asteigung   = (Avertikal / 1000) / Ahorizontal * 100; % [%]

ins_Alaenge     = sprintf("%.2f", Alaenge);
ins_Avertikal   = sprintf("%d",   Avertikal);
ins_Ahorizontal = sprintf("%.3f", Ahorizontal);
ins_Asteigung   = sprintf("%.0f", Asteigung);

Blaenge     = 2835;                          % [m]
Bvertikal   = 310;                           % [m]
Bhorizontal = sqrt(Blaenge^2 - Bvertikal^2); % [m]
Bsteigung   = Bvertikal / Bhorizontal * 100; % [%]

ins_Blaenge     = sprintf("%d",   Blaenge);
ins_Bvertikal   = sprintf("%d",   Bvertikal);
ins_Bhorizontal = sprintf("%.0f", Bhorizontal);
ins_Bsteigung   = sprintf("%.0f", Bsteigung);

Csteigung   = 8;                                 % [%]
Cvertikal   = 125.2;                             % [m]
Chorizontal = Cvertikal * 100 / Csteigung;       % [m]
Claenge     = sqrt(Cvertikal^2 + Chorizontal^2); % [m]

ins_Csteigung   = sprintf("%d",   Csteigung);
ins_Cvertikal   = sprintf("%.2f", Cvertikal);
ins_Chorizontal = sprintf("%d",   Chorizontal);
ins_Claenge     = sprintf("%d",   Claenge);

printf("\\begin{exercise}\n");
printf("      {ID-6db33a4bf4f78cc0773018bdd34823822a26f3cf}\n");
printf("      {Steigung}\n");
printf("  \\ifproblem\\problem\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Ein Auto befährt eine Passstraße von \\sikm{%s} Länge und überwindet\n", ins_Alaenge);
printf("            dabei eine Höhe von \\simeter{%s}. Berechne die durchschnittliche\n", ins_Avertikal);
printf("            Steigung in Prozent.\n");
printf("      \\item Welche konstante Steigung müsste eine Straße haben, die einen\n");
printf("            Höhenunterschied von \\simeter{%s} auf einer Strecke von\n", ins_Bvertikal);
printf("            \\simeter{%s} überwindet?\n", ins_Blaenge);
printf("      \\item Wie lang wäre eine Straße mindestens, die bei maximal \\pc{%s}\n", ins_Csteigung);
printf("            Steigung einen Höhenunterschied von \\simeter{%s} überwindet?\n", ins_Cvertikal);
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\n");
printf("    \\begin{tikzpicture}\n");
printf("      \\draw (0, 0) -- node[below]{$g$}\n");
printf("            (5, 0) -- node[right]{$h$}\n");
printf("            (5, 2) -- node[above left]{$f$}\n");
printf("            cycle;\n");
printf("      \\fill (0, 0) circle[radius=1.1pt] node[left]{$A$};\n");
printf("      \\fill (5, 2) circle[radius=1.1pt] node[right]{$B$};\n");
printf("      %% rechter Winkel\n");
printf("      \\draw (5cm, 5mm) arc[start angle=90, end angle=180, radius=5mm];\n");
printf("      \\fill[shift={(135:2.5mm)}] (5, 0) circle[radius=1.4pt];\n");
printf("      %% Gleichung\n");
printf("      \\node[right] at (7, 1)\n");
printf("      {%%\n");
printf("        \\begin{minipage}{11em}\n");
printf("          \\setlength{\\abovedisplayskip}{0pt}%%\n");
printf("          \\begin{equation*}\n");
printf("            \\text{Steigung}=\\frac{h\\cdot100}{g}\\,\\%%\n");
printf("          \\end{equation*}\n");
printf("        \\end{minipage}%%\n");
printf("      };\n");
printf("    \\end{tikzpicture}\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Die Straße besitzt eine durchschnittliche Steigung von ca. \\pc{%s}.\n", ins_Asteigung);
printf("      \\item Die Straße müsste eine Steigung von ca. \\pc{%s} besitzen.\n", ins_Bsteigung);
printf("      \\item Die Straße müsste eine Mindestlänge von ca. \\simeter{%s} besitzen.\n", ins_Claenge);
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

