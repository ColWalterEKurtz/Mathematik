clear all;

addpath 'Octave/';

% a) und b)
spannweite     = 223; % m
hoehe          = 2;   % m
weniger        = 10;  % cm
ins_spannweite = sprintf("%d", spannweite);
ins_hoehe      = sprintf("%d", hoehe);
ins_weniger    = sprintf("%d", weniger);

% a)
schritte       = 1.2;
a              = hoehe / (schritte * (schritte - spannweite));
b              = -spannweite * a;
c              = 0;
sx             = spannweite / 2;
sya            = a * sx^2 + b * sx + c;
ins_a_schritte = sprintf("%g", schritte);
ins_a_a        = sprintf("%.4f", a);
ins_a_b        = sprintf("%.4f", b);
ins_a_sy       = sprintf("%.2f", sya);
ins_a_sy_rnd   = sprintf("%.1f", sya);

% b)
schritte       = schritte - (weniger / 100);
a              = hoehe / (schritte * (schritte - spannweite));
b              = -spannweite * a;
c              = 0;
sx             = spannweite / 2;
syb            = a * sx^2 + b * sx + c;
ins_b_schritte = sprintf("%g", schritte);
ins_b_a        = sprintf("%.4f", a);
ins_b_b        = sprintf("%.4f", b);
ins_b_sy       = sprintf("%.2f", syb);
ins_b_sy_rnd   = sprintf("%.1f", syb);

% relativer Unterschied
pc = (syb / sya - 1) * 100;
ins_pc = sprintf("%.0f", pc);

printf("\\begin{exercise}\n");
printf("      {ID-e008dd06c5f6b097726911fa560770bd99f8b5f4}\n");
printf("      {Bogenbrücke}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Eine parabelförmige Bogenbrücke hat eine Spannweite von \\simeter{%s}.\n", ins_spannweite);
printf("    Ein Wanderer will die Höhe der Brücke bestimmen. Im Abstand von\n");
printf("    \\simeter{%s} zum Fußpunkt der Brücke (durch Fußschrittmessung) ist der\n", ins_a_schritte);
printf("    Brückenbogen \\simeter{%s} hoch (durch Vergleich mit der Körpergröße).\n", ins_hoehe);
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Welche Höhe hat der Brückenbogen an seiner höchsten Stelle?\n");
printf("      \\item Um wie viel Prozent ändert sich die ermittelte Brückenhöhe, wenn\n");
printf("            der Wanderer bei der Fußschrittmessung \\sicm{%s} weniger gemessen\n", ins_weniger);
printf("            hätte?\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\\par\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Gesucht ist die $y$-Koordinate des Scheitelpunkts einer nach\n");
printf("            unten geöffneten Parabel, deren Nullstellen bei \\num{0} und \\num{%s}\n", ins_spannweite);
printf("            liegen, und die durch den Punkt $(\\num{%s}\\mid\\num{%s})$ verläuft.\n", ins_a_schritte, ins_hoehe);
printf("            Bekanntlich liegt die $x$-Koordinate des Scheitelpunkts genau in\n");
printf("            der Mitte zwischen den beiden Nullstellen.\n");
printf("      \\item Wie hoch wäre der Brückenbogen, wenn die Parabel aus a) durch den Punkt\n");
printf("            $(\\num{%s}\\mid\\num{%s})$ verliefe?\n", ins_b_schritte, ins_hoehe);
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\newcommand{\\vstrut}{\\rule[-2.75ex]{0pt}{7ex}}%%\n");
printf("      \\setlength{\\abovedisplayskip}{0pt}%%\n");
printf("      \\item \\begin{equation*}\n");
printf("                \\begin{split}\n");
printf("                                            f(0)=f(\\num{%s})=0 \\quad&\\vstrut\\Rightarrow\\quad f(x)=ax(x-\\num{%s})  \\\\\n", ins_spannweite, ins_spannweite);
printf("                                           f(\\num{%s})=\\num{%s} \\quad&\\vstrut\\Rightarrow\\quad a\\approx\\num{%s} \\\\\n", ins_a_schritte, ins_hoehe, ins_a_a);
printf("                f(x)=\\num{%s}\\cdot x^2+\\num{%s}\\cdot x \\quad&\\vstrut\\Rightarrow\\quad f\\left(\\frac{%s}{2}\\right)\\approx\\num{%s}\n", ins_a_a, ins_a_b, ins_spannweite, ins_a_sy);
printf("              \\end{split}\n");
printf("            \\end{equation*}\n");
printf("            Der Brückenbogen ist an seiner höchsten Stelle also etwa \\simeter{%s} hoch.\n", ins_a_sy_rnd);
printf("\n");
printf("      \\item \\begin{equation*}\n");
printf("                \\begin{split}\n");
printf("                                            f(0)=f(\\num{%s})=0 \\quad&\\vstrut\\Rightarrow\\quad f(x)=ax(\\num{%s})    \\\\\n", ins_spannweite, ins_spannweite);
printf("                                           f(\\num{%s})=\\num{%s} \\quad&\\vstrut\\Rightarrow\\quad a\\approx\\num{%s} \\\\\n", ins_b_schritte, ins_hoehe, ins_b_a);
printf("                f(x)=\\num{%s}\\cdot x^2+\\num{%s}\\cdot x \\quad&\\vstrut\\Rightarrow\\quad f\\left(\\frac{%s}{2}\\right)\\approx\\num{%s}\n", ins_b_a, ins_b_b, ins_spannweite, ins_b_sy);
printf("              \\end{split}\n");
printf("            \\end{equation*}\n");
printf("            Der Brückenbogen wäre bei dieser Messung an seiner höchsten Stelle\n");
printf("            etwa \\simeter{%s} hoch und relativ gesehen etwa \\pc{%s} höher als bei\n", ins_b_sy_rnd, ins_pc);
printf("            der ersten Messung.\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

