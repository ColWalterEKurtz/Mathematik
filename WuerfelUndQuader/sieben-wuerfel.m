clear all;

addpath 'Octave/';

oberflaeche = 1920;
quadrat     = oberflaeche / ((3 + 5 + 7) * 2);
seite       = sqrt(quadrat);
volumen     = 7 * seite^3;

ins_oberflaeche = sprintf("%d", oberflaeche);
ins_quadrat     = sprintf("%d", quadrat);
ins_seite       = sprintf("%d", seite);
ins_volumen     = sprintf("%d", volumen);

printf("\\begin{exercise}\n");
printf("      {ID-a42903853dfdea65c0592ab2d4f701ca97723472}\n");
printf("      {Sieben Würfel}\n");
printf("  \\ifproblem\\problem\n");
printf("    Der abgebildete Körper besteht aus sieben gleich großen Würfeln und\n");
printf("    besitzt eine Oberfläche von \\sicmm{%s}. Wie groß ist sein Volumen?\n", ins_oberflaeche);
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}[scale=1.5]\n");
printf("        %% Umriss\n");
printf("        \\draw [line width=0.5pt]\n");
printf("              ( 0, 1, 1) --\n");
printf("              ( 0, 1, 5) --\n");
printf("              ( 0, 0, 5) --\n");
printf("              ( 1, 0, 5) --\n");
printf("              ( 1, 0, 1) --\n");
printf("              ( 2, 0, 1) --\n");
printf("              ( 2, 0, 0) --\n");
printf("              ( 2, 1, 0) --\n");
printf("              (-1, 1, 0) --\n");
printf("              (-1, 1, 0) --\n");
printf("              (-1, 1, 1) --\n");
printf("              (-1, 0, 1);\n");
printf("        %% vertikale und horizontale Kanten\n");
printf("        \\draw [line width=0.5pt] ( 0, 1, 5) -- (1, 1, 5) -- (1, 0, 5);\n");
printf("        \\draw [line width=0.5pt] ( 0, 1, 4) -- (1, 1, 4) -- (1, 0, 4);\n");
printf("        \\draw [line width=0.5pt] ( 0, 1, 3) -- (1, 1, 3) -- (1, 0, 3);\n");
printf("        \\draw [line width=0.5pt] ( 0, 1, 2) -- (1, 1, 2) -- (1, 0, 2);\n");
printf("        \\draw [line width=0.5pt] ( 0, 1, 1) -- (1, 1, 1) -- (1, 0, 1);\n");
printf("        \\draw [line width=0.5pt] ( 1, 1, 1) -- (2, 1, 1) -- (2, 0, 1);\n");
printf("        \\draw [line width=0.5pt] (-1, 1, 1) -- (0, 1, 1);\n");
printf("        %% diagonale Kanten\n");
printf("        \\draw [line width=0.5pt] (1, 1, 5) -- (1, 1, 0);\n");
printf("        \\draw [line width=0.5pt] (2, 1, 1) -- (2, 1, 0);\n");
printf("        \\draw [line width=0.5pt] (0, 1, 1) -- (0, 1, 0);\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\n");
printf("    Die Oberfläche besteht aus $(3+5+7)\\cdot2=%d$ Quadraten.\n", (3 + 5 + 7) * 2);
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Das Volumen dieses Körpers beträgt \\sicmmm{%s}.\n", ins_volumen);
printf("  \\fi\n");
printf("\\end{exercise}\n");

