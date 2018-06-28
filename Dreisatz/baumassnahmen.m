clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.baumassnahme}{Baumaßnahme}\n\
  \\ifproblem\\problem\n\
    Eine Baumaßnahme dauert 4 Tage, wenn 6 Arbeiter täglich 8 Stunden arbeiten.\n\
    Wie lange brauchen 8 Arbeiter für diese Arbeit wenn sie täglich 9 Stunden\n\
    arbeiten?\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

