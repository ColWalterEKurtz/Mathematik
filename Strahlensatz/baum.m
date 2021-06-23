clear all;

addpath 'Octave/';

stabs = 1.56;
stabh = 1.3;
baums = 12.72;
baumh = stabh / stabs * baums;

ins_stabs = sprintf("%.2f", stabs);
ins_stabh = sprintf("%.2f", stabh);
ins_baums = sprintf("%.2f", baums);
ins_baumh = sprintf("%.2f", baumh);

printf("\\begin{exercise}\n");
printf("      {ID-1116c83629a774b42c5ac4f02220e3b1e2099eef}\n");
printf("      {Baum}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Der Schatten eines \\simeter{%s} hohen senkrecht aufgestellten Stabes ist\n", ins_stabh);
printf("    \\simeter{%s} lang. Ein Baum wirft zur selben Zeit einen \\simeter{%s}\n", ins_stabs, ins_baums);
printf("    langen Schatten. Wie hoch ist der Baum?\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    Der Baum ist \\simeter{%s} hoch.\n", ins_baumh);
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

