clear all;

addpath 'Octave/';

u = 200;              % m
U = 300;              % m
r = u / (2 * pi);     % m
R = U / (2 * pi);     % m
A = pi * (R^2 - r^2); % m^2

ins_u = sprintf("%d",   u);
ins_U = sprintf("%d",   U);
ins_A = sprintf("%.2f", A);

printf("\\begin{exercise}\n");
printf("      {ID-90260c31646ca54ec6ca9cae367380d06734623f}\n");
printf("      {Kreisverkehr}\n");
printf("  \\ifproblem\\problem\n");
printf("    Die Fahrbahn eines Kreisverkehrs ist innen \\simeter{%s} und außen\n", ins_u);
printf("    \\simeter{%s} lang. Wie groß ist ihre Fläche?\n", ins_U);
printf("  \\fi\n");
printf("  \\ifoutline\\outline\n");
printf("    Die Fläche der Fahrbahn erhält man, indem man von der Fläche des\n");
printf("    äußeren Kreises die Fläche des inneren Kreises abzieht:\\par\n");
printf("    \\begingroup\n");
printf("      \\dimen1=4.5cm%%\n");
printf("      \\begin{minipage}{\\dimen1}%%\n");
printf("        \\begin{tikzpicture}%%\n");
printf("          \\draw[line width=8mm, draw=black!25!white]\n");
printf("               (0, 0) circle[radius=1.6cm];\n");
printf("          \\draw (0, 0) circle[radius=1.2cm];\n");
printf("          \\draw (0, 0) circle[radius=2.0cm];\n");
printf("          \\fill[fill=black] (0, 0) circle[radius=1pt];\n");
printf("          \\draw (0, 0) -- node[left]{$r_i$} +(90:1.2);\n");
printf("          \\draw (0, 0) -- node[below, pos=0.3]{$r_a$} +(0:2.0);\n");
printf("        \\end{tikzpicture}%%\n");
printf("      \\end{minipage}%%\n");
printf("      \\dimen2=\\linewidth%%\n");
printf("      \\advance\\dimen2 by -\\dimen1%%\n");
printf("      \\begin{minipage}{\\dimen2}%%\n");
printf("        \\setlength{\\abovedisplayskip}{0pt}%%\n");
printf("        \\begin{equation*}\n");
printf("          \\begin{split}\n");
printf("            U&=2\\pi r\n");
printf("            \\quad\\Rightarrow\\quad\n");
printf("            r=\\frac{U}{2\\pi}\n");
printf("            \\\\[2ex]\n");
printf("            A&=\\pi r_a^2-\\pi r_i^2\n");
printf("              =\\pi\\cdot\\left(r_a^2-r_i^2\\right)\n");
printf("          \\end{split}\n");
printf("        \\end{equation*}\n");
printf("      \\end{minipage}%%\n");
printf("    \\endgroup\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Die Fahrbahn besitzt einen Flächeninhalt von ca. \\simm{%s}.\n", ins_A);
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

