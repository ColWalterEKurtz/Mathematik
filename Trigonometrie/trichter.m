clear all;

fmtstr = ["\
\\begin{exercise}{trigonometrie.trichter}{Trichter}\n\
  \\ifproblem\\problem\\par\n\
    Ein Kreisquadrant wird zu einem kegelförmigen Trichter zurechtgebogen.\n\
    Berechne den Öffnungswinkel des Trichters.\n\
  \\fi\n\
  \\ifoutline\\outline\\par\n\
    \\begin{equation*}\n\
      \\alpha=2\\cdot\\arcsin\\left(\\frac{1}{4}\\right)\n\
    \\end{equation*}\n\
  \\fi\n\
  %%\\ifoutcome\\outcome\\par\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

