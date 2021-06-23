clear all;

addpath 'Octave/';

function A = flaeche(ab)

  a1 = ab(1);
  a2 = ab(2);
  a3 = ab(3);
  b1 = ab(4);
  b2 = ab(5);

  A = (b1 + b2) / 2 * a1 + ...
      (b1 + b2) / 2 * a2 + ...
       b1 * a3 / 2;

endfunction

function tex = zeile(ab)

  ins_a1 = sprintf("%d", ab(1));
  ins_a2 = sprintf("%d", ab(2));
  ins_a3 = sprintf("%d", ab(3));
  ins_b1 = sprintf("%d", ab(4));
  ins_b2 = sprintf("%d", ab(5));

  tex = sprintf("\\sicm{%s} & \\sicm{%s} & \\sicm{%s} & \\sicm{%s} & \\sicm{%s}", ...
          ins_a1,
          ins_a2,
          ins_a3,
          ins_b1,
          ins_b2);

endfunction

a = [2 2 6 4 2];
b = [3 3 4 4 2];
c = [2 3 5 8 4];

Aa = flaeche(a);
Ab = flaeche(b);
Ac = flaeche(c);

ins_Aa = sprintf("%d", Aa);
ins_Ab = sprintf("%d", Ab);
ins_Ac = sprintf("%d", Ac);

printf("\\begin{exercise}\n");
printf("      {ID-4a7c8962946e2dc887d2dc9cdf3d6c388927b2fb}\n");
printf("      {Pfeilspitze}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Berechne den Flächeninhalt der abgebildeten Figur.\\par\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}[scale=0.5]\n");
printf("        \\filldraw[fill=black!25!white, draw=black]\n");
printf("          (0, 0)   coordinate (A)\n");
printf("          -- (2, 1)   coordinate (B)\n");
printf("          -- (4, 0)   coordinate (C)\n");
printf("          -- (10, 2)  coordinate (D)\n");
printf("          -- (4, 4)   coordinate (E)\n");
printf("          -- (2, 3)   coordinate (F)\n");
printf("          -- (0, 4)   coordinate (G)\n");
printf("          -- cycle;\n");
printf("        %% Beschriftung (unten)\n");
printf("        \\draw[style=dotted] (A) -- ++(270:1) coordinate (H1);\n");
printf("        \\draw[style=dotted] (B) -- ++(270:2) coordinate (H2);\n");
printf("        \\draw[style=dotted] (C) -- ++(270:1) coordinate (H3);\n");
printf("        \\draw[style=dotted] (D) -- ++(270:3) coordinate (H4);\n");
printf("        \\draw[|<->|, >=latex] (H1) -- node[below]{$a_1$} (H2);\n");
printf("        \\draw[<->|,  >=latex] (H2) -- node[below]{$a_2$} (H3);\n");
printf("        \\draw[<->|,  >=latex] (H3) -- node[below]{$a_3$} (H4);\n");
printf("        %% Beschriftung (links)\n");
printf("        \\draw[style=dotted] (F) -- ++(180:3) coordinate (H1);\n");
printf("        \\draw[style=dotted] (B) -- ++(180:3) coordinate (H2);\n");
printf("        \\draw[style=dotted] (G) -- ++(180:2.5) coordinate (H3);\n");
printf("        \\draw[style=dotted] (A) -- ++(180:2.5) coordinate (H4);\n");
printf("        \\draw[|<->|, >=latex] (H1) -- node[left]{$b_2$} (H2);\n");
printf("        \\draw[|<->|, >=latex] (H3) -- node[left]{$b_1$} (H4);\n");
printf("        %% Tabelle\n");
printf("        \\node[right=8mm] at (D)\n");
printf("        {%%\n");
printf("          \\begin{minipage}{6.8cm}\n");
printf("            \\begin{tabular}{|c|c|c|c|c|c|}\n");
printf("              \\hline\n");
printf("                 & $a_1$ & $a_2$ & $a_3$ & $b_1$ & $b_2$ \\\\\n");
printf("              \\hline\n");
printf("              a) & %s \\\\\n", zeile(a));
printf("              \\hline\n");
printf("              b) & %s \\\\\n", zeile(b));
printf("              \\hline\n");
printf("              c) & %s \\\\\n", zeile(c));
printf("              \\hline\n");
printf("            \\end{tabular}%%\n");
printf("          \\end{minipage}%%\n");
printf("        };\n");
printf("      \\end{tikzpicture}%%\n");
printf("    \\end{center}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%  \\begingroup\n");
printf("  %%    \\dimen1=5cm%%\n");
printf("  %%    \\begin{minipage}{\\dimen1}%%\n");
printf("  %%      \\begin{tikzpicture}%%\n");
printf("  %%      \\end{tikzpicture}%%\n");
printf("  %%    \\end{minipage}%%\n");
printf("  %%    \\dimen2=\\linewidth%%\n");
printf("  %%    \\advance\\dimen2 by -\\dimen1%%\n");
printf("  %%    \\begin{minipage}{\\dimen2}%%\n");
printf("  %%      \\setlength{\\abovedisplayskip}{0pt}%%\n");
printf("  %%      \\begin{equation*}\n");
printf("  %%      \\end{equation*}\n");
printf("  %%    \\end{minipage}%%\n");
printf("  %%  \\endgroup\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    \\begin{equation*}\n");
printf("      \\text{a)~}A=\\sicmm{%s}\n", ins_Aa);
printf("      \\qquad\n");
printf("      \\text{b)~}A=\\sicmm{%s}\n", ins_Ab);
printf("      \\qquad\n");
printf("      \\text{c)~}A=\\sicmm{%s}\n", ins_Ac);
printf("    \\end{equation*}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

