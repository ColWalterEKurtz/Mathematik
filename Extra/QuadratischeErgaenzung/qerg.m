# Speicher freigeben
clear all;

# Ergebnismatrix (a, b, c, d, e, n1, n2)
M = zeros(1, 7);

# Zeile in der Ergebnismatrix
rowindex = 1;

# Ergebnismatrix berechnen
for a = -5:5

  if (a == 0) continue endif

  for n1 = -9:9

    for delta = -20:2:20

      if (delta == 0) continue endif

      n2 = n1 + delta;

      b =  -a * (n1 + n2);
      c =   a *  n1 * n2;
      d = 0.5 * (n1 + n2);
      e =   a * (n1 * n2 - d * d);

      M(rowindex, 1) = a;
      M(rowindex, 2) = b;
      M(rowindex, 3) = c;
      M(rowindex, 4) = d;
      M(rowindex, 5) = e;

      if (n1 < n2)

        M(rowindex, 6) = n1;
        M(rowindex, 7) = n2;

      else

        M(rowindex, 6) = n2;
        M(rowindex, 7) = n1;

      endif

      rowindex += 1;

    endfor

  endfor

endfor

printf("%% Vorlage und globale Optionen\n");
printf("\\documentclass\n");
printf("[\n");
printf("  draft    = true,\n");
printf("  fontsize = 11pt,\n");
printf("  parskip  = half-,\n");
printf("  BCOR     = 0pt,\n");
printf("  DIV      = 11\n");
printf("]\n");
printf("{scrartcl}\n");
printf("\n");
printf("%% Standardpakete\n");
printf("\\usepackage{fixltx2e}\n");
printf("\\usepackage[utf8]{inputenc}\n");
printf("\\usepackage[T1]{fontenc}\n");
printf("\\usepackage{lmodern}\n");
printf("\\usepackage[ngerman]{babel}\n");
printf("%% Zusatzpakete\n");
printf("\\usepackage{amsmath}\n");
printf("\\usepackage{amssymb}\n");
printf("\n");
printf("%% ------------------------------------------------------------------------------\n");
printf("\\begin{document}\n");
printf("%% ------------------------------------------------------------------------------\n");
printf("\n");

# Anzahl an Arbeitsblaetter
worksheets = 10;

# Anzahl an Aufgaben pro Arbeitsblatt
n = 28;

# Arbeitsblaetter erstellen
for ws = 1:worksheets

  printf("\\clearpage\n");
  printf("%% -------------------------------\n");
  printf("\\section*{Quadratische Ergänzung}\n");
  printf("%% -------------------------------\n");
  printf("\\paragraph{Bestimme den Scheitelpunkt und die Nullstellen der Parabel}\n");
  printf("\\begin{alignat*}{5}\n");

  # n verschiedene Aufgaben auswaehlen
  selection = randperm(size(M, 1), n);

  for i = 1:n

    # Koeffizienten
    a = M(selection(i), 1);
    b = M(selection(i), 2);
    c = M(selection(i), 3);

    # Scheitelpunkt
    d = M(selection(i), 4);
    e = M(selection(i), 5);

    # Nullstellen
    n1 = M(selection(i), 6);
    n2 = M(selection(i), 7);

    # Terme
    ta = sprintf("%ix^{2}", a);
    tb = sprintf("%+ix",    b);
    tc = sprintf("%+i",     c);

    if (a == -1) ta = "-x^{2}"; endif
    if (b == -1) tb = "-x";     endif

    if (b == 0) tb = ""; endif
    if (c == 0) tc = ""; endif

    if (a == 1) ta = "x^{2}"; endif
    if (b == 1) tb = "x";     endif

    # Funktion
    printf("  f(x)&=%s%s%s \\qquad&\\qquad \\quad&\\text{SP}(%i\\mid%i) \\quad&\\quad \\text{NST}&=\\{%i;%i\\}", ta, tb, tc, d, e, n1, n2);

    # Zeilenende
    if (i < n)

      printf(" \\\\[0.5ex]\n");

    else

      printf("\n");

    endif

  endfor

  printf("\\end{alignat*}\n");
  printf("\n");

endfor

printf("%% ------------------------------------------------------------------------------\n");
printf("\\end{document}\n");
printf("%% ------------------------------------------------------------------------------\n");
printf("\n");

