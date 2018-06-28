clear all;

beginn = 53;
ende   = 136;
seiten = ende - beginn + 1;

ins_beginn = sprintf("%d", beginn);
ins_ende   = sprintf("%d", ende);
ins_seiten = sprintf("%d", seiten);

printf("\\begin{exercise}\n");
printf("      {ID-90dc038cce8d557945de91bcb7a8e6b24fbc9983}\n");
printf("      {Kapitel}\n");
printf("  \\ifproblem\\problem\n");
printf("    In einem Buch beginnt ein Kapitel auf Seite \\num{%s} und endet auf Seite \\num{%s}.\n", ins_beginn, ins_ende);
printf("    Wie viele Seiten hat das Kapitel?\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\n");
printf("    Aus wie vielen Seiten besteht ein Kapitel, das auf derselben Seite beginnt und endet?\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Das Kapitel besteht aus \\num{%s} Seiten.\n", ins_seiten);
printf("  \\fi\n");
printf("\\end{exercise}\n");

