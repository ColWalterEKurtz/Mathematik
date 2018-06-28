clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.maehdrescher}{Mähdrescher}\n\
  \\ifproblem\\problem\n\
    Für die Weizenernte werden 4 Tage lang 9 Mähdrescher eingesetzt.\n\
    \\begin{enumerate}[a)]\n\
      \\item Wie lange würden 12 Mähdrescher brauchen?\n\
      \\item Wie viele Mähdrescher werden gebraucht, wenn man für Ernte nur 2 Tage Zeit hat?\n\
    \\end{enumerate}\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

