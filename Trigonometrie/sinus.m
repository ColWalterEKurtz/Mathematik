clear all;

fmtstr = ["\
\\begin{exercise}{trigonometrie.sinus}{Sinus}\n\
  \\ifproblem\\problem\n\
    Bestimme die angegebenen Werte der Sinus-Funktion ohne Taschenrechner.\n\
    \\begin{center}\n\
      \\begin{tikzpicture}\n\
        \\begin{scope}\n\
          \\node at (0, 2.1) {{$\\sin 30^{\\circ}$}};\n\
          \\node at (0, 1.4) {{$\\sin 45^{\\circ}$}};\n\
          \\node at (0, 0.7) {{$\\sin 60^{\\circ}$}};\n\
        \\end{scope}\n\
        \\begin{scope}[xshift=2cm]\n\
          \\coordinate (A) at (0.0, 0.0);\n\
          \\coordinate (B) at (3.0, 0.0);\n\
          \\coordinate (C) at (60:3.0cm);\n\
          \\coordinate (S) at (1.5, 0.0);\n\
          %% Dreiecksseiten\n\
          \\draw[line width=0.6pt] (A) -- node[below]{{\\small$a$}}       (B);\n\
          \\draw[line width=0.6pt] (B) -- node[above right]{{\\small$a$}} (C);\n\
          \\draw[line width=0.6pt] (C) -- node[above left]{{\\small$a$}}  (A);\n\
          %% Hoehe\n\
          \\draw (C) -- (S);\n\
          %% Eckpunkte\n\
          \\fill (A) circle[radius=1.25pt];\n\
          \\fill (B) circle[radius=1.25pt];\n\
          \\fill (C) circle[radius=1.25pt];\n\
          %% Winkel\n\
          \\begin{scope}\n\
            \\clip (A) -- (S) -- (C) -- cycle;\n\
            \\draw[line width=0.4pt] (A) circle[radius=8mm];\n\
            \\draw[line width=0.4pt] (C) circle[radius=12mm];\n\
            \\node[shift=(255:8mm), rotate=77] at (C) {{\\footnotesize$30^{\\circ}$}};\n\
            \\node[shift=(28:5mm)] at (A) {{\\footnotesize$60^{\\circ}$}};\n\
          \\end{scope}\n\
        \\end{scope}\n\
        \\begin{scope}[xshift=7cm]\n\
          \\coordinate (A) at (0.000, 0.000);\n\
          \\coordinate (B) at (2.598, 0.000);\n\
          \\coordinate (C) at (2.598, 2.598);\n\
          \\coordinate (D) at (0.000, 2.598);\n\
          %% Quadrat\n\
          \\draw[line width=0.6pt] (A) -- (B) -- (C) -- (D) -- (A);\n\
          %% Bezeichnungen\n\
          \\path (A) -- node[below]{{\\small$a$}} (B);\n\
          \\path (B) -- node[right]{{\\small$a$}} (C);\n\
          %% Diagonale\n\
          \\draw[line width=0.6pt] (A) -- (C);\n\
          %% Eckpunkte\n\
          \\fill (A) circle[radius=1.25pt];\n\
          \\fill (B) circle[radius=1.25pt];\n\
          \\fill (C) circle[radius=1.25pt];\n\
          \\fill (D) circle[radius=1.25pt];\n\
          %% Winkel\n\
          \\begin{scope}\n\
            \\clip (A) -- (B) -- (C) -- cycle;\n\
            \\draw[line width=0.4pt] (A) circle[radius=9mm];\n\
            \\node[shift=(22.5:6mm)] at (A) {{\\footnotesize$45^{\\circ}$}};\n\
          \\end{scope}\n\
        \\end{scope}\n\
      \\end{tikzpicture}\n\
    \\end{center}\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

