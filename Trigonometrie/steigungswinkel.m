clear all;

fmtstr = ["\
\\begin{exercise}{trigonometrie.steigungswinkel}{Steigungswinkel}\n\
  \\ifproblem\\problem\n\
    \\begin{enumerate}[a)]\n\
      \\item Die Steigung einer Straße wird mit \\pc{18} angegeben. Berechne die Größe\n\
            des zugehörigen Steigungswinkels $\\alpha$.\n\
      \\item Ein Fahrzeug bewältigt im 1. Gang eine Steigung von bis zu \\pc{44} und\n\
            im 4. Gang eine Steigung von bis zu \\pc{10}. Berechne jeweils die Größe\n\
            des zugehörigen Steigungswinkels.\n\
      \\item Berechne für die Steigungswinkel\n\
            $\\alpha=\\SI{8}{\\degree}$,\n\
            $\\alpha=\\SI{24}{\\degree}$ und\n\
            $\\alpha=\\SI{31}{\\degree}$\n\
            die Steigung in Prozent.\n\
    \\end{enumerate}\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

