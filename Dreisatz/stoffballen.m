clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.stoffballen}{Stoffballen}\n\
  \\ifproblem\\problem\\par\n\
    Für einen Ballen Kleiderstoff von \\simeter{32,4} Länge zahlt ein Betrieb\n\
    \\eur{436,80}. Wie viel kostet ein \\simeter{2,15} langer Stoffballen?\n\
  \\fi\n\
  %%\\ifoutline\\outline\\par\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\\par\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

