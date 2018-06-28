clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.bezugspreis}{Bezugspreis}\n\
  \\ifproblem\\problem\n\
    Ein Großhändler bezieht \\sikg{805} einer Ware für insgesamt \\eur{4830}.\n\
    Ermittle den Bezugspreis für \\sikg{245} der Ware.\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

