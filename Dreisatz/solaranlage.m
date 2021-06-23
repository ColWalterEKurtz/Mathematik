clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.solaranlage}{Solaranlage}\n\
  \\ifproblem\\problem\\par\n\
    Für den Einbau einer Solaranlage benötigen 3 Handwerker 8 Tage.\n\
    \\begin{enumerate}[a)]\n\
      \\item Wie lange brauchen 4 Handwerker für dem Einbau?\n\
      \\item Wie viele Handwerker werden gebraucht, wenn die Solaranlage in 2 Tagen eingebaut sein soll?\n\
    \\end{enumerate}\n\
  \\fi\n\
  %%\\ifoutline\\outline\\par\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\\par\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

