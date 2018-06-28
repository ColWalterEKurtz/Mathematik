clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.apfelsaft}{Apfelsaft}\n\
  \\ifproblem\\problem\n\
    Für 80 Liter Apfelsaft braucht man \\sikg{100} Äpfel.\n\
    \\begin{enumerate}[a)]\n\
      \\item Wie viel Apfelsaft presst man aus \\sikg{120} Äpfel?\n\
      \\item Wie viele Äpfel werden für 200 Liter Apfelsaft benötigt?\n\
    \\end{enumerate}\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);


