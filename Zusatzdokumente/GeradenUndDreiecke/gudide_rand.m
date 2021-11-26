clear all;

% LaTeX-Dokument
DOC = fopen("gudide.tex", "w");
fprintf(DOC, "\\documentclass\n");
fprintf(DOC, "[\n");
fprintf(DOC, "  draft    = true,\n");
fprintf(DOC, "  fontsize = 11pt,\n");
fprintf(DOC, "  parskip  = half-,\n");
fprintf(DOC, "  BCOR     = 0pt,\n");
fprintf(DOC, "  DIV      = 11,\n");
fprintf(DOC, "  ngerman\n");
fprintf(DOC, "]\n");
fprintf(DOC, "{scrartcl}\n");
fprintf(DOC, "\n");
fprintf(DOC, "%% default packages\n");
fprintf(DOC, "\\usepackage[utf8]{inputenc}\n");
fprintf(DOC, "\\usepackage[T1]{fontenc}\n");
fprintf(DOC, "\\usepackage{lmodern}\n");
fprintf(DOC, "\\usepackage[ngerman]{babel}\n");
fprintf(DOC, "%% extra packages\n");
fprintf(DOC, "\\usepackage{amsmath}\n");
fprintf(DOC, "\\usepackage{enumerate}\n");
fprintf(DOC, "\\usepackage{siunitx}\n");
fprintf(DOC, "\n");
fprintf(DOC, "%% ------------------------------------------------------------------------------\n");
fprintf(DOC, "\\begin{document}\n");
fprintf(DOC, "%% ------------------------------------------------------------------------------\n");
fprintf(DOC, "\n");
fprintf(DOC, "%% ------------------------------------------\n");
fprintf(DOC, "\\section*{Geraden und Dreiecke in der Ebene}\n");
fprintf(DOC, "%% ------------------------------------------\n");
fprintf(DOC, "\n");
fprintf(DOC, "%% -------------------\n");
fprintf(DOC, "\\paragraph{Aufgabe 1}\n");
fprintf(DOC, "%% -------------------\n");
fprintf(DOC, "In welchem Punkt schneidet die Gerade $g_1$, die durch die Punkte $P$\n");
fprintf(DOC, "und $Q$ festgelegt ist, die Gerade $g_2$, die durch die Punkte $R$ und\n");
fprintf(DOC, "$S$ verfäuft?\n");
fprintf(DOC, "\n");
fprintf(DOC, "%% -------------------\n");
fprintf(DOC, "\\paragraph{Aufgabe 2}\n");
fprintf(DOC, "%% -------------------\n");
fprintf(DOC, "Nimmt man die $x$-Achse als dritte Gerade hinzu, ergibt sich zusammen\n");
fprintf(DOC, "mit den Geraden $g_1$ und $g_2$ ein Dreieck.\n");
fprintf(DOC, "\\begin{enumerate}[{2}.1]\n");
fprintf(DOC, "  \\item Bestimme den Umfang dieses Dreiecks.\n");
fprintf(DOC, "  \\item Bestimme den Flächeninhalt dieses Dreiecks.\n");
fprintf(DOC, "  \\item Bestimme die Innenwinkel dieses Dreiecks.\n");
fprintf(DOC, "\\end{enumerate}\n");
fprintf(DOC, "\n");
fprintf(DOC, "\\hrulefill\n");
fprintf(DOC, "\n");
fprintf(DOC, "\\input{gudide_ex}\n");
fprintf(DOC, "\n");
fprintf(DOC, "\\clearpage\n");
fprintf(DOC, "\n");
fprintf(DOC, "\\input{gudide_sl}\n");
fprintf(DOC, "\n");
fprintf(DOC, "%% ------------------------------------------------------------------------------\n");
fprintf(DOC, "\\end{document}\n");
fprintf(DOC, "%% ------------------------------------------------------------------------------\n");
fclose(DOC);

FEX = fopen("gudide_ex.tex", "w");
FSL = fopen("gudide_sl.tex", "w");
LOG = fopen("gudide_pt.log", "w");

fprintf(FEX, "\\begin{equation*}\n");
fprintf(FEX, "  \\begin{array}{lllll}\n");

exnum = 1;
exmax = 21;

coords = [[-20:-1] [1:20]];

while (exnum <= exmax)

  crperm = randperm(length(coords));
  cindex = 0;

  P = [coords(crperm(++cindex)) coords(crperm(++cindex))];
  Q = [coords(crperm(++cindex)) coords(crperm(++cindex))];
  R = [coords(crperm(++cindex)) coords(crperm(++cindex))];
  S = [coords(crperm(++cindex)) coords(crperm(++cindex))];

  [valid m1 b1 m2 b2 z1 z2 cx cy u f alpha beta gamma] = gudide_calc(P, Q, R, S);

  % kein Schnittpunkt
  if (!valid)

    continue

  endif

  fprintf(LOG, "%% %s\n", (96 + exnum));
  fprintf(LOG, "P = [%g %g];\n", P(1), P(2));
  fprintf(LOG, "Q = [%g %g];\n", Q(1), Q(2));
  fprintf(LOG, "R = [%g %g];\n", R(1), R(2));
  fprintf(LOG, "S = [%g %g];\n", S(1), S(2));
  fprintf(LOG, "\n");

  % Ecken des Dreiecks
  C = [cx cy];
  A = [z1 0];
  B = [z2 0];

  ins_P = sprintf("P\\left(%s\\;\\middle|\\;%s\\right)", texnum(P(1)), texnum(P(2)));
  ins_Q = sprintf("Q\\left(%s\\;\\middle|\\;%s\\right)", texnum(Q(1)), texnum(Q(2)));
  ins_R = sprintf("R\\left(%s\\;\\middle|\\;%s\\right)", texnum(R(1)), texnum(R(2)));
  ins_S = sprintf("S\\left(%s\\;\\middle|\\;%s\\right)", texnum(S(1)), texnum(S(2)));
  ins_A = sprintf("A\\left(%s\\;\\middle|\\;%s\\right)", texnum(A(1)), texnum(A(2)));
  ins_B = sprintf("B\\left(%s\\;\\middle|\\;%s\\right)", texnum(B(1)), texnum(B(2)));
  ins_C = sprintf("C\\left(%s\\;\\middle|\\;%s\\right)", texnum(C(1)), texnum(C(2)));
  ins_u = texnum(u);
  ins_f = texnum(f);
  ins_alpha = texnum(alpha);
  ins_beta  = texnum(beta);
  ins_gamma = texnum(gamma);

  if ((exnum + 1) <= exmax)

    fprintf(FEX, "    \\text{%s)} & %s & %s & %s & %s \\\\[1ex]\n", (96 + exnum), ins_P, ins_Q, ins_R, ins_S);

  else

    fprintf(FEX, "    \\text{%s)} & %s & %s & %s & %s\n", (96 + exnum), ins_P, ins_Q, ins_R, ins_S);

  endif

  fprintf(FSL, "\\paragraph{Lösung %s)}\n", (96 + exnum));
  fprintf(FSL, "\\begin{equation*}\n");
  fprintf(FSL, "  g_1:f(x)=%s\n", polystr([m1, b1]));
  fprintf(FSL, "  \\qquad\n");
  fprintf(FSL, "  g_2:f(x)=%s\n", polystr([m2, b2]));
  fprintf(FSL, "\\end{equation*}\n");
  fprintf(FSL, "\n");
  fprintf(FSL, "\\begin{equation*}\n");
  fprintf(FSL, "  %s\n", ins_A);
  fprintf(FSL, "  \\qquad\n");
  fprintf(FSL, "  %s\n", ins_B);
  fprintf(FSL, "  \\qquad\n");
  fprintf(FSL, "  %s\n", ins_C);
  fprintf(FSL, "\\end{equation*}\n");
  fprintf(FSL, "\n");
  fprintf(FSL, "\\begin{equation*}\n");
  fprintf(FSL, "  U_D=%s\n", ins_u);
  fprintf(FSL, "  \\qquad\n");
  fprintf(FSL, "  A_D=%s\n", ins_f);
  fprintf(FSL, "\\end{equation*}\n");
  fprintf(FSL, "\n");
  fprintf(FSL, "\\begin{equation*}\n");
  fprintf(FSL, "  \\alpha=%s\n", ins_alpha);
  fprintf(FSL, "  \\qquad\n");
  fprintf(FSL, "  \\beta=%s\n", ins_beta);
  fprintf(FSL, "  \\qquad\n");
  fprintf(FSL, "  \\gamma=%s\n", ins_gamma);
  fprintf(FSL, "\\end{equation*}\n");
  fprintf(FSL, "\n");

  exnum += 1;

endwhile

fprintf(FEX, "  \\end{array}\n");
fprintf(FEX, "\\end{equation*}\n");

fclose(FEX);
fclose(FSL);
fclose(LOG);

