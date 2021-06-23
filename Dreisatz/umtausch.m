clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.umtausch}{Umtausch}\n\
  \\ifproblem\\problem\\par\n\
    Ein Kunde tauscht Gläser um. Er hatte 12 Stück zu je \\eur{0.75} gekauft. Dafür\n\
    nimmt er jetzt solche zu je \\eur{0.45}. Wie viele Gläser bekommt er dafür?\n\
  \\fi\n\
  %%\\ifoutline\\outline\\par\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\\par\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

