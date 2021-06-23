clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.kanalisationsarbeiten}{Kanalisationsarbeiten}\n\
  \\ifproblem\\problem\\par\n\
    Für Kanalisationsarbeiten benötigt ein Unternehmer bei 5 Arbeitstagen 18\n\
    Arbeiter. Die Arbeit soll aber in 3 Tagen beendet sein. Wie viele Arbeiter\n\
    sind noch einzustellen?\n\
  \\fi\n\
  %%\\ifoutline\\outline\\par\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\\par\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

