clear all;

fmtstr = ["\
\\begin{exercise}{trigonometrie.quader}{Quader}\n\
  \\ifproblem\\problem\n\
    Länge, Breite und Höhe eines Quaders verhalten sich wie $3:2:1$.\n\
    Berechne den Neigungswinkel der Raumdiagonalen gegen die Grundfläche.\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

