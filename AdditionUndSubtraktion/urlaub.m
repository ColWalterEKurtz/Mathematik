clear all;

gesamt = 1240;
teil   = 758;
rest   = gesamt - teil;

ins_gesamt = sprintf("%d", gesamt);
ins_teil   = sprintf("%d", teil);
ins_rest   = sprintf("%d", rest);

printf("\\begin{exercise}\n");
printf("      {ID-c9ccada7a9062caed68d383cf7f05df091a73b18}\n");
printf("      {Urlaub}\n");
printf("  \\ifproblem\\problem\n");
printf("    Hausmeister Müller fährt in den Urlaub. Der Ferienort ist \\sikm{%s} von seinem\n", ins_gesamt);
printf("    Wohnort entfernt. Am ersten Tag fährt er \\sikm{%s}. Welche Strecke muss er noch\n", ins_teil);
printf("    fahren?\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Hausmeister Müller hat noch eine Strecke von \\sikm{%s} vor sich.\n", ins_rest);
printf("  \\fi\n");
printf("\\end{exercise}\n");

