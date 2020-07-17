clear all;

addpath 'Octave/';

a      = 112.5;
b      = 62.5;
c      = 75;
eurqm  = 32;
h      = sqrt(b^2 - (a - c)^2);
kosten = (a + c) / 2 * h * eurqm;

ins_a      = sprintf("%.1f", a);
ins_b      = sprintf("%.1f", b);
ins_c      = sprintf("%d",   c);
ins_eurqm  = sprintf("%d",   eurqm);
ins_h      = sprintf("%d",   h);
ins_kosten = sprintf("%d",   kosten);

printf("\\begin{exercise}\n");
printf("      {ID-3b39ef2bf4c9a24096d1db3196d4dde89213f980}\n");
printf("      {Grundstück}\n");
printf("  \\ifproblem\\problem\n");
printf("    \\begin{minipage}[c]{0.38\\textwidth}\n");
printf("      \\centering\n");
printf("      \\begin{tikzpicture}[scale=0.32]\n");
printf("        \\coordinate (A) at ( 0.00, 0.00);\n");
printf("        \\coordinate (B) at (11.25, 0.00);\n");
printf("        \\coordinate (C) at ( 7.50, 7.29);\n");
printf("        \\coordinate (D) at ( 0.00, 7.29);\n");
printf("        \\draw[fill=black!15!white] (A) -- (B) -- (C) -- (D) -- cycle;\n");
printf("        \\path (A) -- node[below] {\\small\\simeter{%s}} (B);\n", ins_a);
printf("        \\path (C) -- node[above] {\\small\\simeter{%s}} (D);\n", ins_c);
printf("        \\path (B) -- node[shift=(27.5:3mm), rotate=-62.5] {\\small\\simeter{%s}} (C);\n", ins_b);
printf("      \\end{tikzpicture}\n");
printf("    \\end{minipage}\\hfill\n");
printf("    \\begin{minipage}[c]{0.6\\textwidth}\n");
printf("      Ein trapezförmiges Grundstück soll verkauft werden. Der Besitzer verlangt\n");
printf("      \\eur{%s} für einen Quadratmeter. Wie teuer ist das gesamte Grundstück?\n", ins_eurqm);
printf("    \\end{minipage}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Für dieses Grundstück müsste man \\eur{%s} bezahlen.\n", ins_kosten);
printf("  \\fi\n");
printf("\\end{exercise}\n");

