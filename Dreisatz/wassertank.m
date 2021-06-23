clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.wassertank}{Wassertank}\n\
  \\ifproblem\\problem\\par\n\
    Ein Wassertank mit einem Volumen von \\simmm{168} besitzt zwei Zuleitungen.\n\
    Durch die eine Zuleitung passen 180 und durch die andere 240 Liter je Minute.\n\
    Wie lange dauert das Füllen des Tanks, wenn beide Leitungen in Betrieb\n\
    sind?\n\
  \\fi\n\
  %%\\ifoutline\\outline\\par\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\\par\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

