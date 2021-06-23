clear all;

fmtstr = ["\
\\begin{exercise}{trigonometrie.72eck}{Reguläres 72-Eck}\n\
  \\ifproblem\\problem\\par\n\
    \\begin{minipage}{0.29\\textwidth}\n\
      \\begin{tikzpicture}\n\
        \\newcommand{\\radius}{1.4cm}\n\
        \\coordinate (M) at (0, 0);\n\
        \\coordinate (A) at (20:\\radius);\n\
        \\coordinate (B) at (70:\\radius);\n\
        %% Punkte\n\
        \\fill (M) circle[radius=1.25pt];\n\
        \\fill (A) circle[radius=1.25pt];\n\
        \\fill (B) circle[radius=1.25pt];\n\
        %% Kreis\n\
        \\draw[line width=0.6pt] (M) circle[radius=\\radius];\n\
        %% Dreieck\n\
        \\draw[line width=0.6pt] (M) -- (A) -- (B) -- cycle;\n\
        %% Beschriftung\n\
        \\node[shift=(225:3mm)] at (M) {{\\small$M$}};\n\
        \\node[shift=( 20:3mm)] at (A) {{\\small$A$}};\n\
        \\node[shift=( 70:3mm)] at (B) {{\\small$B$}};\n\
        \\node[shift=( 45:5mm)] at (M) {{\\small$\\alpha$}};\n\
        \\path (M) -- node[below right]{{\\small$r$}} (A);\n\
        \\begin{scope}\n\
          \\clip (M) -- (A) -- (B) -- cycle;\n\
          \\draw[line width=0.4pt] (M) circle[radius=8mm];\n\
        \\end{scope}\n\
      \\end{tikzpicture}\n\
    \\end{minipage}%%\n\
    \\hfill\n\
    \\begin{minipage}{0.70\\textwidth}\n\
      Bekannt sind der Mittelpunktswinkel $\\alpha$ und der Radius $r$. Stelle\n\
      eine Formel zur Berechnung des Flächeninhalts des Dreiecks $\\triangle M\\!AB$\n\
      auf. Berechne mit der erhaltenen Formel den Flächeninhalt eines regulären\n\
      72-Ecks mit beliebigem Radius.\n\
    \\end{minipage}\n\
  \\fi\n\
  %%\\ifoutline\\outline\\par\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\\par\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

