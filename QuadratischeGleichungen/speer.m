clear all;

a  = -0.02;
b  =  0.8;
c  =  1.8;
p  =  b / a;
q  =  c / a;
x1 = -p/2 + sqrt((p/2)^2 - q);
x2 = -p/2 - sqrt((p/2)^2 - q);
xm = max(x1, x2);
xs = -b/(2*a);
ys = a*xs^2 + b*xs + c;

ins_a  = sprintf("%.2f", a);
ins_b  = sprintf("%.1f", b);
ins_c  = sprintf("%.1f", c);
ins_xm = sprintf("%.2f", xm);
ins_xs = sprintf("%.2f", xs);
ins_ys = sprintf("%.2f", ys);

printf("\\begin{exercise}\n");
printf("      {ID-1025b37f79d7ba6a6d8720f146482e3a42cddabc}\n");
printf("      {Speer}\n");
printf("  \\ifproblem\\problem\n");
printf("    Mithilfe der Funktion $h(x)=\\num{%s}x^{2}+\\num{%s}x+\\num{%s}$ kann die Flugkurve\n", ins_a, ins_b, ins_c);
printf("    eines Speers beschrieben werden ($x$ und $h(x)$ in $m$).\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Was bedeutet $h(0)$ im Anwendungskontext?\n");
printf("      \\item Wie weit fliegt der Speer?\n");
printf("      \\item Wie hoch ist der Speer am höchsten Punkt seiner Flugbahn?\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\setcounter{enumi}{1}\n");
printf("      \\item Gesucht ist die positive Nullstelle der Parabel. ($pq$-Formel)\n");
printf("      \\item Gesucht ist der Scheitelpunkt der Parabel. (Scheitelpunktform)\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item $h(0)$ ist die Höhe des Speeres in dem Moment, in dem der Sportler ihn loslässt.\n");
printf("      \\item Der Speer fliegt ca. \\simeter{%s} weit.\n", ins_xm);
printf("      \\item Nach ca. \\simeter{%s} erreicht der Speer eine maximale Höhe von ca. \\simeter{%s}.\n", ins_xs, ins_ys);
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

