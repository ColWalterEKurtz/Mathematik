clear all;

addpath 'Octave/';

a  = -1;
b  = 70;
c  = -1000;
xs = -b / (2 * a);
ys = a * xs^2 + b * xs + c;

ins_term = polystr([a b c], 'x');
ins_xs   = sprintf("%g", xs);
ins_ys   = sprintf("%g", ys);


printf("\\begin{exercise}\n");
printf("      {ID-ef133af43d4fe887ec6f1ed648d4669454cae0dd}\n");
printf("      {Snowboardhelme}\n");
printf("  \\ifproblem\\problem\n");
printf("    Ein Unternehmen bietet Snowboardhelme für \\eur{39} das Stück an. Eine\n");
printf("    Marktanalyse ergab, dass sich der tägliche Gewinn $G$ (in \\officialeuro)\n");
printf("    bei einem Verkaufspreis $x$ (in \\officialeuro) mit folgender Formel\n");
printf("    berechnen lässt:\n");
printf("    \\begin{equation*}\n");
printf("      G=-x^{2}+70x-1000\n");
printf("    \\end{equation*}\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Zu welchem Preis sollte das Unternehmen die Snowboardhelme\n");
printf("            anbieten?\n");
printf("      \\item Wie groß wäre dann der tägliche Gewinn?\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Gesucht ist die $x$-Koordinate des Scheitelpunkts.\n");
printf("      \\item Gesucht ist die $y$-Koordinate des Scheitelpunkts.\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Das Unternehmen sollte die Snowboardhelme für \\eur{%s} pro Stück verkaufen.\n", ins_xs);
printf("      \\item Der tägliche Gewinn läge dann bei \\eur{%s}.\n", ins_ys);
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

