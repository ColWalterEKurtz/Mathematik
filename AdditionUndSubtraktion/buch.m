clear all;

gespart = 45;
preis   = 19;
rest    = gespart - preis;

ins_gespart = sprintf("%d", gespart);
ins_preis   = sprintf("%d", preis);
ins_rest    = sprintf("%d", rest);

printf("\\begin{exercise}\n");
printf("      {ID-2468468042a3177a0bf7c8f157985aeb0b421ddd}\n");
printf("      {Buch}\n");
printf("  \\ifproblem\\problem\n");
printf("    \\xxb{} hat \\eur{%s} gespart. Sie will sich ein Buch für \\eur{%s} kaufen.\n", ins_gespart, ins_preis);
printf("    Wie viel Geld besitzt sie danach noch?\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Nachdem sich \\xxb{} das Buch gekauft hat, besitzt sie noch \\eur{%s}.\n", ins_rest);
printf("  \\fi\n");
printf("\\end{exercise}\n");

