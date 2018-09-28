clear all;

addpath 'Octave/';

% Seitenlaenge des Dreiecks
a = 4;

% Seitenlaenge des Rechtecks
w = 0.5 * a;

% erster Punkt auf der Geraden
x1 = 0;
y1 = a * sin(60 * pi / 180);

% zweiter Punkt auf der Geraden
x2 = a / 2;
y2 = 0;

% Geradenparameter
m = (y2 - y1) / (x2 - x1);
b = y2 - (m * x2);

% linke untere Ecke des Rechtecks
P1x = -w / 2;
P1y = 0;

% rechte obere Ecke des Rechtecks
P2x = w / 2;
P2y = m * P2x + b;

printf("\\begin{exercise}\n");
printf("      {ID-42df963f029694c68d8cf7fcfac225e8c53415e5}\n");
printf("      {Maximales Rechteck im gleichseitigen Dreieck}\n");
printf("  \\ifproblem\\problem\n");
printf("    \\begin{minipage}{0.28\\textwidth}\n");
printf("      \\begin{tikzpicture}\n");
printf("        \\draw (%6.3f, %6.3f) -- (%6.3f, %6.3f) -- (%6.3f, %6.3f) -- cycle;\n", -a/2, 0, a/2, 0, 0, y1);
printf("        \\filldraw[fill=black!25!white] (%6.3f, %6.3f) rectangle (%6.3f, %6.3f);\n", P1x, P1y, P2x, P2y);
printf("      \\end{tikzpicture}\n");
printf("    \\end{minipage}%%\n");
printf("    \\hfill\n");
printf("    \\begin{minipage}{0.7\\textwidth}\n");
printf("      Einem gleichseitigen Dreieck mit der Seitenlänge $a$ soll ein Rechteck\n");
printf("      einbeschrieben werden. Wie lang müssen die Rechteckseiten sein, damit der\n");
printf("      Flächeninhalt des Rechtecks maximal wird?\n");
printf("    \\end{minipage}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  %%\\ifoutcome\\outcome\n");
printf("  %%\\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

