clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.ordner}{Ordner}\n\
  \\ifproblem\\problem\\par\n\
    28 Ordner kosten \\eur{156,80}. Wie viel kosten 34 Ordner?\n\
  \\fi\n\
  %%\\ifoutline\\outline\\par\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\\par\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

