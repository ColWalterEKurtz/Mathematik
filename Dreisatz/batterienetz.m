clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.batterienetz}{Batterienetz}\n\
  \\ifproblem\\problem\n\
    Eine Batterie liefert 21 Glühlampen für 75 Betriebsstunden Strom. Es werden\n\
    vier weitere Lampen an das Batterienetz angeschlossen. Für welche Zeit reicht\n\
    reicht bei dieser Belastung die Batterieladung?\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

