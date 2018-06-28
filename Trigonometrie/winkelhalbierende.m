clear all;

fmtstr = ["\
\\begin{exercise}{trigonometrie.winkelhalbierende}{Winkelhalbierende}\n\
  \\ifproblem\\problem\n\
    Wie lang ist die Winkelhalbierende $w_{\\alpha}$ in einem\n\
    rechtwinkligen Dreieck mit den Katheten $a=\\SI{5}{\\centi\\metre}$\n\
    und $b=\\SI{7}{\\centi\\metre}$?\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

