clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.kraftstoff}{Kraftstoff}\n\
  \\ifproblem\\problem\n\
    Für eine Strecke von \\sikm{340} braucht ein PKW \\sil{28,56} Benzin.\n\
    \\begin{enumerate}[a)]\n\
      \\item Wie viel Kraftstoff braucht der PKW für \\sikm{650}?\n\
      \\item Wie viele Kilometer kann er mit einem Tankinhalt von \\sil{60,48} zurücklegen?\n\
    \\end{enumerate}\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

