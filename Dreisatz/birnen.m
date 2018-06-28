clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.birnen}{Birnen}\n\
  \\ifproblem\\problem\n\
    Im Supermarkt kosten \\sikg{7} Birnen \\eur{13,30}.\n\
    \\begin{enumerate}[a)]\n\
      \\item Wie teuer sind \\sikg{5}?\n\
      \\item Wie viel Kilogramm bekommt man für \\eur{22,80}?\n\
    \\end{enumerate}\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

