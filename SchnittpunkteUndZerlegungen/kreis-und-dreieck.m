clear all;

addpath 'Octave/';

printf("\\begin{exercise}\n");
printf("      {ID-ceaa6860f9dc70886b1263597f896c56c2e89ceb}\n");
printf("      {Kreis und Dreieck}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    \\begin{minipage}{0.75\\textwidth}\n");
printf("      Ein Kreis und ein Dreieck können einander auf verschiedene Arten\n");
printf("      schneiden. Im Folgenden sollen immer Punkte betrachtet werden, wo Kreis\n");
printf("      und Dreieck einander richtig schneiden und nicht nur berühren; in der\n");
printf("      Abbildung schneidet der Kreis das Dreieck zweimal und einmal berührt\n");
printf("      er das Dreieck.\n");
printf("    \\end{minipage}\\hfill\n");
printf("    \\begin{minipage}{0.24\\textwidth}\n");
printf("      \\centering\n");
printf("      \\begin{tikzpicture}\n");
printf("        \\draw (0, 0) -- (0:3cm) -- (60:3cm) -- cycle;\n");
printf("        \\draw (2, 1) circle (1cm);\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{minipage}\\par\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Zeichne einen Kreis und ein Dreieck, die einander genau zweimal\n");
printf("            schneiden und zwar so, dass die beiden Schnittpunkte auf derselben\n");
printf("            Dreiecksseite liegen.\n");
printf("      \\item Zeichne einen Kreis und ein Dreieck, die einander genau zweimal\n");
printf("            schneiden und zwar so, dass die beiden Schnittpunkte auf verschiedenen\n");
printf("            Dreiecksseiten liegen.\n");
printf("      \\item Zeichne einen Kreis und ein Dreieck, die einander genau viermal\n");
printf("            schneiden und zwar so, dass eine der Dreiecksseiten keinen Schnittpunkt\n");
printf("            aufweist.\n");
printf("      \\item Zeichne einen Kreis und ein Dreieck, die einander genau viermal\n");
printf("            schneiden und zwar so, dass alle Dreiecksseiten vom Kreis geschnitten\n");
printf("            werden.\n");
printf("      \\item Zeichne einen Kreis und ein Dreieck, die einander genau sechsmal\n");
printf("            schneiden.\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  %%\\ifoutcome\\outcome\\par\n");
printf("  %%\\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

