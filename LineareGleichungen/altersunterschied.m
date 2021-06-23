clear all;

addpath 'Octave/';

% Alter des Vaters und des Sohnes (aktuell)
v = 38;
s = 11;

% Zeitspanne
x = v - 2 * s;

% formatierte Werte
ins_x = sprintf("%g", x);
ins_v = sprintf("%g", v);
ins_s = sprintf("%g", s);

printf("\\begin{exercise}\n");
printf("      {ID-46a2e7d9897f119c30eea2bc87171079a7e5647f}\n");
printf("      {Altersunterschied}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Ein Vater ist \\num{%s} Jahre alt, sein Sohn \\num{%s} Jahre. Nach wie vielen Jahren ist\n", ins_v, ins_s);
printf("    der Vater genau doppelt so alt wie der Sohn?\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\\par\n");
printf("    In folgender Gleichung steht der Parameter $v$ für das aktuelle Alter des\n");
printf("    Vaters und der Parameter $s$ für das aktuelle Alter des Sohnes. Die Variable\n");
printf("    $x$ steht für die Anzahl der Jahre, die vergehen müssen, bis der Vater genau\n");
printf("    doppelt so alt ist wie sein Sohn:\n");
printf("    \\begin{equation*}\n");
printf("      v+x=2\\cdot(s+x)\n");
printf("    \\end{equation*}\n");
printf("    Die Aufgabe besteht nun darin, die Gleichung nach $x$ aufzulösen.\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    In folgender Gleichung ist $x$ die gesuchte Größe, also muss die Gleichung\n");
printf("    nach $x$ aufgelöst werden:\n");
printf("    \\begin{alignat*}{3}\n");
printf("                     &\\quad &      v+x&=2\\cdot(s+x) & \\quad&                     \\\\\n");
printf("      \\Leftrightarrow&\\quad &      v+x&=2s+2x       & \\quad&\\vert-x\\quad\\vert-2s \\\\\n");
printf("      \\Leftrightarrow&\\quad &     v-2s&=x           & \\quad&\n");
printf("    \\intertext{Laut Aufgabenstellung gilt $v=\\num{%s}$ und $s=\\num{%s}$. Draus folgt:}\n", ins_v, ins_s);
printf("                     &\\quad & \\num{%s}&=x           & \\quad&\n", ins_x);
printf("    \\end{alignat*}\n");
printf("    Es müssen also \\num{%s} Jahre vergehen, bis der Vater genau doppelt so alt ist\n", ins_x);
printf("    wie sein Sohn.\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

