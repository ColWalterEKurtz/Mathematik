clear all;

addpath 'Octave/';

printf("\\begin{exercise}\n");
printf("      {ID-e2fd99a7b31e7ac68b0614a71ff9ad70726524cf}\n");
printf("      {Drei Farben}\n");
printf("  \\ifproblem\\problem\n");
printf("    Kann man die Felder der Abbildung so mit den Farben Blau, Rot und Gelb\n");
printf("    färben, dass jede Farbe eine gleich große Gesamtfläche bedeckt wie jede\n");
printf("    andere Farbe und dass niemals zwei Farben längs einer Strecke zusammenstoßen?\n");
printf("    Wenn das möglich ist, stelle eine solche Färbung her!\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}[scale=3]\n");
printf("        \\newcommand{\\sqrtwo}{1.41421356237310}%%\n");
printf("        \\draw (0, 0) rectangle (3*\\sqrtwo, \\sqrtwo);\n");
printf("        \\draw (0, 0) -- (\\sqrtwo, \\sqrtwo) -- (2*\\sqrtwo, 0) -- (3*\\sqrtwo, \\sqrtwo);\n");
printf("        \\draw (0, \\sqrtwo) -- (\\sqrtwo, 0) -- (2*\\sqrtwo, \\sqrtwo) -- (3*\\sqrtwo, 0);\n");
printf("        \\filldraw[fill=white, draw=black, line join=bevel]\n");
printf("                 (0, 0.5*\\sqrtwo) --\n");
printf("                 (0.5*\\sqrtwo, 0) --\n");
printf("                 (\\sqrtwo, 0.5*\\sqrtwo) --\n");
printf("                 (0.5*\\sqrtwo, \\sqrtwo) -- cycle;\n");
printf("        \\begin{scope}[xshift=\\sqrtwo cm]\n");
printf("          \\filldraw[fill=white, draw=black, line join=bevel]\n");
printf("                   (0, 0.5*\\sqrtwo) --\n");
printf("                   (0.5*\\sqrtwo, 0) --\n");
printf("                   (\\sqrtwo, 0.5*\\sqrtwo) --\n");
printf("                   (0.5*\\sqrtwo, \\sqrtwo) -- cycle;\n");
printf("        \\end{scope}\n");
printf("        \\begin{scope}[xshift=2*\\sqrtwo cm]\n");
printf("          \\filldraw[fill=white, draw=black, line join=bevel]\n");
printf("                   (0, 0.5*\\sqrtwo) --\n");
printf("                   (0.5*\\sqrtwo, 0) --\n");
printf("                   (\\sqrtwo, 0.5*\\sqrtwo) --\n");
printf("                   (0.5*\\sqrtwo, \\sqrtwo) -- cycle;\n");
printf("        \\end{scope}\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  %%\\ifoutcome\\outcome\n");
printf("  %%\\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

