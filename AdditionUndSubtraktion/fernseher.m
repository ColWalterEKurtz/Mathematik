clear all;

preis   = 479;
gespart = 235;
rest    = preis - gespart;

ins_preis   = sprintf("%d", preis);
ins_gespart = sprintf("%d", gespart);
ins_rest    = sprintf("%d", rest);

printf("\\begin{exercise}\n");
printf("      {ID-caf72950f1893b9a4b75976c81912d1e67420f0a}\n");
printf("      {Fernseher}\n");
printf("  \\ifproblem\\problem\n");
printf("    \\xxa{} wünscht sich ein Fernseher für \\eur{%s}. Sie hat schon \\eur{%s} gespart.\n", ins_preis, ins_gespart);
printf("    Wie viel Geld fehlt noch zum Kauf des Fernsehers?\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    \\xxa{} fehlen noch \\eur{%s} zum Kauf des Fernsehers.\n", ins_rest);
printf("  \\fi\n");
printf("\\end{exercise}\n");

