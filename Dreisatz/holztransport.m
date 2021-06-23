clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.holztransport}{Holztransport}\n\
  \\ifproblem\\problem\\par\n\
    Um eine bestimmte Menge Holz abzufahren, müssen 6 Lkw je 16 mal täglich fahren.\n\
    Wegen Bauarbeiten wird ein Umweg gefahren, so dass die Lkw nur zwölfmal je Tag\n\
    fahren können. Wie viele Lkw müssen zusätzlich eingesetzt werden, um das\n\
    Holz fristgemäß abzufahren?\n\
  \\fi\n\
  %%\\ifoutline\\outline\\par\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\\par\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

