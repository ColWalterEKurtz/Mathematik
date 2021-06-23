clear all;

fmtstr = ["\
\\begin{exercise}{trigonometrie.quader}{Quader}\n\
  \\ifproblem\\problem\\par\n\
    Länge, Breite und Höhe eines Quaders verhalten sich wie $3:2:1$.\n\
    Berechne den Neigungswinkel der Raumdiagonalen gegen die Grundfläche.\n\
  \\fi\n\
  %%\\ifoutline\\outline\\par\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\\par\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

