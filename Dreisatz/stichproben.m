clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.stichproben}{Stichproben}\n\
  \\ifproblem\\problem\n\
    Drei Angestellte vermessen monatlich 4\\,320 Stichproben. Wie viele Angestellte\n\
    müssen bei 17\\,280 Stichproben je Monat eingesetzt werden?\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

