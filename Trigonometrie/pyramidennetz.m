clear all;

fmtstr = ["\
\\begin{exercise}{trigonometrie.pyramidennetz}{Pyramidennetz}\n\
  \\ifproblem\\problem\\par\n\
    Das sternförmige Netz einer vierseitigen Pyramide besteht\n\
    aus einem Quadrat mit der Seite $a$ und vier angesetzten\n\
    gleichschenkligen Dreiecken. Wie groß müssen die Basiswinkel\n\
    dieser gleichschenkligen Dreiecke gewählt werden, damit\n\
    nach dem Auffalten des Netzes eine Pyramide entsteht, in\n\
    deren Spitze die gegenüberliegenden Seitenflächen einen\n\
    Winkel von \\SI{60}{\\degree} einschließen?\n\
  \\fi\n\
  \\ifoutline\\outline\\par\n\
    \\begin{minipage}{0.4\\textwidth}\n\
      \\centering\n\
      \\begin{tikzpicture}\n\
        \\coordinate (A) at (  0.0000,   0.0000);\n\
        \\coordinate (B) at ( -1.6667,  -0.7274);\n\
        \\coordinate (C) at (  1.6667,  -1.0911);\n\
        \\coordinate (D) at (  3.3333,  -0.3637);\n\
        \\coordinate (E) at (  0.8333,   2.6042);\n\
        \\coordinate (h1) at ( -0.8333,  -0.3637);\n\
        \\coordinate (h2) at (  0.0000,  -0.9092);\n\
        \\coordinate (h3) at (  2.5000,  -0.7274);\n\
        \\coordinate (h4) at (  1.6667,  -0.1818);\n\
        \\coordinate (h5) at (  0.8333,  -0.5455);\n\
        \\draw[line width=0.6pt, style=dashed] (A) -- (E);\n\
        \\draw[line width=0.6pt, style=dashed] (B) -- (A) -- (D);\n\
        \\draw[line width=0.6pt, style=dotted] (E) -- (h1) -- (h3) -- cycle;\n\
        \\draw[line width=0.6pt, style=dotted] (h2) -- (h4);\n\
        \\draw[line width=0.6pt, style=dotted] (E) -- (h5);\n\
        \\begin{scope}\n\
          \\clip (D) -- (C) -- (E) -- cycle;\n\
          \\filldraw[fill=black!15!white, draw=black, line width=0.4pt] (C) circle[radius=0.6000];\n\
          \\node at ([shift={(63.1433:0.3300)}]C) {{\\small\\rule[-0.5ex]{0pt}{2.2ex}$\\beta$}};\n\
        \\end{scope}\n\
        \\begin{scope}\n\
          \\clip (h1) -- (E) -- (h3) -- cycle;\n\
          \\filldraw[fill=black!15!white, draw=black, line width=0.4pt] (E) circle[radius=1.0000];\n\
          \\node at ([shift={(268.6300:0.7000)}]E) {{\\small\\rule[-0.5ex]{0pt}{2.2ex}$\\varphi$}};\n\
        \\end{scope}\n\
        \\begin{scope}\n\
          \\clip (D) -- (h3) -- (E) -- cycle;\n\
          \\filldraw[fill=black!15!white, draw=black, line width=0.4pt] (h3) circle[radius=0.4000];\n\
          \\fill ([shift={(70.0777:0.2000)}]h3) circle[radius=1.25pt];\n\
        \\end{scope}\n\
        \\begin{scope}\n\
          \\clip (h3) -- (h5) -- (E) -- cycle;\n\
          \\filldraw[fill=black!15!white, draw=black, line width=0.4pt] (h5) circle[radius=0.4000];\n\
          \\fill ([shift={(401.8866:0.2000)}]h5) circle[radius=1.25pt];\n\
        \\end{scope}\n\
        \\draw[line width=0.6pt, style=solid, join=bevel] (E) -- (B) -- (C) -- (E) -- (D) -- (C);\n\
        \\node at ($(h2)!4mm!180:(h4)$) {{\\small$a$}};\n\
        \\node at ($(h3)!4mm!180:(h1)$) {{\\small$a$}};\n\
        \\path (h3) -- node[pos=0.35, right] {{\\small$h_{s}$}} (E);\n\
      \\end{tikzpicture}\n\
    \\end{minipage}%%\n\
    \\hfill\n\
    \\begin{minipage}{0.55\\textwidth}\n\
      \\begin{equation*}\n\
        \\begin{split}\n\
          \\varphi&=\\SI{60}{\\degree}\\\\[2ex]\n\
          \\sin\\left(\\frac{\\varphi}{2}\\right)&=\\frac{\\frac{a}{2}}{\\;h_{s}\\;}\\\\[2ex]\n\
          \\tan(\\beta)&=\\frac{\\;h_{s}\\;}{\\frac{a}{2}}\n\
        \\end{split}\n\
      \\end{equation*}\n\
    \\end{minipage}\n\
  \\fi\n\
  \\ifoutcome\\outcome\\par\n\
    Die Basiswinkel $\\beta$ müssen eine Größe von etwa \\SI{63.435}{\\degree} besitzen.\n\
  \\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

