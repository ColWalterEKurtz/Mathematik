clear all;

addpath 'Octave/';

n = 56;
ab = 7;
bc = 5;

x = n / 7;
c = 4 * x - bc;
b = 2 * x + bc - ab;
a = 1 * x + ab;

ins_n  = sprintf("%d", n);
ins_ab = sprintf("%d", ab);
ins_bc = sprintf("%d", bc);
ins_x  = sprintf("%d", x);
ins_c  = sprintf("%d", c);
ins_b  = sprintf("%d", b);
ins_a  = sprintf("%d", a);


printf("\\begin{exercise}\n");
printf("      {ID-0993bc1925a2ffbaf3da35dd3cdd103b1c84913c}\n");
printf("      {Vögel}\n");
printf("  \\ifproblem\\problem\n");
printf("    Auf drei Bäumen sitzen insgesamt \\num{%s} Vögel. Nachdem vom ersten Baum \\num{%s} auf\n", ins_n, ins_ab);
printf("    den zweiten und vom zweiten \\num{%s} Vögel auf den dritten Baum geflogen waren,\n", ins_bc);
printf("    saßen nun auf dem zweiten Baum doppelt so viele Vögel wie auf dem ersten\n");
printf("    und auf dem dritten doppelt so viele Vögel wie auf dem zweiten Baum.\n");
printf("    Berechne, wie viele Vögel ursprünglich auf jedem der Bäume saßen.\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\n");
printf("    Nach den \\glqq Flugmanövern\\grqq{} der Vögel gilt folgende Gleichung:\n");
printf("    \\begin{equation*}\n");
printf("      x+2x+4x=\\num{%s}\n", ins_n);
printf("    \\end{equation*}\n");
printf("    Die Variable $x$ steht hierbei für die Anzahl der Vögel auf dem ersten Baum.\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Ursprünglich saßen auf dem ersten Baum \\num{%s},\n", ins_a);
printf("    auf dem zweiten Baum \\num{%s} und\n", ins_b);
printf("    auf dem dritten Baum \\num{%s} Vögel.\n", ins_c);
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

