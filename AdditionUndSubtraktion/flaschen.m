clear all;

lieferung = 260;
verteilt  = 197;
rest      = lieferung - verteilt;

ins_lieferung = sprintf("%d", lieferung);
ins_verteilt  = sprintf("%d", verteilt);
ins_rest      = sprintf("%d", rest);

printf("\\begin{exercise}\n");
printf("      {ID-50498f39ce86d9a4a043b8497ac9e4a2312c90a5}\n");
printf("      {Flaschen}\n");
printf("  \\ifproblem\\problem\n");
printf("    Jeden Morgen erhält Hausmeister Müller eine Lieferung von \\num{%s} Flaschen\n", ins_lieferung);
printf("    Milch und Kakao. Er hat schon \\num{%s} Flaschen an die Schülerinnen und Schüler\n", ins_verteilt);
printf("    verteilt. Wie viele Flaschen hat er jetzt noch?\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Hausmeister Müller hat jetzt noch \\num{%s} Flaschen übrig.\n", ins_rest);
printf("  \\fi\n");
printf("\\end{exercise}\n");

