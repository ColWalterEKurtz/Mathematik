clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.plakatwerbung}{Plakatwerbung}\n\
  \\ifproblem\\problem\n\
    Eine Plakatwerbung kostet für 60 Tage \\eur{546}.\n\
    Wie viel Euro sind für 76 Tage zu zahlen?\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

