clear all;

% sichtbarer Ausschnitt der Graphen
xmin = -3.00;
xmax =  4.00;
xinc =  0.10;
ymin = -3.00;
ymax =  5.00;

% Wertetabelle (Spaltenvektoren)
x = [xmin:xinc:xmax]';
y = x.^2 - x - 2;
p = x.^2;
g = x + 2;

printf("\\begin{scope}\n");
printf("  \\clip (%.3f, %.3f) rectangle (%.3f, %.3f);\n", xmin, ymin, xmax, ymax);
printf("  \\draw[line width=0.5pt, style=dashed] plot[smooth] coordinates\n");
printf("  {\n");
printf("    (%7.3f, %7.3f)\n", [x y]');
printf("  };\n");
printf("\\end{scope}\n");

printf("\\begin{scope}\n");
printf("  \\clip (%.3f, %.3f) rectangle (%.3f, %.3f);\n", xmin, ymin, xmax, ymax);
printf("  \\draw[line width=0.5pt] plot[smooth] coordinates\n");
printf("  {\n");
printf("    (%7.3f, %7.3f)\n", [x p]');
printf("  };\n");
printf("\\end{scope}\n");

printf("\\begin{scope}\n");
printf("  \\clip (%.3f, %.3f) rectangle (%.3f, %.3f);\n", xmin, ymin, xmax, ymax);
printf("  \\draw[line width=0.5pt] plot[smooth] coordinates\n");
printf("  {\n");
printf("    (%7.3f, %7.3f)\n", [x g]');
printf("  };\n");
printf("\\end{scope}\n");

