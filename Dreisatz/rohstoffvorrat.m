clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.rohstoffvorrat}{Rohstoffvorrat}\n\
  \\ifproblem\\problem\n\
    Ein Rohstoffvorrat reicht für 35 Maschinen 24 Arbeitstage. Für wie viele\n\
    Arbeitstage reicht der Vorrat, wenn 7 Maschinen ausfallen?\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

