clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.krankheit}{Krankheit}\n\
  \\ifproblem\\problem\\par\n\
    Für einen Auftrag werden 24 Mitarbeiter 9 Arbeitstage lang benötigt. Wegen\n\
    Krankheit können jedoch nur 18 Mitarbeiter eingesetzt werden. Wie viele\n\
    Tage müssen nun für den Auftrag eingeplant werden?\n\
  \\fi\n\
  %%\\ifoutline\\outline\\par\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\\par\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

