clear all;

fmtstr = ["\
\\begin{exercise}{trigonometrie.sonne}{Sonne}\n\
  \\ifproblem\\problem\n\
    Eine \\SI{1.72}{\\metre} hohe, senkrecht stehende Stange\n\
    wirft einen \\SI{1.42}{\\metre} langen Schatten.\n\
    Wie hoch steht die Sonne?\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

