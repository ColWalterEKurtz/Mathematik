clear all;

addpath 'Octave/';

printf("\\begin{exercise}\n");
printf("      {ID-20bf24634ef73703f73f55c0ef923f095de91a3d}\n");
printf("      {Gleichfarbig}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    In einem Korb liegen 70 Kugeln. 10 sind rot, 20 sind grün, 30 sind blau\n");
printf("    und jeweils 5 sind weiß bzw. schwarz. \\xya{} darf mit geschlossenen Augen\n");
printf("    einige Kugeln nehmen. Wie viele Kugeln muss er mindestens nehmen, damit\n");
printf("    unter den gezogenen Kugeln \\emph{garantiert} 10 gleichfarbige sind?\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    \\xya{} muss mindestens 38 Kugeln nehmen, damit garantiert 10 gleichfarbige Kugeln\n");
printf("    dabei sind:\n");
printf("    \\begin{center}\n");
printf("      \\begin{tabular}{r|rrrrr}\n");
printf("          &  r &  g &  b &  w &  s \\\\\n");
printf("      \\hline\n");
printf("         1 &  1 &  2 &  3 &  4 &  5 \\\\\n");
printf("         2 &  6 &  7 &  8 &  9 & 10 \\\\\n");
printf("         3 & 11 & 12 & 13 & 14 & 15 \\\\\n");
printf("         4 & 16 & 17 & 18 & 19 & 20 \\\\\n");
printf("         5 & 21 & 22 & 23 & 24 & 25 \\\\\n");
printf("      \\hline\n");
printf("         6 & 26 & 27 & 28 &    &    \\\\\n");
printf("         7 & 29 & 30 & 31 &    &    \\\\\n");
printf("         8 & 32 & 33 & 34 &    &    \\\\\n");
printf("         9 & 35 & 36 & 37 &    &    \\\\\n");
printf("      \\hline\n");
printf("        10 & 38 &    &    &    &    \\\\\n");
printf("      \\hline\n");
printf("      \\end{tabular}\n");
printf("    \\end{center}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

