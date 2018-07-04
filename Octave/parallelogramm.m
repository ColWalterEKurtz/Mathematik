clear all;

A = [-3 -1]';
B = [ 3 -3]';
C = [ 2  2]';
D = [-1  2]';

M1 = 0.5 * (A + B);
M2 = 0.5 * (B + C);
M3 = 0.5 * (C + D);
M4 = 0.5 * (D + A);
M  = 0.5 * (M1 + M3);

MA = 0.5 * ( 0.5 * (A + M1) + 0.5 * (M4 + M) );
MB = 0.5 * ( 0.5 * (M1 + B) + 0.5 * (M2 + M) );
MC = 0.5 * ( 0.5 * (M + M2) + 0.5 * (M3 + C) );
MD = 0.5 * ( 0.5 * (M4 + M) + 0.5 * (D + M3) );

MMA = M;
MMB = M;
MMC = M;
MMD = M;
M1A = M1;
M1B = M1;
M2B = M2;
M2C = M2;
M3C = M3;
M3D = M3;
M4D = M4;
M4A = M4;

printf("%% Vorlage und Klassenoptionen\n");
printf("\\documentclass\n");
printf("[\n");
printf("  draft    = true,\n");
printf("  fontsize = 11pt,\n");
printf("  parskip  = half-,\n");
printf("  BCOR     = 0pt,\n");
printf("  DIV      = 11,\n");
printf("  ngerman,\n");
printf("  dvipsnames\n");
printf("]\n");
printf("{scrartcl}\n");
printf("\n");
printf("%% Standardpakete\n");
printf("\\usepackage[utf8]{inputenc}\n");
printf("\\usepackage[T1]{fontenc}\n");
printf("\\usepackage{lmodern}\n");
printf("\\usepackage{babel}\n");
printf("%% Zusatzpakete\n");
printf("\\usepackage{amsmath}\n");
printf("\\usepackage{amssymb}\n");
printf("\\usepackage{graphicx}\n");
printf("\\usepackage{tikz}\n");
printf("\\usepackage{xcolor}\n");
printf("\n");
printf("\\usetikzlibrary{calc}\n");
printf("\n");
printf("%% ------------------------------------------------------------------------------\n");
printf("\\begin{document}\n");
printf("%% ------------------------------------------------------------------------------\n");
printf("\n");
printf("\\begin{center}\n");
printf("  \\begin{tikzpicture}[scale=0.5]\n");
printf("    \\begin{scope}\n");
printf("      \\coordinate (A)   at (%7.4f, %7.4f);\n", A(1),   A(2));
printf("      \\coordinate (B)   at (%7.4f, %7.4f);\n", B(1),   B(2));
printf("      \\coordinate (C)   at (%7.4f, %7.4f);\n", C(1),   C(2));
printf("      \\coordinate (D)   at (%7.4f, %7.4f);\n", D(1),   D(2));
printf("      \\coordinate (M1)  at (%7.4f, %7.4f);\n", M1(1),  M1(2));
printf("      \\coordinate (M2)  at (%7.4f, %7.4f);\n", M2(1),  M2(2));
printf("      \\coordinate (M3)  at (%7.4f, %7.4f);\n", M3(1),  M3(2));
printf("      \\coordinate (M4)  at (%7.4f, %7.4f);\n", M4(1),  M4(2));
printf("      \\coordinate (M)   at (%7.4f, %7.4f);\n", M(1),   M(2));
printf("      \\coordinate (MA)  at (%7.4f, %7.4f);\n", MA(1),  MA(2));
printf("      \\coordinate (MB)  at (%7.4f, %7.4f);\n", MB(1),  MB(2));
printf("      \\coordinate (MC)  at (%7.4f, %7.4f);\n", MC(1),  MC(2));
printf("      \\coordinate (MD)  at (%7.4f, %7.4f);\n", MD(1),  MD(2));
printf("      \\coordinate (MMA) at (%7.4f, %7.4f);\n", MMA(1), MMA(2));
printf("      \\coordinate (MMB) at (%7.4f, %7.4f);\n", MMB(1), MMB(2));
printf("      \\coordinate (MMC) at (%7.4f, %7.4f);\n", MMC(1), MMC(2));
printf("      \\coordinate (MMD) at (%7.4f, %7.4f);\n", MMD(1), MMD(2));
printf("      \\coordinate (M1A) at (%7.4f, %7.4f);\n", M1A(1), M1A(2));
printf("      \\coordinate (M1B) at (%7.4f, %7.4f);\n", M1A(1), M1A(2));
printf("      \\coordinate (M2B) at (%7.4f, %7.4f);\n", M2B(1), M2B(2));
printf("      \\coordinate (M2C) at (%7.4f, %7.4f);\n", M2C(1), M2C(2));
printf("      \\coordinate (M3C) at (%7.4f, %7.4f);\n", M3C(1), M3C(2));
printf("      \\coordinate (M3D) at (%7.4f, %7.4f);\n", M3D(1), M3D(2));
printf("      \\coordinate (M4D) at (%7.4f, %7.4f);\n", M4D(1), M4D(2));
printf("      \\coordinate (M4A) at (%7.4f, %7.4f);\n", M4A(1), M4A(2));
printf("      \\draw (A) -- (B) -- (C) -- (D) -- cycle;\n");
printf("      \\draw (M1) -- (M3) (M2) -- (M4);\n");
printf("      \\fill (M)  circle[radius=1pt];\n");
printf("      \\node at (MA) {$A$};\n");
printf("      \\node at (MB) {$B$};\n");
printf("      \\node at (MC) {$C$};\n");
printf("      \\node at (MD) {$D$};\n");
printf("    \\end{scope}\n");

delta = 0.25;

shift = [-delta -delta]';
A   = A   + shift;
MA  = MA  + shift;
M1A = M1A + shift;
M4A = M4A + shift;
MMA = MMA + shift;

shift = [delta, -delta]';
B   = B   + shift;
MB  = MB  + shift;
M1B = M1B + shift;
M2B = M2B + shift;
MMB = MMB + shift;

shift = [delta delta]';
C   = C   + shift;
MC  = MC  + shift;
M2C = M2C + shift;
M3C = M3C + shift;
MMC = MMC + shift;

shift = [-delta delta]';
D   = D   + shift;
MD  = MD  + shift;
M3D = M3D + shift;
M4D = M4D + shift;
MMD = MMD + shift;

printf("    \\begin{scope}[xshift=7cm]\n");
printf("      \\coordinate (A)   at (%7.4f, %7.4f);\n", A(1),   A(2));
printf("      \\coordinate (B)   at (%7.4f, %7.4f);\n", B(1),   B(2));
printf("      \\coordinate (C)   at (%7.4f, %7.4f);\n", C(1),   C(2));
printf("      \\coordinate (D)   at (%7.4f, %7.4f);\n", D(1),   D(2));
printf("      \\coordinate (M1)  at (%7.4f, %7.4f);\n", M1(1),  M1(2));
printf("      \\coordinate (M2)  at (%7.4f, %7.4f);\n", M2(1),  M2(2));
printf("      \\coordinate (M3)  at (%7.4f, %7.4f);\n", M3(1),  M3(2));
printf("      \\coordinate (M4)  at (%7.4f, %7.4f);\n", M4(1),  M4(2));
printf("      \\coordinate (M)   at (%7.4f, %7.4f);\n", M(1),   M(2));
printf("      \\coordinate (MA)  at (%7.4f, %7.4f);\n", MA(1),  MA(2));
printf("      \\coordinate (MB)  at (%7.4f, %7.4f);\n", MB(1),  MB(2));
printf("      \\coordinate (MC)  at (%7.4f, %7.4f);\n", MC(1),  MC(2));
printf("      \\coordinate (MD)  at (%7.4f, %7.4f);\n", MD(1),  MD(2));
printf("      \\coordinate (MMA) at (%7.4f, %7.4f);\n", MMA(1), MMA(2));
printf("      \\coordinate (MMB) at (%7.4f, %7.4f);\n", MMB(1), MMB(2));
printf("      \\coordinate (MMC) at (%7.4f, %7.4f);\n", MMC(1), MMC(2));
printf("      \\coordinate (MMD) at (%7.4f, %7.4f);\n", MMD(1), MMD(2));
printf("      \\coordinate (M1A) at (%7.4f, %7.4f);\n", M1A(1), M1A(2));
printf("      \\coordinate (M1B) at (%7.4f, %7.4f);\n", M1B(1), M1B(2));
printf("      \\coordinate (M2B) at (%7.4f, %7.4f);\n", M2B(1), M2B(2));
printf("      \\coordinate (M2C) at (%7.4f, %7.4f);\n", M2C(1), M2C(2));
printf("      \\coordinate (M3C) at (%7.4f, %7.4f);\n", M3C(1), M3C(2));
printf("      \\coordinate (M3D) at (%7.4f, %7.4f);\n", M3D(1), M3D(2));
printf("      \\coordinate (M4D) at (%7.4f, %7.4f);\n", M4D(1), M4D(2));
printf("      \\coordinate (M4A) at (%7.4f, %7.4f);\n", M4A(1), M4A(2));
printf("      \\draw (A) -- (M1A) -- (MMA) -- (M4A) -- cycle;\n");
printf("      \\draw (B) -- (M2B) -- (MMB) -- (M1B) -- cycle;\n");
printf("      \\draw (C) -- (M3C) -- (MMC) -- (M2C) -- cycle;\n");
printf("      \\draw (D) -- (M4D) -- (MMD) -- (M3D) -- cycle;\n");
printf("      \\node at (MA) {$\\curvearrowleft$};\n");
printf("      \\node at (MB) {$\\curvearrowright$};\n");
printf("      \\node[rotate=180] at (MC) {$\\curvearrowleft$};\n");
printf("      \\node[rotate=180] at (MD) {$\\curvearrowright$};\n");
printf("    \\end{scope}\n");

A = [-3 -1]';
B = [ 3 -3]';
C = [ 2  2]';
D = [-1  2]';

M1 = 0.5 * (A + B);
M2 = 0.5 * (B + C);
M3 = 0.5 * (C + D);
M4 = 0.5 * (D + A);
M  = 0.5 * (M1 + M3);

MA = 0.5 * ( 0.5 * (A + M1) + 0.5 * (M4 + M) );
MB = 0.5 * ( 0.5 * (M1 + B) + 0.5 * (M2 + M) );
MC = 0.5 * ( 0.5 * (M + M2) + 0.5 * (M3 + C) );
MD = 0.5 * ( 0.5 * (M4 + M) + 0.5 * (D + M3) );

MMA = M;
MMB = M;
MMC = M;
MMD = M;
M1A = M1;
M1B = M1;
M2B = M2;
M2C = M2;
M3C = M3;
M3D = M3;
M4D = M4;
M4A = M4;

shift = [0 1.25]';

A   = myrot(A,   M1, 90) + shift;
MA  = myrot(MA,  M1, 90) + shift;
M1A = myrot(M1A, M1, 90) + shift;
M4A = myrot(M4A, M1, 90) + shift;
MMA = myrot(MMA, M1, 90) + shift;

B   = myrot(B,   M1, -90) + shift;
MB  = myrot(MB,  M1, -90) + shift;
M1B = myrot(M1B, M1, -90) + shift;
M2B = myrot(M2B, M1, -90) + shift;
MMB = myrot(MMB, M1, -90) + shift;

shift = [0 -2]';

C   = myrot(C,   M3, 90) + shift;
MC  = myrot(MC,  M3, 90) + shift;
M2C = myrot(M2C, M3, 90) + shift;
M3C = myrot(M3C, M3, 90) + shift;
MMC = myrot(MMC, M3, 90) + shift;

D   = myrot(D,   M3, -90) + shift;
MD  = myrot(MD,  M3, -90) + shift;
M3D = myrot(M3D, M3, -90) + shift;
M4D = myrot(M4D, M3, -90) + shift;
MMD = myrot(MMD, M3, -90) + shift;

printf("    \\begin{scope}[xshift=14cm]\n");
printf("      \\coordinate (A)   at (%7.4f, %7.4f);\n", A(1),   A(2));
printf("      \\coordinate (B)   at (%7.4f, %7.4f);\n", B(1),   B(2));
printf("      \\coordinate (C)   at (%7.4f, %7.4f);\n", C(1),   C(2));
printf("      \\coordinate (D)   at (%7.4f, %7.4f);\n", D(1),   D(2));
printf("      \\coordinate (M1)  at (%7.4f, %7.4f);\n", M1(1),  M1(2));
printf("      \\coordinate (M2)  at (%7.4f, %7.4f);\n", M2(1),  M2(2));
printf("      \\coordinate (M3)  at (%7.4f, %7.4f);\n", M3(1),  M3(2));
printf("      \\coordinate (M4)  at (%7.4f, %7.4f);\n", M4(1),  M4(2));
printf("      \\coordinate (M)   at (%7.4f, %7.4f);\n", M(1),   M(2));
printf("      \\coordinate (MA)  at (%7.4f, %7.4f);\n", MA(1),  MA(2));
printf("      \\coordinate (MB)  at (%7.4f, %7.4f);\n", MB(1),  MB(2));
printf("      \\coordinate (MC)  at (%7.4f, %7.4f);\n", MC(1),  MC(2));
printf("      \\coordinate (MD)  at (%7.4f, %7.4f);\n", MD(1),  MD(2));
printf("      \\coordinate (MMA) at (%7.4f, %7.4f);\n", MMA(1), MMA(2));
printf("      \\coordinate (MMB) at (%7.4f, %7.4f);\n", MMB(1), MMB(2));
printf("      \\coordinate (MMC) at (%7.4f, %7.4f);\n", MMC(1), MMC(2));
printf("      \\coordinate (MMD) at (%7.4f, %7.4f);\n", MMD(1), MMD(2));
printf("      \\coordinate (M1A) at (%7.4f, %7.4f);\n", M1A(1), M1A(2));
printf("      \\coordinate (M1B) at (%7.4f, %7.4f);\n", M1B(1), M1B(2));
printf("      \\coordinate (M2B) at (%7.4f, %7.4f);\n", M2B(1), M2B(2));
printf("      \\coordinate (M2C) at (%7.4f, %7.4f);\n", M2C(1), M2C(2));
printf("      \\coordinate (M3C) at (%7.4f, %7.4f);\n", M3C(1), M3C(2));
printf("      \\coordinate (M3D) at (%7.4f, %7.4f);\n", M3D(1), M3D(2));
printf("      \\coordinate (M4D) at (%7.4f, %7.4f);\n", M4D(1), M4D(2));
printf("      \\coordinate (M4A) at (%7.4f, %7.4f);\n", M4A(1), M4A(2));
printf("      \\draw (A) -- (M1A) -- (MMA) -- (M4A) -- cycle;\n");
printf("      \\draw (B) -- (M2B) -- (MMB) -- (M1B) -- cycle;\n");
printf("      \\draw (C) -- (M3C) -- (MMC) -- (M2C) -- cycle;\n");
printf("      \\draw (D) -- (M4D) -- (MMD) -- (M3D) -- cycle;\n");
printf("      \\node at (MA) {$A$};\n");
printf("      \\node at (MB) {$B$};\n");
printf("      \\node at (MC) {$C$};\n");
printf("      \\node at (MD) {$D$};\n");
printf("    \\end{scope}\n");

fit = [-1.5 -1.5]';

shift = M - A;
A   = A   + shift + fit;
MA  = MA  + shift + fit;
M1A = M1A + shift + fit;
M4A = M4A + shift + fit;
MMA = MMA + shift + fit;

shift = M - B;
B   = B   + shift + fit;
MB  = MB  + shift + fit;
M1B = M1B + shift + fit;
M2B = M2B + shift + fit;
MMB = MMB + shift + fit;

shift = M - C;
C   = C   + shift + fit;
MC  = MC  + shift + fit;
M2C = M2C + shift + fit;
M3C = M3C + shift + fit;
MMC = MMC + shift + fit;

shift = M - D;
D   = D   + shift + fit;
MD  = MD  + shift + fit;
M3D = M3D + shift + fit;
M4D = M4D + shift + fit;
MMD = MMD + shift + fit;

printf("    \\begin{scope}[xshift=21cm]\n");
printf("      \\coordinate (A)   at (%7.4f, %7.4f);\n", A(1),   A(2));
printf("      \\coordinate (B)   at (%7.4f, %7.4f);\n", B(1),   B(2));
printf("      \\coordinate (C)   at (%7.4f, %7.4f);\n", C(1),   C(2));
printf("      \\coordinate (D)   at (%7.4f, %7.4f);\n", D(1),   D(2));
printf("      \\coordinate (M1)  at (%7.4f, %7.4f);\n", M1(1),  M1(2));
printf("      \\coordinate (M2)  at (%7.4f, %7.4f);\n", M2(1),  M2(2));
printf("      \\coordinate (M3)  at (%7.4f, %7.4f);\n", M3(1),  M3(2));
printf("      \\coordinate (M4)  at (%7.4f, %7.4f);\n", M4(1),  M4(2));
printf("      \\coordinate (M)   at (%7.4f, %7.4f);\n", M(1),   M(2));
printf("      \\coordinate (MA)  at (%7.4f, %7.4f);\n", MA(1),  MA(2));
printf("      \\coordinate (MB)  at (%7.4f, %7.4f);\n", MB(1),  MB(2));
printf("      \\coordinate (MC)  at (%7.4f, %7.4f);\n", MC(1),  MC(2));
printf("      \\coordinate (MD)  at (%7.4f, %7.4f);\n", MD(1),  MD(2));
printf("      \\coordinate (MMA) at (%7.4f, %7.4f);\n", MMA(1), MMA(2));
printf("      \\coordinate (MMB) at (%7.4f, %7.4f);\n", MMB(1), MMB(2));
printf("      \\coordinate (MMC) at (%7.4f, %7.4f);\n", MMC(1), MMC(2));
printf("      \\coordinate (MMD) at (%7.4f, %7.4f);\n", MMD(1), MMD(2));
printf("      \\coordinate (M1A) at (%7.4f, %7.4f);\n", M1A(1), M1A(2));
printf("      \\coordinate (M1B) at (%7.4f, %7.4f);\n", M1B(1), M1B(2));
printf("      \\coordinate (M2B) at (%7.4f, %7.4f);\n", M2B(1), M2B(2));
printf("      \\coordinate (M2C) at (%7.4f, %7.4f);\n", M2C(1), M2C(2));
printf("      \\coordinate (M3C) at (%7.4f, %7.4f);\n", M3C(1), M3C(2));
printf("      \\coordinate (M3D) at (%7.4f, %7.4f);\n", M3D(1), M3D(2));
printf("      \\coordinate (M4D) at (%7.4f, %7.4f);\n", M4D(1), M4D(2));
printf("      \\coordinate (M4A) at (%7.4f, %7.4f);\n", M4A(1), M4A(2));
printf("      \\draw (A) -- (M1A) -- (MMA) -- (M4A) -- cycle;\n");
printf("      \\draw (B) -- (M2B) -- (MMB) -- (M1B) -- cycle;\n");
printf("      \\draw (C) -- (M3C) -- (MMC) -- (M2C) -- cycle;\n");
printf("      \\draw (D) -- (M4D) -- (MMD) -- (M3D) -- cycle;\n");
printf("      \\node at (MA) {$A$};\n");
printf("      \\node at (MB) {$B$};\n");
printf("      \\node at (MC) {$C$};\n");
printf("      \\node at (MD) {$D$};\n");
printf("    \\end{scope}\n");

printf("  \\end{tikzpicture}\n");
printf("\\end{center}\n");
printf("\n");
printf("%% ------------------------------------------------------------------------------\n");
printf("\\end{document}\n");
printf("%% ------------------------------------------------------------------------------\n");
