clear all;

addpath 'Octave/';

qa = 16;
ra = 18;
rb = 8;
qd = sqrt(2) * qa;
rd = sqrt(ra^2 + rb^2);

ins_qa = sprintf("%d",   qa);
ins_ra = sprintf("%d",   ra);
ins_rb = sprintf("%d",   rb);
ins_qd = sprintf("%.2f", qd);
ins_rd = sprintf("%.2f", rd);

printf("\\begin{exercise}\n");
printf("      {ID-94c115002c858377840d3c3da6b3a6ba0f931a1d}\n");
printf("      {Balken}\n");
printf("  \\ifproblem\\problem\n");
printf("    \\begin{minipage}[c]{0.20\\linewidth}\n");
printf("      \\centering\n");
printf("      \\begin{tikzpicture}\n");
printf("        \\newcommand{\\radius}{1.1}\n");
printf("        \\draw[line width=0.5pt, fill=black!15!white] (0, 0) circle (\\radius);\n");
printf("        \\draw[fill=white] (225:\\radius) rectangle (45:\\radius);\n");
printf("        \\node[above=3mm] at (270:\\radius) {{\\footnotesize\\sicm{%s}}};\n", ins_qa);
printf("      \\end{tikzpicture}\n");
printf("    \\end{minipage}\\hfill\n");
printf("    \\begin{minipage}[c]{0.79\\linewidth}\n");
printf("    Aus einem Baumstamm soll ein Balken mit der abgebildeten quadratischen\n");
printf("    Grundfläche gesägt werden. Berechne den Durchmesser, den der Baumstamm\n");
printf("    mindestens haben muss.\n");
printf("    \\end{minipage}\\par\n");
printf("    \\begin{minipage}[c]{0.20\\linewidth}\n");
printf("      \\centering\n");
printf("      \\begin{tikzpicture}\n");
printf("        \\newcommand{\\radius}{1.1}\n");
printf("        \\draw[line width=0.5pt, fill=black!15!white] (0, 0) circle (\\radius);\n");
printf("        \\draw[fill=white] (205:\\radius) rectangle (25:\\radius);\n");
printf("        \\node at (270:6.6mm) {{\\footnotesize\\sicm{%s}}};\n", ins_ra);
printf("        \\node at (180:6.3mm) {{\\footnotesize\\sicm{%s}}};\n", ins_rb);
printf("      \\end{tikzpicture}\n");
printf("    \\end{minipage}\\hfill\n");
printf("    \\begin{minipage}[c]{0.79\\linewidth}\n");
printf("    Welchen Durchmesser muss ein Baumstamm mindestens haben, aus dem\n");
printf("    ein Balken mit der abgebildeten rechteckigen Grundfläche geschnitten\n");
printf("    werden soll?\n");
printf("    \\end{minipage}\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\n");
printf("    Die Diagonale des Balkens entspricht dem Duchmesser des Baumstamms.\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    \\begin{itemize}\n");
printf("      \\item Um den Balken mit der quadratischen Grundfläche herzustellen,\n");
printf("            muss der Baumstamm einen Durchmesser von ca. \\sicm{%s} besitzen.\n", ins_qd);
printf("      \\item Um den Balken mit der rechteckigen Grundfläche herzustellen,\n");
printf("            muss der Baumstamm einen Durchmesser von ca. \\sicm{%s} besitzen.\n", ins_rd);
printf("    \\end{itemize}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

