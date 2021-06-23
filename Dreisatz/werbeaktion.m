clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.werbeaktion}{Werbeaktion}\n\
  \\ifproblem\\problem\\par\n\
    19 Betriebe planen eine gemeinsame Werbeaktion. Jeder Betrieb beteiligt sich\n\
    mit \\eur{5200}. Um wie viel Euro sinken die Kosten je Betrieb, wenn\n\
    sich fünf weitere Betriebe der Werbeaktion anschließen?\n\
  \\fi\n\
  %%\\ifoutline\\outline\\par\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\\par\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

