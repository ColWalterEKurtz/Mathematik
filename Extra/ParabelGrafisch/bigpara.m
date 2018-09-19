clear all;

% sichtbarer Ausschnitt der Graphen
xmin = -4.00;
xmax =  4.00;
xinc =  0.10;
ymin = -0.05;
ymax = 16.00;

% Wertetabelle (Spaltenvektoren)
x = [xmin:xinc:xmax]';
y = x.^2;

printf("\\begin{scope}\n");
printf("  \\clip (%.3f, %.3f) rectangle (%.3f, %.3f);\n", xmin, ymin, xmax, ymax);
printf("  \\draw[line width=0.6pt] plot[smooth] coordinates\n");
printf("  {\n");
printf("    (%7.3f, %7.3f)\n", [x y]');
printf("  };\n");
printf("\\end{scope}\n");

