clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.benzinverbrauch}{Benzinverbrauch}\n\
  \\ifproblem\\problem\n\
    13 Autos verbrauchen monatlich \\sil{6175} Benzin. Es werden zwei weitere Autos\n\
    gekauft. Wie hoch ist jetzt der monatliche Benzinverbrauch?\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

