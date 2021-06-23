clear all;

addpath 'Octave/';

zeit   = 2;
hoehe  = 32;
klippe = 5 * zeit^2;
dauer  = sqrt(hoehe / 5);

ins_zeit   = sprintf("%g", zeit);
ins_hoehe  = sprintf("%g", hoehe);
ins_klippe = sprintf("%g", klippe);
ins_dauer  = sprintf("%.1f", dauer);

printf("\\begin{exercise}\n");
printf("      {ID-e063e9b4f683984a9083d9c4e7d63ec894b533a6}\n");
printf("      {Fallhöhe}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    \\xya{} und \\xyb{} stehen auf einer Klippe in Australien. Beide schätzen\n");
printf("    die Höhe der Klippe. \\xya{} erinnert sich, dass sich die Höhe $h$ bestimmen\n");
printf("    lässt, indem man einen Stein fallen lässt und die Fallzeit $t$ misst. Die\n");
printf("    Fallhöhe des Steins in Metern entspricht dann etwa fünfmal der Fallzeit in\n");
printf("    Sekunden zum Quadrat.\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Stelle eine Funktionsgleichung auf, mit der man die Höhe der Klippe\n");
printf("            bestimmen kann.\n");
printf("      \\item \\xya{} lässt einen Stein fallen und \\xyb{} misst eine Fallzeit\n");
printf("            von \\num{%s} Sekunden. Wie hoch ist die Klippe ungefähr?\n", ins_zeit);
printf("      \\item Eine andere Klippe soll laut Reiseführer \\simeter{%s} hoch sein.\n", ins_hoehe);
printf("            Wie lange müsste ein fallengelassener Stein fliegen?\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Mit folgender Funktionsgleichung kann man die Höhe der Klippe\n");
printf("            bestimmen:\n");
printf("            \\begin{equation*}\n");
printf("              h(t)=5t^2\n");
printf("            \\end{equation*}\n");
printf("      \\item Die Höhe der Klippe erhält man, wenn man \\num{%s} in die Funktion aus a)\n", ins_zeit);
printf("            einsetzt:\n");
printf("            \\begin{equation*}\n");
printf("              h(\\num{%s})=5\\cdot\\num{%s}^2=\\num{%s}\n", ins_zeit, ins_zeit, ins_klippe);
printf("            \\end{equation*}\n");
printf("            Die Klippe ist also etwa \\simeter{%s} hoch.\n", ins_klippe);
printf("      \\item Zunächst muss die Gleichung nach $t$ aufgelöst werden:\n");
printf("            \\begin{equation*}\n");
printf("              h(t)=5t^2\\quad\\Rightarrow\\quad t=\\sqrt{\\frac{h(t)}{5}}\n");
printf("            \\end{equation*}\n");
printf("            Bei einer Höhe $h(t)=\\simeter{%s}$ würde die Fallzeit\n", ins_hoehe);
printf("            des Steins also etwa \\sisec{%s} betragen.\n", ins_dauer);
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

