clear all;

addpath 'Octave/';

% Position des Betrachters
% die Blickrichtung ist zum Ursprung des Koordinatensystems
view = [15 20 5];

% diese Richtung definiert 'oben'
up = [0 0 1];

% Ursprung und Koordinatenaxen
O  = [ 0  0  0];
X1 = [20  0  0];
X2 = [ 0 15  0];
X3 = [ 0  0 13];

% Punkte, die das Haus definieren
A = [16  4  0];
B = [12 12  0];
C = [ 2  7  0];
G = [ 2  7  8];
I = [12  7 12];
J = [ 6  4 12];

% Berechnung der fehlenden Punkte
D = C + (A - B);
E = A + G .* [0 0 1];
F = B + G .* [0 0 1];
H = D + G .* [0 0 1];

% Liste der zu transformierenden Punkte
vertices = ...
{% ID   x      y      z
  "O",  O(1),  O(2),  O(3);
  "X1", X1(1), X1(2), X1(3);
  "X2", X2(1), X2(2), X2(3);
  "X3", X3(1), X3(2), X3(3);
  "A",  A(1),  A(2),  A(3);
  "B",  B(1),  B(2),  B(3);
  "C",  C(1),  C(2),  C(3);
  "D",  D(1),  D(2),  D(3);
  "E",  E(1),  E(2),  E(3);
  "F",  F(1),  F(2),  F(3);
  "G",  G(1),  G(2),  G(3);
  "H",  H(1),  H(2),  H(3);
  "I",  I(1),  I(2),  I(3);
  "J",  J(1),  J(2),  J(3);
};

% zweidimensionale Koordinaten auf der Zeichnungsebene
uv = proj_get_all_plane_coordinates(view, up, vertices);

ins_Ax = sprintf("%d", A(1));
ins_Ay = sprintf("%d", A(2));
ins_Az = sprintf("%d", A(3));
ins_Bx = sprintf("%d", B(1));
ins_By = sprintf("%d", B(2));
ins_Bz = sprintf("%d", B(3));
ins_Cx = sprintf("%d", C(1));
ins_Cy = sprintf("%d", C(2));
ins_Cz = sprintf("%d", C(3));
ins_Gx = sprintf("%d", G(1));
ins_Gy = sprintf("%d", G(2));
ins_Gz = sprintf("%d", G(3));
ins_Ix = sprintf("%d", I(1));
ins_Iy = sprintf("%d", I(2));
ins_Iz = sprintf("%d", I(3));
ins_Jx = sprintf("%d", J(1));
ins_Jy = sprintf("%d", J(2));
ins_Jz = sprintf("%d", J(3));

printf("\\begin{exercise}\n");
printf("      {ID-db574718b06b2fad98ca1e47a7369c3e5dd13c9b}\n");
printf("      {Walmdach}\n");
printf("  \\ifproblem\\problem\n");
printf("    Das abgebildete Haus ist quaderförmig mit einem aufgesetzten Walmdach.\n");
printf("    Die Koordinaten in der Zeichnung besitzen alle die Einheit Meter.\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}[scale=1.75]\n");
% Punktdefinitionen
proj_show_tikz_coordinates(uv, 6, 6, false, '        ');
printf("        \\draw[line width=0.75pt, ->, >=stealth] (O) -- (X1) node[below]{{\\small$x$}};\n");
printf("        \\draw[line width=0.75pt, ->, >=stealth] (O) -- (X2) node[below]{{\\small$y$}};\n");
printf("        \\draw[line width=0.75pt, ->, >=stealth] (O) -- (X3) node[right]{{\\small$z$}};\n");
printf("        \\fill[fill=black] (A) circle[radius=0.75pt] node[below]{{\\small$A$}};\n");
printf("        \\fill[fill=black] (B) circle[radius=0.75pt] node[below]{{\\small$B$}};\n");
printf("        \\fill[fill=black] (C) circle[radius=0.75pt] node[below]{{\\small$C$}};\n");
printf("        \\fill[fill=black] (D) circle[radius=0.75pt] node[above left]{{\\small$D$}};\n");
printf("        \\fill[fill=black] (E) circle[radius=0.75pt] node[below right]{{\\small$E$}};\n");
printf("        \\fill[fill=black] (F) circle[radius=0.75pt] node[below right]{{\\small$F$}};\n");
printf("        \\fill[fill=black] (G) circle[radius=0.75pt] node[below right]{{\\small$G$}};\n");
printf("        \\fill[fill=black] (H) circle[radius=0.75pt] node[below right]{{\\small$H$}};\n");
printf("        \\fill[fill=black] (I) circle[radius=0.75pt] node[above]{{\\small$I$}};\n");
printf("        \\fill[fill=black] (J) circle[radius=0.75pt] node[above]{{\\small$J$}};\n");
printf("        \\draw[line width=0.6pt, style=solid, join=bevel] (F) -- (G) -- (C) -- (B) -- (F) -- (E) -- (A) -- (B);\n");
printf("        \\draw[line width=0.6pt, style=solid, join=bevel] (E) -- (I) -- (F);\n");
printf("        \\draw[line width=0.6pt, style=solid, join=bevel] (I) -- (J) -- (G);\n");
printf("        \\draw[line width=0.6pt, style=dotted] (A) -- (D) -- (C);\n");
printf("        \\draw[line width=0.6pt, style=dotted] (E) -- (H) -- (G);\n");
printf("        \\draw[line width=0.6pt, style=dotted] (J) -- (H) -- (D);\n");
printf("        \\node[right=4em] at (G)\n");
printf("        {%%\n");
printf("          \\begin{minipage}{7em}\n");
printf("            \\setlength{\\abovedisplayskip}{0pt}%%\n");
printf("            \\begin{equation*}\n");
printf("              \\begin{split}\n");
printf("                A\\;&(%s \\mid %s\\mid %s) \\\\\n", ins_Ax, ins_Ay, ins_Az);
printf("                B\\;&(%s \\mid %s\\mid %s) \\\\\n", ins_Bx, ins_By, ins_Bz);
printf("                C\\;&(%s \\mid %s\\mid %s) \\\\\n", ins_Cx, ins_Cy, ins_Cz);
printf("                G\\;&(%s \\mid %s\\mid %s) \\\\\n", ins_Gx, ins_Gy, ins_Gz);
printf("                I\\;&(%s \\mid %s\\mid %s) \\\\\n", ins_Ix, ins_Iy, ins_Iz);
printf("                J\\;&(%s \\mid %s\\mid %s)\n",      ins_Jx, ins_Jy, ins_Jz);
printf("              \\end{split}\n");
printf("            \\end{equation*}\n");
printf("          \\end{minipage}%%\n");
printf("        };\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Die Punkte $E$, $F$ und $I$ legen Ebene $E_{1}$ fest.\n");
printf("            Die Punkte $F$, $G$, $I$ und $J$ liegen in Ebene $E_{2}$.\n");
printf("            Gib die beiden Ebenen jeweils in Parameter- und Normalenform an.\n");
printf("      \\item Berechne den Schnittwinkel der beiden Dachebenen $E_{1}$ und $E_{2}$.\n");
printf("      \\item Die Punkte $G$, $H$ und $J$ legen Ebene $E_{3}$ fest.\n");
printf("            Ermittle, in welcher Höhe über dem Boden sich die Ebenen\n");
printf("            $E_{1}$ und $E_{3}$ schneiden.\n");
printf("      \\item Über dem Haus fliegt ein Vogel, dessen Flugbahn durch die Gerade\n");
printf("            \\begin{equation*}\n");
printf("              g:\\vec{x}=\n");
printf("              \\begin{pmatrix} 9 \\\\ 0 \\\\ 11 \\end{pmatrix}\n");
printf("              +t\\cdot\n");
printf("              \\begin{pmatrix} 0 \\\\ 1 \\\\ 1 \\end{pmatrix}\n");
printf("            \\end{equation*}\n");
printf("            beschrieben werden kann. Bestimme den minimalen Abstand des\n");
printf("            Vogels von der Geraden durch $I$ und $J$ und den minimalen\n");
printf("            Abstand des Vogels von der Ecke $J$.\n");
printf("      \\item Ermittle den Ort, an dem der Vogel aus d) landen wird.\n");
printf("            Bestimme auch den Winkel, in dem der Vogel auf die Erde trifft.\n");
printf("      \\item Ein weiterer Vogel fliegt auf der Flugbahn mit der Gleichung\n");
printf("            \\begin{equation*}\n");
printf("              h_{\\alpha}:\\vec{x}=\n");
printf("              \\begin{pmatrix} 5 \\\\ 11 \\\\ 8 \\end{pmatrix}\n");
printf("              +t\\cdot\n");
printf("              \\begin{pmatrix} 2 \\\\ \\alpha \\\\ 3 \\end{pmatrix}\n");
printf("            \\end{equation*}\n");
printf("            Ermittle denjenigen Wert von $\\alpha$, für den sich die beiden\n");
printf("            Flugbahnen schneiden.\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  %%\\ifoutcome\\outcome\n");
printf("  %%\\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

