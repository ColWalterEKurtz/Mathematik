clear all;

addpath 'Octave/';

Ax = -2;
Ay = -1.5;
Bx =  3;
By = -1;
Cx =  0;
Cy =  3;
a = sqrt((Bx - Cx)^2 + (By - Cy)^2);
b = sqrt((Ax - Cx)^2 + (Ay - Cy)^2);
c = sqrt((Ax - Bx)^2 + (Ay - By)^2);
u = a + b + c;

ins_Ax = sprintf("%6.3f", Ax);
ins_Ay = sprintf("%6.3f", Ay);
ins_Bx = sprintf("%6.3f", Bx);
ins_By = sprintf("%6.3f", By);
ins_Cx = sprintf("%6.3f", Cx);
ins_Cy = sprintf("%6.3f", Cy);
ins_u  = sprintf("%.2f", u);

printf("\\begin{exercise}\n");
printf("      {ID-3946975f809c60c035f03db88b8a720b4cf813e1}\n");
printf("      {Umfang}\n");
printf("  \\ifproblem\\problem\n");
printf("    Welchen Umfang hat das Dreieck, wenn eine Längeneinheit\n");
printf("    im Koordinatensystem \\sicm{1} entspricht?\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}[scale=1]\n");
printf("        \\coordinate (A) at (%s, %s);\n", ins_Ax, ins_Ay);
printf("        \\coordinate (B) at (%s, %s);\n", ins_Bx, ins_By);
printf("        \\coordinate (C) at (%s, %s);\n", ins_Cx, ins_Cy);
printf("        \\draw[thin, draw=black!66!white] (-4.25, -2.25) grid[xstep=5mm, ystep=5mm] (4.25, 4.25);\n");
printf("        \\draw[line width=1.0pt, ->, >=latex] (-4, 0) -- (4, 0) node[below]{{\\small$x$}};\n");
printf("        \\draw[line width=1.0pt, ->, >=latex] (0, -2) -- (0, 4) node[left]{{\\small$y$}};\n");
printf("        \\fill (A) circle (1.4pt);\n");
printf("        \\fill (B) circle (1.4pt);\n");
printf("        \\fill (C) circle (1.4pt);\n");
printf("        \\node[below left]  at (A) {{\\small$A$}};\n");
printf("        \\node[below right] at (B) {{\\small$B$}};\n");
printf("        \\node[above right] at (C) {{\\small$C$}};\n");
printf("        \\draw[line width=0.8pt] (A) -- (B) -- (C) -- cycle;\n");
printf("        \\draw[line width=1.0] ([shift={(90:1mm)}]1, 0) -- ([shift={(270:1mm)}]1, 0) node[below, shape=rectangle, fill=white]{{\\small$1$}};\n");
printf("        \\draw[line width=1.0] ([shift={(0:1mm)}]0, 1) -- ([shift={(180:1mm)}]0, 1) node[left, shape=rectangle, fill=white]{{\\small$1$}};\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\n");
printf("    Benutze die Koordinaten der Eckpunkte\\ldots\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Das Dreieck besitzt einen Umfang von ca. \\sicm{%s}.\n", ins_u);
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

