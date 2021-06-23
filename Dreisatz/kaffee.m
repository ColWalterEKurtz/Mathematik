clear all;

fmtstr = ["\
\\begin{exercise}{drei.kaffee}{Kaffee}\n\
  \\ifproblem\\problem\\par\n\
    Aus \\sikg{50} Rohkaffee erhält man \\sikg{43,3} Röstkaffee. Wie hoch ist der\n\
    Röstverlust bei einer Tagesproduktion von \\sikg{22650} Röstkaffee?\n\
  \\fi\n\
  %%\\ifoutline\\outline\\par\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\\par\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

