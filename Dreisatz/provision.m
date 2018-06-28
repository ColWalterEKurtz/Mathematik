clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.provision}{Provision}\n\
  \\ifproblem\\problem\n\
    Ein Vertreter erhielt bei \\eur{36250} Umsatz \\eur{1812,50} Provision.\n\
    Wie hoch ist die Provision bei \\eur{32070} Umsatz?\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

