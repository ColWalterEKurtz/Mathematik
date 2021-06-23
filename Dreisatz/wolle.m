clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.wolle}{Wolle}\n\
  \\ifproblem\\problem\\par\n\
    Aus \\sikg{80} Wolle können \\simeter{400} Tuch von \\sicm{120} Breite gewebt\n\
    werden. Wie viele Meter Tuch von \\sicm{90} Breite ergeben \\sikg{150} Wolle?\n\
  \\fi\n\
  %%\\ifoutline\\outline\\par\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\\par\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

