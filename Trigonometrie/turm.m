clear all;

fmtstr = ["\
\\begin{exercise}{trigonometrie.turm}{Turm}\n\
  \\ifproblem\\problem\n\
    Von einem \\SI{9.95}{\\metre} hoch gelegenen Fenster eines\n\
    Hauses sieht man die Spitze eines Turmes unter dem Höhenwinkel\n\
    \\SI{19.2}{\\degree}, den Fuß des Turms unter dem Tiefenwinkel\n\
    \\SI{3.9}{\\degree}. Wie hoch ist der Turm und wie weit ist er\n\
    vom Haus entfernt, wenn er mit diesem auf der gleichen\n\
    waagerechten Ebene steht?\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

