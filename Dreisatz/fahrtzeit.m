clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.fahrtzeit}{Fahrtzeit}\n\
  \\ifproblem\\problem\n\
    Ein Auto braucht für eine Strecke 6 Stunden, wenn es mit \\sikmh{45} fährt.\n\
    In welcher Zeit wird der gleiche Weg bei \\sikmh{80} Geschwindigkeit zurücklegt?\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

