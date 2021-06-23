clear all;

fmtstr = ["\
\\begin{exercise}{trigonometrie.kreis}{Kreis}\n\
  \\ifproblem\\problem\\par\n\
    In einem Kreis sind von einem Punkt $P$ seines Umfangs aus\n\
    zwei Sehnen der Länge \\SI{7}{\\centi\\metre} und\n\
    \\SI{5}{\\centi\\metre} eingetragen, welche einen Winkel von\n\
    \\SI{23}{\\degree} einschließen. Wie groß ist der Radius\n\
    des Kreises?\n\
  \\fi\n\
  %%\\ifoutline\\outline\\par\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\\par\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

