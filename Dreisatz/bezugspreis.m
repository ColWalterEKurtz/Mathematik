clear all;

% numerische Werte
kg     = 805;  % die gegebene Menge in kg
euro   = 4830; % der gegebene Wert in Euro
menge  = 245;  % zu berechnende Menge in kg
kosten = euro / kg * menge;

% formatierte Werte
ins_kg     = sprintf("%d", kg);
ins_euro   = sprintf("%d", euro);
ins_menge  = sprintf("%d", menge);
ins_kosten = sprintf("%d", kosten);

printf("\\begin{exercise}\n");
printf("      {ID-f7c0bd44fec2f5aec245c1cd1083aa6f64f1f661}\n");
printf("      {Bezugspreis}\n");
printf("  \\ifproblem\\problem\n");
printf("    Ein Großhändler bezieht \\sikg{%s} einer Ware für insgesamt \\eur{%s}.\n", ins_kg, ins_euro);
printf("    Ermittle den Bezugspreis für \\sikg{%s} der Ware.\n", ins_menge);
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Für \\sikg{%s} dieser Ware muss der Händler \\eur{%s} zahlen.\n", ins_menge, ins_kosten);
printf("  \\fi\n");
printf("\\end{exercise}\n");

