clear all;

% clipping area:
xmin = -0.50;
xmax =  5.40;
xinc =  0.05;
ymin = -2.00;
ymax =  4.00;

% Wertetabelle (Spaltenvektoren)
k = 4;
x = [xmin:xinc:xmax]';
y = k * x .* exp(1 - 2 * x);

printf("\\begin{scope}\n");
printf("  \\clip (%.3f, %.3f) rectangle (%.3f, %.3f);\n", xmin, ymin, xmax, ymax);
printf("  \\draw[line width=0.5pt] plot[smooth] coordinates\n");
printf("  {\n");
printf("    (%7.3f, %7.3f)\n", [x y]');
printf("  };\n");
printf("\\end{scope}\n");

