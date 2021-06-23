clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.inventur}{Inventur}\n\
  \\ifproblem\\problem\\par\n\
    Während einer Inventur nehmen 7 Verkäufer in 8 Stunden \\num{5600} Artikel auf.\n\
    Wie lange benötigen 9 Verkäufer für \\num{6300} Artikel?\n\
  \\fi\n\
  %%\\ifoutline\\outline\\par\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\\par\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

