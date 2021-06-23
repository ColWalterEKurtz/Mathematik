clear all;

addpath 'Octave/';

laenge = 45;
breite = 30;
hoehe  = 25;
uelapp = 10;
bandcm = 2 * (laenge + 2 * breite + 3 * hoehe) + uelapp;
bandm  = bandcm / 100;

ins_laenge = sprintf("%d",   laenge);
ins_breite = sprintf("%d",   breite);
ins_hoehe  = sprintf("%d",   hoehe);
ins_uelapp = sprintf("%d",   uelapp);
ins_bandcm = sprintf("%d",   bandcm);
ins_bandm  = sprintf("%.2f", bandm);

printf("\\begin{exercise}\n");
printf("      {ID-b75ee6a9f0c1b08630cdb754aa7c8602714f4880}\n");
printf("      {Klebeband}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    \\begin{minipage}{0.33\\linewidth}\n");
printf("      \\begin{tikzpicture}[scale=0.8]\n");
printf("        \\draw (0, 0)\n");
printf("              -- ++(0:45mm)\n");
printf("              -- ++(45:15mm)\n");
printf("              -- ++(90:25mm) coordinate (A)\n");
printf("              -- ++(180:45mm)\n");
printf("              -- ++(225:15mm)\n");
printf("              -- cycle;\n");
printf("        \\begin{scope}[line join=bevel]\n");
printf("          \\draw (0, 25mm) -- (45mm, 25mm) -- (45mm, 0);\n");
printf("          \\draw (45mm, 25mm) -- (A);\n");
printf("        \\end{scope}\n");
printf("        \\begin{scope}[line join=bevel, style=dashed]\n");
printf("          \\draw[shift={(45:7.5mm)}] (0, 25mm) -- (45mm, 25mm) -- (45mm, 0);\n");
printf("          \\draw[xshift=15mm] (0, 0)  -- (0, 25mm) -- ++(45:15mm);\n");
printf("          \\draw[xshift=30mm] (0, 0)  -- (0, 25mm) -- ++(45:15mm);\n");
printf("        \\end{scope}\n");
printf("      \\end{tikzpicture}%%\n");
printf("    \\end{minipage}\\hfill\n");
printf("    \\begin{minipage}{0.65\\linewidth}\n");
printf("      Das in der Abbildung abgebildete Paket ist von links nach rechts \\sicm{%s}\n", ins_laenge);
printf("      lang, von vorn nach hinten \\sicm{%s} breit, und es ist \\sicm{%s} hoch.\n", ins_breite, ins_hoehe);
printf("      Es soll in der dargestellten Weise (gestrichelte Linie) mit Klebeband\n");
printf("      verklebt werden. Für das Überlappen von End- und Anfangsstücken sind\n");
printf("      zusätzlich insgesamt \\sicm{%s} Klebeband vorgesehen.\\par\n", ins_uelapp);
printf("      Wie viel Zentimeter Klebeband werden demnach insgesamt gebraucht?\n");
printf("      Wie viel Meter sind das?\n");
printf("    \\end{minipage}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    Zum Verkleben des Paketes werden insgesamt \\sicm{%s} Klebeband benötigt.\n", ins_bandcm);
printf("    Das sind \\simeter{%s}.\n", ins_bandm);
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

