clear all;

fmtstr = ["\
\\begin{exercise}{abfuellautomaten}{Abfüllautomaten}\n\
  \\ifproblem\\problem\\par\n\
    14 Abfüllautomaten haben eine Tageskapazität von 2\\,100 Flaschen. Wie viele\n\
    Automaten müssen nachbestellt werden, um 3\\,000 Flaschen täglich abfüllen zu\n\
    können?\n\
  \\fi\n\
  %%\\ifoutline\\outline\\par\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\\par\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

