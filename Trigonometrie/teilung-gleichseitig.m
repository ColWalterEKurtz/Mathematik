clear all;

fmtstr = ["\
\\begin{exercise}{trigonometrie.teilung.gleichseitig}{Teilung eines gleichseitigen Dreiecks}\n\
  \\ifproblem\\problem\\par\n\
    In einem gleichseitigen Dreieck wird eine Seite in 3 gleiche Teile geteilt.\n\
    Die Teilpunkte werden mit der gegenüberliegenden Ecke verbunden. In welche\n\
    Teilwinkel wird dadurch der \\SI{60}{\\degree}-Winkel zerlegt?\n\
  \\fi\n\
  %%\\ifoutline\\outline\\par\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\\par\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

