clear all;

% sichtbarer Ausschnitt der Graphen
xmin =  0.00;
xmax =  6.00;
xinc =  0.10;
ymin = -2.00;
ymax =  3.50;

% Wertetabelle (Spaltenvektoren)
x = [xmin:xinc:xmax]';
y = (x.^2 - 10 * x + 24) .* exp(0.5 * x);

% Streckung oder Stauchung
y = (1/8) * y;

printf("\\begin{scope}\n");
printf("  \\clip (%.3f, %.3f) rectangle (%.3f, %.3f);\n", xmin, ymin, xmax, ymax);
printf("  \\draw[line width=0.5pt] plot[smooth] coordinates\n");
printf("  {\n");
printf("    (%7.3f, %7.3f)\n", [x y]');
printf("  };\n");
printf("\\end{scope}\n");

