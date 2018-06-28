clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.zollgebuehren}{Zollgebühren}\n\
  \\ifproblem\\problem\n\
    Für eine Sendung Waren im Wert von \\eur{16000} wurden \\eur{3200} Zoll gezahlt.\n\
    Wie hoch sind die Zollgebühren bei einem Wert von \\eur{7000}?\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

