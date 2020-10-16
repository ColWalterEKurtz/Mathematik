clear all;

addpath 'Octave/';

%%% NO CALCULATIONS YET %%%

printf("\\begin{exercise}\n");
printf("      {ID-5442ca44082f03531796efdd1b3f80a687e8e9aa}\n");
printf("      {Mathematiktest}\n");
printf("  \\ifproblem\\problem\n");
printf("    Die 16 Jungen und 14 Mädchen einer Schulklasse nehmen an einem\n");
printf("    Mathematiktest teil. 13 Jungen bestehen. Insgesamt bestehen 20\n");
printf("    Schülerinnen und Schüler den Test. Wie viele Mädchen bestehen den\n");
printf("    Test nicht?\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\n");
printf("    Die Angaben aus der Aufgabenstellung lassen sich z.\\,B. auf folgende\n");
printf("    Weise in einer Vierfeldertafel darstellen:\n");
printf("    \\begin{center}\n");
printf("      \\newcommand{\\attribApos}{Junge}%%\n");
printf("      \\newcommand{\\attribAneg}{Mädchen}%%\n");
printf("      \\newcommand{\\attribBpos}{bestanden}%%\n");
printf("      \\newcommand{\\attribBneg}{$\\overline{\\text{bestanden}}$}%%\n");
printf("      \\renewcommand{\\arraystretch}{1.25}%%\n");
printf("      \\begin{tabular}{|c||c|c||c|}\n");
printf("        \\hline\n");
printf("                    & \\attribApos & \\attribAneg & Summe \\\\\n");
printf("        \\hline\n");
printf("        \\hline\n");
printf("        \\attribBpos & 13          &             & 20    \\\\\n");
printf("        \\hline\n");
printf("        \\attribBneg &             &             &       \\\\\n");
printf("        \\hline\n");
printf("        \\hline\n");
printf("        Summe       & 16          & 14          &       \\\\\n");
printf("        \\hline\n");
printf("      \\end{tabular}%%\n");
printf("    \\end{center}\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Insgesamt bestehen 7 Mädchen den Mathematiktest nicht.\n");
printf("    \\begin{center}\n");
printf("      \\newcommand{\\attribApos}{Junge}%%\n");
printf("      \\newcommand{\\attribAneg}{Mädchen}%%\n");
printf("      \\newcommand{\\attribBpos}{bestanden}%%\n");
printf("      \\newcommand{\\attribBneg}{$\\overline{\\text{bestanden}}$}%%\n");
printf("      \\renewcommand{\\arraystretch}{1.25}%%\n");
printf("      \\begin{tabular}{|c||c|c||c|}\n");
printf("        \\hline\n");
printf("                    & \\attribApos & \\attribAneg & Summe \\\\\n");
printf("        \\hline\n");
printf("        \\hline\n");
printf("        \\attribBpos & 13          & 7           & 20    \\\\\n");
printf("        \\hline\n");
printf("        \\attribBneg & 3           & 7           & 10    \\\\\n");
printf("        \\hline\n");
printf("        \\hline\n");
printf("        Summe       & 16          & 14          & 30    \\\\\n");
printf("        \\hline\n");
printf("      \\end{tabular}%%\n");
printf("    \\end{center}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

