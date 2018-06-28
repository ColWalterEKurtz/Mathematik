clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.kanalisationsarbeiten}{Kanalisationsarbeiten}\n\
  \\ifproblem\\problem\n\
    Für Kanalisationsarbeiten benötigt ein Unternehmer bei 5 Arbeitstagen 18\n\
    Arbeiter. Die Arbeit soll aber in 3 Tagen beendet sein. Wie viele Arbeiter\n\
    sind noch einzustellen?\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

