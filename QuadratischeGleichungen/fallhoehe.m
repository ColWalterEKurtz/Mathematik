clear all;

addpath 'Octave/';

t  = 2;
h  = 45;
bh = 5 * t^2;
ct = sqrt(h / 5);

ts  = myn2s(t,  0,0,0,0,1);
hs  = myn2s(h,  0,0,0,0,1);
bhs = myn2s(bh, 0,0,0,0,1);
cts = myn2s(ct, 2,0,0,0,1);

hsd  = sprintf("\\SI{%s}{\\metre}", myn2s(h,  0,0,0,0,0));
bhsd = sprintf("\\SI{%s}{\\metre}", myn2s(bh, 0,0,0,0,0));

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
printf("            von %s Sekunden. Wie hoch ist die Klippe ungefähr?\n", ts);
printf("      \\item Eine andere Klippe soll laut Reiseführer %s hoch sein.\n", hsd);
printf("            Wie lange müsste ein fallengelassener Stein fliegen?\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Mit folgender Funktionsgleichung kann man die Höhe der Klippe\n");
printf("            bestimmen:\n");
printf("            \\begin{equation*}\n");
printf("              h(t)=5t^2\n");
printf("            \\end{equation*}\n");
printf("      \\item Die Höhe der Klippe erhält man, wenn man \\num{2} in die Funktion aus a)\n");
printf("            einsetzt:\n");
printf("            \\begin{equation*}\n");
printf("              h(%s)=5\\cdot%s^2=%s\n", ts, ts, bhs);
printf("            \\end{equation*}\n");
printf("            Die Klippe ist also etwa %s hoch.\n", bhsd);
printf("      \\item Zunächst bietet es sich an, die\n");
printf("            Gleichung nach der gesuchten Größe\n");
printf("            aufzulösen:\n");
printf("            \\begin{equation*}\n");
printf("              h(t)=5t^2\\quad\\Rightarrow\\quad t=\\sqrt{\\frac{h(t)}{5}}\n");
printf("            \\end{equation*}\n");
printf("            Das Einsetzen der gegebenen Höhe $h(t)=%s$\n", hsd);
printf("            liefert dann die zugehörige Fallzeit:\n");
printf("            \\begin{equation*}\n");
printf("              t=\\sqrt{\\frac{%s}{5}}=%s\n", hs, cts);
printf("            \\end{equation*}\n");
printf("            Der Stein würde also etwa %s Sekunden lang fallen.\n", cts);
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

