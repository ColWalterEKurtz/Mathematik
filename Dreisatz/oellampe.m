clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.oellampe}{Öllampe}\n\
  \\ifproblem\\problem\n\
    \\sil{300} Brennöl reichen für 20 Lampen, die an 25 Tagen jeweils 6 Stunden\n\
    täglich brennen. Wie viel Öl benötigen 18 Lampen, die an 30 Tagen jeweils\n\
    5 Stunden brennen?\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

