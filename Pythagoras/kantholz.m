clear all;

addpath 'Octave/';

d = 15;
a = d / sqrt(2);

ins_d = sprintf("%d",   d);
ins_a = sprintf("%.1f", a);

printf("\\begin{exercise}\n");
printf("      {ID-3f696709e40b14597da37cc9f5edadfc44749224}\n");
printf("      {Kantholz}\n");
printf("  \\ifproblem\\problem\n");
printf("    Aus einem Baumstamm mit \\sicm{%s} Durchmesser soll ein quadratisches Kantholz\n", ins_d);
printf("    mit möglichst großer Grundfläche herausgesägt werden. Wie lang sind die\n");
printf("    Seiten der Grundfläche?\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\n");
printf("    In einem gleichschenkligen und rechtwinkligen Dreieck $ABC$ mit\n");
printf("    Hypothenuse $c$ gilt:\n");
printf("    \\begin{equation*}\n");
printf("      2a^2=2b^2=c^2\n");
printf("      \\quad\\Rightarrow\\quad\n");
printf("      a=b=\\frac{c}{\\sqrt{2}}\n");
printf("    \\end{equation*}\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Die Seiten der quadratischen Grundfläche können bis zu\n");
printf("    \\sicm{%s} lang werden.\n", ins_a);
printf("  \\fi\n");
printf("\\end{exercise}\n");

