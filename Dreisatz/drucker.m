clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.drucker}{Drucker}\n\
  \\ifproblem\\problem\n\
    Um 600 Seiten auszudrucken, benötigt ein Drucker 12 Minuten.\n\
    \\begin{enumerate}[a)]\n\
      \\item Wie lange braucht der Drucker für 900 Seiten?\n\
      \\item Wie viele Seiten können in 15 Minuten gedruckt werden?\n\
    \\end{enumerate}\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

