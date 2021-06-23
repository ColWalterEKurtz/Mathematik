clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.fussbodenbelag}{Fußbodenbelag}\n\
  \\ifproblem\\problem\\par\n\
    Ein Betrieb benötigt \\simeter{34,5} eines Fußbodenbelags von \\sicm{70} Breite.\n\
    Der Belag ist nur in einer Breite von \\sicm{50} vorrätig. Wie viele Meter\n\
    müssen geliefert werden?\n\
  \\fi\n\
  %%\\ifoutline\\outline\\par\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\\par\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

