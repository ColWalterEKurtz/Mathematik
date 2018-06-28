clear all;

fmtstr = ["\
\\begin{exercise}{trigonometrie.wolke}{Wolke}\n\
  \\ifproblem\\problem\n\
    Ein Berghotel liegt \\SI{70.2}{\\metre} über dem Spiegel eines Sees.\n\
    Vom Hotel aus sieht ein Beobachter eine Wolke unter dem Höhenwinkel\n\
    \\SI{58.1}{\\degree}, ihr Spiegelbild im See unter dem Tiefenwinkel\n\
    \\SI{61.2}{\\degree}. In welcher Höhe befindet sich die Wolke\n\
    über dem See?\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

