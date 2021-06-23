clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.fahrtzeit}{Fahrtzeit}\n\
  \\ifproblem\\problem\\par\n\
    Ein Auto braucht für eine Strecke 6 Stunden, wenn es mit \\sikmh{45} fährt.\n\
    In welcher Zeit wird der gleiche Weg bei \\sikmh{80} Geschwindigkeit zurücklegt?\n\
  \\fi\n\
  %%\\ifoutline\\outline\\par\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\\par\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

