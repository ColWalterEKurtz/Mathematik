clear all;

fmtstr = ["\
\\begin{exercise}{dreisatz.getraenkeabfuellanlage}{Getränkeabfüllanlage}\n\
  \\ifproblem\\problem\n\
    Eine Getränkeabfüllanlage, die aus fünf Maschinen besteht, wird im\n\
    Dreischichtbetrieb sechs Stunden je Schicht betrieben. Die Anlage füllt\n\
    je Arbeitstag \\num{150000} Flaschen. Der Abfüllbetrieb soll auf Vierschichtbetrieb\n\
    mit drei Stunden Einsatz je Schicht umgestellt werden. Wie viele Maschinen\n\
    sind zusätzlich in die Anlage einzubauen, wenn die Tagesleistung auf \\num{200000}\n\
    Flaschen erhöht werden soll?\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

