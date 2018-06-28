clear all;

fmtstr = ["\
\\begin{exercise}{trigonometrie.dreieck.im.dreieck}{Dreieck im Dreieck}\n\
  \\ifproblem\\problem\n\
    \\begin{minipage}{0.29\\textwidth}\n\
      \\begin{tikzpicture}\n\
        %% Punktkoordinaten\n\
        \\coordinate (A) at ( 0.0000,  0.0000);\n\
        \\coordinate (B) at ( 2.4000,  0.0000);\n\
        \\coordinate (C) at ( 1.2000,  2.0785);\n\
        \\coordinate (P) at ( 1.9000,  0.8660);\n\
        \\coordinate (Q) at ( 0.5000,  0.8660);\n\
        \\coordinate (R) at ( 1.2000,  0.0000);\n\
        \\coordinate (M) at ( 1.2000,  0.8660);\n\
        %% Seiten der Dreiecke\n\
        \\draw[line width=0.6pt] (A) -- (B) -- (C) -- cycle;\n\
        \\draw[line width=0.6pt] (P) -- (Q) -- (R) -- cycle;\n\
        %% Hoehe\n\
        \\draw[line width=0.6pt] (C) -- (R);\n\
        %% Punkte\n\
        \\fill (A) circle[radius=1.25pt];\n\
        \\fill (B) circle[radius=1.25pt];\n\
        \\fill (C) circle[radius=1.25pt];\n\
        \\fill (P) circle[radius=1.25pt];\n\
        \\fill (Q) circle[radius=1.25pt];\n\
        \\fill (R) circle[radius=1.25pt];\n\
        %% rechter Winkel\n\
        \\begin{scope}\n\
          \\clip (M) -- (P) -- (C) -- cycle;\n\
          \\draw (M) circle[radius=0.4];\n\
          \\fill ([shift={(45:0.2)}]M) circle[radius=1pt];\n\
        \\end{scope}\n\
        %% Beschriftung\n\
        \\node[below left]  at (A) {{\\small$A$}};\n\
        \\node[below right] at (B) {{\\small$B$}};\n\
        \\node[above]       at (C) {{\\small$C$}};\n\
        \\node[above right] at (P) {{\\small$P$}};\n\
        \\node[above left]  at (Q) {{\\small$Q$}};\n\
        \\node[below]       at (R) {{\\small$R$}};\n\
      \\end{tikzpicture}\n\
    \\end{minipage}%%\n\
    \\hfill\n\
    \\begin{minipage}{0.70\\textwidth}\n\
      Einem gleichseitigem Dreieck $\\triangle ABC$ mit\n\
      $\\overline{AB}=\\SI{12}{\\centi\\metre}$ wird ein\n\
      Dreieck $\\triangle PQR$ so einbeschrieben, dass\n\
      die Seite $\\overline{PQ}$ eine Länge von\n\
      \\SI{7}{\\centi\\metre} besitzt.\\par\n\
      Berechne den Flächeninhalt des einbeschriebenen\n\
      Dreiecks $\\triangle PQR$ und die Schenkellänge\n\
      $\\overline{QR}$.\n\
    \\end{minipage}%%\n\
  \\fi\n\
  %%\\ifoutline\\outline\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

