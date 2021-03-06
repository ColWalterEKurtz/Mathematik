clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.arbeitszeitverkuerzung}{Arbeitszeitverkürzung}\n\
  \\ifproblem\\problem\\par\n\
    Durch Arbeitszeitverkürzung auf 38 Stunden pro Woche bei vollem Lohnausgleich\n\
    erhöht sich der Stundenlohn eines Arbeitnehmers von \\eur{20} auf \\eur{21,06}.\n\
    Um wie viele Stunden je Woche hat sich die Arbeitszeit verkürzt?\n\
  \\fi\n\
  %%\\ifoutline\\outline\\par\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\\par\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

