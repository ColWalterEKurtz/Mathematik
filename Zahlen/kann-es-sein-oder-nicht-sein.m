clear all;

printf("\\begin{exercise}\n");
printf("      {ID-c738c39d6d000b75fd00deb7f5a0ac183f4381a8}\n");
printf("      {Kann es sein, oder nicht sein?}\n");
printf("  \\ifproblem\\problem\n");
printf("    Gibt es eine natürliche Zahl $n>1$, bei der die Rechnung $n^{4}+4$ eine\n");
printf("    Primzahl als Ergebnis hat?\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\n");
printf("    Ergänze den Term $n^{4}+4$ zu einem vollständigen Binom:\n");
printf("    \\begin{equation*}\n");
printf("      n^{4}+4=n^{4}+4n^{2}+4-4n^{2}\n");
printf("    \\end{equation*}\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Wir zeigen, dass die Summe $n^{4}+4$ immer als Produkt aus\n");
printf("    zwei verschiedenen Faktoren geschrieben werden kann, von denen\n");
printf("    wegen $n>1$ keiner den Wert 1 besitzt:\n");
printf("    \\begin{equation*}\n");
printf("      \\begin{split}\n");
printf("        n^{4}+4&=n^{4}+4n^{2}+4-4n^{2}\\\\\n");
printf("               &=\\left(n^{2}+2\\right)^{2}-4n^{2}\\\\\n");
printf("               &=\\left(n^{2}+2+2n\\right)\\left(n^{2}+2-2n\\right)\n");
printf("      \\end{split}\n");
printf("    \\end{equation*}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

