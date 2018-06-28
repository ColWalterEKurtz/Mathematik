clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.dachpfannen}{Dachpfannen}\n\
  \\ifproblem\\problem\n\
    Für das Decken eines Daches von \\simm{408} werden 10\\,200 Dachpfannen benötigt.\n\
    Wie viele Dachpfannen benötigt ein \\simm{381} großes Dach?\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

