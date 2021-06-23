clear all;

fmtstr = ["\
\\begin{exercise}{trigonometrie.seitenkanten}{Seitenkanten}\n\
  \\ifproblem\\problem\\par\n\
    Die Seitenkanten einer geraden Pyramide mit quadratischer\n\
    Grundfläche sind \\SI{1}{\\metre} lang. Berechne die\n\
    Neigungswinkel von Seitenkante und Seitenfläche gegen\n\
    die Grundfläche, sowie das Volumen der Pyramide, wenn\n\
    \\begin{enumerate}[a)]\n\
      \\item zwei gegenüberliegende\n\
      \\item zwei benachbarte\n\
    \\end{enumerate}\n\
    Seitenkanten den Winkel \\SI{30}{\\degree} einschließen.\n\
  \\fi\n\
  %%\\ifoutline\\outline\\par\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\\par\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

