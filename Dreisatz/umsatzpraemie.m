clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.umsatzpraemie}{Umsatzprämie}\n\
  \\ifproblem\\problem\n\
    Ein Vertreter erhält im April \\eur{1146,60} Umsatzprämie bei \\eur{109200}\n\
    Umsatz. Errechne die Prämie nach einr Umsatzsteigerung von \\eur{8400}.\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

