clear all;

fmtstr = ["\
\\begin{exercise}{trigonometrie.winkelgroessen}{Winkelgrößen}\n\
  \\ifproblem\\problem\n\
    Die abgebildeten Figuren bestehen aus zwei aneinander gelegten Quadraten.\n\
    Die markierten Punkte sind jeweils Seitenmittelpunkte. Berechne die\n\
    Winkelgrößen.\n\
    \\begin{center}\n\
      \\begin{tikzpicture}\n\
        \\begin{scope}\n\
          \\coordinate (A) at (0.00, 0.00);\n\
          \\coordinate (B) at (3.00, 0.75);\n\
          \\coordinate (C) at (2.25, 1.50);\n\
          %% Rechteck\n\
          \\draw[line width=0.6pt] (0.0, 0.0) rectangle (3.0, 1.5);\n\
          %% Mittellinie\n\
          \\draw[line width=0.6pt] (1.5, 0.0) -- (1.5, 1.5);\n\
          %% Schenkel\n\
          \\draw[line width=0.6pt] (A) -- (B);\n\
          \\draw[line width=0.6pt] (A) -- (C);\n\
          %% Seitenmittelpunkte\n\
          \\fill (B) circle (1.25pt);\n\
          \\fill (C) circle (1.25pt);\n\
          %% Winkel\n\
          \\begin{scope}\n\
            \\clip (A) -- (B) -- (C) -- cycle;\n\
            \\draw[line width=0.4pt] (A) circle (1.25cm);\n\
            \\node[shift=(24.5:9mm)] at (A) {{\\footnotesize$\\alpha$}};\n\
          \\end{scope}\n\
        \\end{scope}\n\
        \\begin{scope}[xshift=4cm]\n\
          \\coordinate (A) at (0.00, 0.00);\n\
          \\coordinate (B) at (1.50, 0.75);\n\
          \\coordinate (C) at (0.00, 1.50);\n\
          \\coordinate (D) at (2.25, 0.00);\n\
          \\coordinate (S) at (intersection of A--B and C--D);\n\
          %% Rechteck\n\
          \\draw[line width=0.6pt] (0.0, 0.0) rectangle (3.0, 1.5);\n\
          %% Mittellinie\n\
          \\draw[line width=0.6pt] (1.5, 0.0) -- (1.5, 1.5);\n\
          %% Schenkel\n\
          \\draw[line width=0.6pt] (A) -- (B);\n\
          \\draw[line width=0.6pt] (C) -- (D);\n\
          %% Seitenmittelpunkte\n\
          \\fill (B) circle (1.25pt);\n\
          \\fill (D) circle (1.25pt);\n\
          %% Winkel\n\
          \\begin{scope}\n\
            \\clip (A) -- (S) -- (C) -- cycle;\n\
            \\draw[line width=0.4pt] (S) circle (7mm);\n\
            \\node[shift=(180:4.5mm)] at (S) {{\\footnotesize$\\beta$}};\n\
          \\end{scope}\n\
        \\end{scope}\n\
        \\begin{scope}[xshift=8cm]\n\
          \\coordinate (A) at (0.00, 0.00);\n\
          \\coordinate (B) at (2.25, 1.50);\n\
          \\coordinate (C) at (0.75, 1.50);\n\
          \\coordinate (D) at (2.25, 0.00);\n\
          \\coordinate (S) at (intersection of A--B and C--D);\n\
          %% Rechteck\n\
          \\draw[line width=0.6pt] (0.0, 0.0) rectangle (3.0, 1.5);\n\
          %% Mittellinie\n\
          \\draw[line width=0.6pt] (1.5, 0.0) -- (1.5, 1.5);\n\
          %% Schenkel\n\
          \\draw[line width=0.6pt] (A) -- (B);\n\
          \\draw[line width=0.6pt] (C) -- (D);\n\
          %% Seitenmittelpunkte\n\
          \\fill (B) circle (1.25pt);\n\
          \\fill (C) circle (1.25pt);\n\
          \\fill (D) circle (1.25pt);\n\
          %% Winkel\n\
          \\begin{scope}\n\
            \\clip (A) -- (S) -- (C) -- cycle;\n\
            \\draw[line width=0.4pt] (S) circle (6mm);\n\
            \\node[shift=(180:3.5mm)] at (S) {{\\footnotesize$\\gamma$}};\n\
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

