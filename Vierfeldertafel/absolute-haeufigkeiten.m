clear all;

addpath 'Octave/';

%%% NO CALCULATIONS YET %%%

printf("\\begin{exercise}\n");
printf("      {ID-c3f373b5c46d0a174a387efd7739c3553110a8bf}\n");
printf("      {Absolute Häufigkeiten}\n");
printf("  \\ifproblem\\problem\n");
printf("    Fülle mit den folgenden Informationen eine Vierfeldertafel mit\n");
printf("    absoluten Häufigkeiten aus:\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item In einer Schulklasse mit 29 Schülern haben 10 Schüler braune Haare\n");
printf("            und 7 Schüler grüne Augen. 5 Schüler haben grüne Augen und braune Haare.\n");
printf("      \\item In einer Firma arbeiten 45 Männer und 50 Frauen. 30 weibliche Mitarbeiter\n");
printf("            der Firma sind jünger als 50 Jahre und 27 Männer sind älter als 50 Jahre.\n");
printf("      \\item Von 25 Schülern, die am Sportunterricht teilnehmen, sind 15 weiblich.\n");
printf("            Genau 15 von diesen sind gut im Weitwurf.\n");
printf("            10 Mädchen sind nicht gut im Weitwurf.\n");
printf("      \\item Bei einer Versuchsreihe nehmen 47 Personen teil. 20 von diesen Personen\n");
printf("            wurden auf eine bestimmte Krankheit positiv getestet. 32 von den\n");
printf("            Testpersonen sind gegen diese Krankheit geimpft, wobei 15 Personen\n");
printf("            positiv getestet wurden und nicht dagegen geimpft sind.\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Merkmal 1: Haarfarbe, Merkmal 2: Augenfarbe\n");
printf("      \\item Merkmal 1: Geschlecht, Merkmal 2: Alter\n");
printf("        \\begin{center}\n");
printf("          \\begingroup\n");
printf("            \\newcommand{\\attribApos}{braun}%%\n");
printf("            \\newcommand{\\attribAneg}{$\\overline{\\text{braun}}$}%%\n");
printf("            \\newcommand{\\attribBpos}{grün}%%\n");
printf("            \\newcommand{\\attribBneg}{$\\overline{\\text{grün}}$}%%\n");
printf("            \\renewcommand{\\arraystretch}{1.25}%%\n");
printf("            \\begin{tabular}{|c||c|c||c|}\n");
printf("              \\hline\n");
printf("              a)          & \\attribApos & \\attribAneg & Summe \\\\\n");
printf("              \\hline\n");
printf("              \\hline\n");
printf("              \\attribBpos & 5           &             & 7     \\\\\n");
printf("              \\hline\n");
printf("              \\attribBneg &             &             &       \\\\\n");
printf("              \\hline\n");
printf("              \\hline\n");
printf("              Summe       & 10          &             & 29    \\\\\n");
printf("              \\hline\n");
printf("            \\end{tabular}%%\n");
printf("          \\endgroup\n");
printf("          \\hspace{3em}%%\n");
printf("          \\begingroup\n");
printf("            \\newcommand{\\attribApos}{Mann}%%\n");
printf("            \\newcommand{\\attribAneg}{Frau}%%\n");
printf("            \\newcommand{\\attribBpos}{jung}%%\n");
printf("            \\newcommand{\\attribBneg}{alt}%%\n");
printf("            \\renewcommand{\\arraystretch}{1.25}%%\n");
printf("            \\begin{tabular}{|c||c|c||c|}\n");
printf("              \\hline\n");
printf("              b)          & \\attribApos & \\attribAneg & Summe \\\\\n");
printf("              \\hline\n");
printf("              \\hline\n");
printf("              \\attribBpos &             & 30          &       \\\\\n");
printf("              \\hline\n");
printf("              \\attribBneg & 27          &             &       \\\\\n");
printf("              \\hline\n");
printf("              \\hline\n");
printf("              Summe       & 45          & 50          &       \\\\\n");
printf("              \\hline\n");
printf("            \\end{tabular}%%\n");
printf("          \\endgroup\n");
printf("        \\end{center}\\medskip\n");
printf("      \\item Merkmal 1: Geschlecht, Merkmal 2: Talent\n");
printf("      \\item Merkmal 1: Testergebnis, Merkmal 2: Impfstatus\n");
printf("        \\begin{center}\n");
printf("          \\begingroup\n");
printf("            \\newcommand{\\attribApos}{Junge}%%\n");
printf("            \\newcommand{\\attribAneg}{Mädchen}%%\n");
printf("            \\newcommand{\\attribBpos}{gut}%%\n");
printf("            \\newcommand{\\attribBneg}{$\\overline{\\text{gut}}$}%%\n");
printf("            \\renewcommand{\\arraystretch}{1.25}%%\n");
printf("            \\begin{tabular}{|c||c|c||c|}\n");
printf("              \\hline\n");
printf("              c)          & \\attribApos & \\attribAneg & Summe \\\\\n");
printf("              \\hline\n");
printf("              \\hline\n");
printf("              \\attribBpos &             &             & 15    \\\\\n");
printf("              \\hline\n");
printf("              \\attribBneg &             & 10          &       \\\\\n");
printf("              \\hline\n");
printf("              \\hline\n");
printf("              Summe       &             & 15          & 25    \\\\\n");
printf("              \\hline\n");
printf("            \\end{tabular}%%\n");
printf("          \\endgroup\n");
printf("          \\hspace{3em}%%\n");
printf("          \\begingroup\n");
printf("            \\newcommand{\\attribApos}{pos}%%\n");
printf("            \\newcommand{\\attribAneg}{neg}%%\n");
printf("            \\newcommand{\\attribBpos}{geimpft}%%\n");
printf("            \\newcommand{\\attribBneg}{$\\overline{\\text{geimpft}}$}%%\n");
printf("            \\renewcommand{\\arraystretch}{1.25}%%\n");
printf("            \\begin{tabular}{|c||c|c||c|}\n");
printf("              \\hline\n");
printf("              d)          & \\attribApos & \\attribAneg & Summe \\\\\n");
printf("              \\hline\n");
printf("              \\hline\n");
printf("              \\attribBpos &             &             & 32    \\\\\n");
printf("              \\hline\n");
printf("              \\attribBneg & 15          &             &       \\\\\n");
printf("              \\hline\n");
printf("              \\hline\n");
printf("              Summe       & 20          &             & 47    \\\\\n");
printf("              \\hline\n");
printf("            \\end{tabular}%%\n");
printf("          \\endgroup\n");
printf("        \\end{center}\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Merkmal 1: Haarfarbe, Merkmal 2: Augenfarbe\n");
printf("      \\item Merkmal 1: Geschlecht, Merkmal 2: Alter\n");
printf("        \\begin{center}\n");
printf("          \\begingroup\n");
printf("            \\newcommand{\\attribApos}{braun}%%\n");
printf("            \\newcommand{\\attribAneg}{$\\overline{\\text{braun}}$}%%\n");
printf("            \\newcommand{\\attribBpos}{grün}%%\n");
printf("            \\newcommand{\\attribBneg}{$\\overline{\\text{grün}}$}%%\n");
printf("            \\renewcommand{\\arraystretch}{1.25}%%\n");
printf("            \\begin{tabular}{|c||c|c||c|}\n");
printf("              \\hline\n");
printf("              a)          & \\attribApos & \\attribAneg & Summe \\\\\n");
printf("              \\hline\n");
printf("              \\hline\n");
printf("              \\attribBpos & 5           & 2           & 7     \\\\\n");
printf("              \\hline\n");
printf("              \\attribBneg & 5           & 17          & 22    \\\\\n");
printf("              \\hline\n");
printf("              \\hline\n");
printf("              Summe       & 10          & 19          & 29    \\\\\n");
printf("              \\hline\n");
printf("            \\end{tabular}%%\n");
printf("          \\endgroup\n");
printf("          \\hspace{3em}%%\n");
printf("          \\begingroup\n");
printf("            \\newcommand{\\attribApos}{Mann}%%\n");
printf("            \\newcommand{\\attribAneg}{Frau}%%\n");
printf("            \\newcommand{\\attribBpos}{jung}%%\n");
printf("            \\newcommand{\\attribBneg}{alt}%%\n");
printf("            \\renewcommand{\\arraystretch}{1.25}%%\n");
printf("            \\begin{tabular}{|c||c|c||c|}\n");
printf("              \\hline\n");
printf("              b)          & \\attribApos & \\attribAneg & Summe \\\\\n");
printf("              \\hline\n");
printf("              \\hline\n");
printf("              \\attribBpos & 18          & 30          & 48    \\\\\n");
printf("              \\hline\n");
printf("              \\attribBneg & 27          & 20          & 47    \\\\\n");
printf("              \\hline\n");
printf("              \\hline\n");
printf("              Summe       & 45          & 50          & 95    \\\\\n");
printf("              \\hline\n");
printf("            \\end{tabular}%%\n");
printf("          \\endgroup\n");
printf("        \\end{center}\\medskip\n");
printf("      \\item Merkmal 1: Geschlecht, Merkmal 2: Talent\n");
printf("      \\item Merkmal 1: Testergebnis, Merkmal 2: Impfstatus\n");
printf("        \\begin{center}\n");
printf("          \\begingroup\n");
printf("            \\newcommand{\\attribApos}{Junge}%%\n");
printf("            \\newcommand{\\attribAneg}{Mädchen}%%\n");
printf("            \\newcommand{\\attribBpos}{gut}%%\n");
printf("            \\newcommand{\\attribBneg}{$\\overline{\\text{gut}}$}%%\n");
printf("            \\renewcommand{\\arraystretch}{1.25}%%\n");
printf("            \\begin{tabular}{|c||c|c||c|}\n");
printf("              \\hline\n");
printf("              c)          & \\attribApos & \\attribAneg & Summe \\\\\n");
printf("              \\hline\n");
printf("              \\hline\n");
printf("              \\attribBpos & 10          & 5           & 15    \\\\\n");
printf("              \\hline\n");
printf("              \\attribBneg & 0           & 10          & 10    \\\\\n");
printf("              \\hline\n");
printf("              \\hline\n");
printf("              Summe       & 10          & 15          & 25    \\\\\n");
printf("              \\hline\n");
printf("            \\end{tabular}%%\n");
printf("          \\endgroup\n");
printf("          \\hspace{3em}%%\n");
printf("          \\begingroup\n");
printf("            \\newcommand{\\attribApos}{pos}%%\n");
printf("            \\newcommand{\\attribAneg}{neg}%%\n");
printf("            \\newcommand{\\attribBpos}{geimpft}%%\n");
printf("            \\newcommand{\\attribBneg}{$\\overline{\\text{geimpft}}$}%%\n");
printf("            \\renewcommand{\\arraystretch}{1.25}%%\n");
printf("            \\begin{tabular}{|c||c|c||c|}\n");
printf("              \\hline\n");
printf("              d)          & \\attribApos & \\attribAneg & Summe \\\\\n");
printf("              \\hline\n");
printf("              \\hline\n");
printf("              \\attribBpos & 5           & 27          & 32    \\\\\n");
printf("              \\hline\n");
printf("              \\attribBneg & 15          & 0           & 15    \\\\\n");
printf("              \\hline\n");
printf("              \\hline\n");
printf("              Summe       & 20          & 27          & 47    \\\\\n");
printf("              \\hline\n");
printf("            \\end{tabular}%%\n");
printf("          \\endgroup\n");
printf("        \\end{center}\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

