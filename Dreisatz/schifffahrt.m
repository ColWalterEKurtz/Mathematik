clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.schifffahrt}{Schifffahrt}\n\
  \\ifproblem\\problem\\par\n\
    Ein Schiff benötigt für eine Fahrt bei 17 Knoten 10 Tage und 18 Stunden.\n\
    Wie lange ist das Schiff unterwegs, wenn es 20 Knoten fährt?\n\
  \\fi\n\
  %%\\ifoutline\\outline\\par\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\\par\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

