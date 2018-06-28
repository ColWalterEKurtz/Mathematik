clear all;

fmtstr = ["\
\\begin{exercise}{trigonometrie.volumen}{Volumen}\n\
  \\ifproblem\\problem\n\
    Die Grundfläche einer geraden Pyramide ist ein Quadrat\n\
    mit der Seite \\SI{4}{\\centi\\metre}. Berechne das Volumen\n\
    der Pyramide, wenn\n\
    \\begin{enumerate}[a)]\n\
      \\item eine Seitenkante\n\
      \\item eine Seitenfläche\n\
    \\end{enumerate}\n\
    unter einem Winkel von \\SI{75}{\\degree} gegen die Grundfläche\n\
    geneigt ist.\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

