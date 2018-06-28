clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.waermepumpe}{Wärmepumpe}\n\
  \\ifproblem\\problem\n\
    Eine Wärmepumpe verbraucht in $4,\\!5$ Stunden \\sikwh{174} Strom. Wie viele kWh\n\
    Strom verbraucht die Wärmepumpe in $15,\\!25$ Stunden?\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

