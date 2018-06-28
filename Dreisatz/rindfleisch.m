clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.rindfleisch}{Rindfleisch}\n\
  \\ifproblem\\problem\n\
    700 Gramm Rindfleisch kosten \\eur{8,40}.\n\
    \\begin{enumerate}[a)]\n\
      \\item Wie teuer sind 1200 Gramm?\n\
      \\item Wie viel Gramm bekommt man \\eur{30}?\n\
    \\end{enumerate}\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

