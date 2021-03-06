clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.benzinkosten}{Benzinkosten}\n\
  \\ifproblem\\problem\\par\n\
    Der Kraftstoffverbrauch für eine Strecke von \\sikm{12000} beträgt \\sil{1440}.\n\
    Ein Liter Benzin kostet \\eur{1,59}. Wie hoch sind die Kraftstoffkosten für\n\
    eine Fahrstrecke von \\sikm{2880}?\n\
  \\fi\n\
  %%\\ifoutline\\outline\\par\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\\par\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

