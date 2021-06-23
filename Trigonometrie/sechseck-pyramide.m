clear all;

fmtstr = ["\
\\begin{exercise}{trigonometrie.sechseck.pyramide}{Sechseck-Pyramide}\n\
  \\ifproblem\\problem\\par\n\
    Die Grundfläche einer geraden Pyramide ist ein regelmäßiges\n\
    Sechseck mit der Seite \\SI{3}{\\centi\\metre}. Berechne das\n\
    Volumen, wenn\n\
    \\begin{enumerate}[a)]\n\
      \\item eine Seitenkante unter dem Winkel \\SI{68.5}{\\degree}\n\
      \\item eine Seitenfläche unter dem Winkel \\SI{70}{\\degree}\n\
    \\end{enumerate}\n\
    gegen die Grundfläche geneigt ist.\n\
  \\fi\n\
  %%\\ifoutline\\outline\\par\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\\par\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

