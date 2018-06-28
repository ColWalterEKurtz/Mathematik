clear all;

fmtstr = ["\
\\begin{exercise}{trigonometrie.konstruktion.a.alpha}{Konstruktion aus $a$ und $\\alpha$}\n\
  \\ifproblem\\problem\n\
    %% Aufgabenstellung\n\
    In der folgenden Abbildung ergibt sich die Strecke $x$\n\
    durch Konstruktion aus den Größen $a$ und $\\alpha$.\n\
    \\begin{center}\n\
      \\begin{tikzpicture}\n\
        %% Punktkoordinaten\n\
        \\coordinate (A) at (  0.0000,   0.0000);\n\
        \\coordinate (B) at (  5.6454,   0.0000);\n\
        \\coordinate (C) at (  4.9850,   1.8144);\n\
        \\coordinate (D) at (  3.9375,   0.0000);\n\
        \\coordinate (E) at (  3.4769,   1.2655);\n\
        \\coordinate (F) at (  5.7328,   2.0866);\n\
        %% Winkel $\\alpha$\n\
        \\begin{scope}\n\
          \\clip (3.9375, 0.0000) -- (0.0000, 0.0000) -- (4.9850, 1.8144) -- cycle;\n\
          \\draw[line width=0.4pt] (0.0000, 0.0000) circle[radius=1.2000];\n\
          \\node at (0.8863, 0.1563) {{\\small $\\alpha$}};\n\
        \\end{scope}\n\
        %% Winkel $3\\alpha$\n\
        \\begin{scope}\n\
          \\clip (5.6454, 0.0000) -- (3.9375, 0.0000) -- (4.9850, 1.8144) -- cycle;\n\
          \\draw[line width=0.4pt] (3.9375, 0.0000) circle[radius=0.8000];\n\
          \\node at (4.3532, 0.2400) {{\\small $3\\alpha$}};\n\
        \\end{scope}\n\
        %% Winkel *\n\
        \\begin{scope}\n\
          \\clip (5.6454, 0.0000) -- (4.9850, 1.8144) -- (5.7328, 2.0866) -- cycle;\n\
          \\draw[line width=0.4pt] (4.9850, 1.8144) circle[radius=0.4000];\n\
          \\fill (5.1663, 1.7299) circle[radius=1pt];\n\
        \\end{scope}\n\
        %% Seiten des Dreiecks\n\
        \\draw[line width=0.6pt, join=bevel] (A) -- (B) -- (C) -- cycle;\n\
        \\draw[line width=0.6pt] (C) -- (D);\n\
        \\draw[line width=0.6pt] (C) -- (F);\n\
        %% Punkte\n\
        \\fill (A) circle[radius=1.25pt];\n\
        \\fill (B) circle[radius=1.25pt];\n\
        \\fill (C) circle[radius=1.25pt];\n\
        \\fill (D) circle[radius=1.25pt];\n\
        %% Beschriftung der Seiten\n\
        \\node[below] at ($(A)!0.5!(D)$) {{\\small$a$}};\n\
        \\node[below] at ($(D)!0.5!(B)$) {{\\small$x$}};\n\
      \\end{tikzpicture}\n\
    \\end{center}\n\
    \\begin{enumerate}[a)]\n\
      \\item Stelle $x$ als Funktion der gegebenen Größen dar.\n\
      \\item Berechne $x$ für\n\
            $a=\\SI{5.25}{\\centi\\metre}$ und\n\
            $\\alpha=\\SI{37.2}{\\degree}$.\n\
      \\item Untersuche die Spezialfälle\n\
            $\\alpha=\\SI{30}{\\degree}$ sowie\n\
            $\\alpha=\\SI{45}{\\degree}$.\n\
    \\end{enumerate}\n\
  \\fi\n\
  %% Ansatz\n\
  \\ifoutline\\outline\n\
    \\begin{center}\n\
      \\begin{tikzpicture}\n\
        %% Punktkoordinaten\n\
        \\coordinate (A) at (  0.0000,   0.0000);\n\
        \\coordinate (B) at (  5.6454,   0.0000);\n\
        \\coordinate (C) at (  4.9850,   1.8144);\n\
        \\coordinate (D) at (  3.9375,   0.0000);\n\
        \\coordinate (E) at (  3.4769,   1.2655);\n\
        \\coordinate (F) at (  5.7328,   2.0866);\n\
        %% Winkel $\\alpha$\n\
        \\begin{scope}\n\
          \\clip (3.9375, 0.0000) -- (0.0000, 0.0000) -- (4.9850, 1.8144) -- cycle;\n\
          \\draw[line width=0.4pt] (0.0000, 0.0000) circle[radius=1.2000];\n\
          \\node at (0.8863, 0.1563) {{\\small $\\alpha$}};\n\
        \\end{scope}\n\
        %% Winkel $3\\alpha$\n\
        \\begin{scope}\n\
          \\clip (5.6454, 0.0000) -- (3.9375, 0.0000) -- (4.9850, 1.8144) -- cycle;\n\
          \\draw[line width=0.4pt] (3.9375, 0.0000) circle[radius=0.8000];\n\
          \\node at (4.3532, 0.2400) {{\\small $3\\alpha$}};\n\
        \\end{scope}\n\
        %% Winkel *\n\
        \\begin{scope}\n\
          \\clip (5.6454, 0.0000) -- (4.9850, 1.8144) -- (5.7328, 2.0866) -- cycle;\n\
          \\draw[line width=0.4pt] (4.9850, 1.8144) circle[radius=0.4000];\n\
          \\fill (5.1663, 1.7299) circle[radius=1pt];\n\
        \\end{scope}\n\
        %% Winkel *\n\
        \\begin{scope}\n\
          \\clip (0.0000, 0.0000) -- (3.4769, 1.2655) -- (3.9375, 0.0000) -- cycle;\n\
          \\draw[line width=0.4pt] (3.4769, 1.2655) circle[radius=0.4000];\n\
          \\fill (3.3924, 1.0842) circle[radius=1pt];\n\
        \\end{scope}\n\
        %% Winkel $\\gamma$\n\
        \\begin{scope}\n\
          \\clip (0.0000, 0.0000) -- (4.9850, 1.8144) -- (3.9375, 0.0000) -- cycle;\n\
          \\draw[line width=0.4pt] (4.9850, 1.8144) circle[radius=0.8000];\n\
          \\node at (4.5561, 1.4544) {{\\small $\\gamma$}};\n\
        \\end{scope}\n\
        %% Seiten des Dreiecks\n\
        \\draw[line width=0.6pt, join=bevel] (A) -- (B) -- (C) -- cycle;\n\
        \\draw[line width=0.6pt] (C) -- (D);\n\
        \\draw[line width=0.6pt] (C) -- (F);\n\
        \\draw[line width=0.6pt] (D) -- (E);\n\
        %% Punkte\n\
        \\fill (A) circle[radius=1.25pt];\n\
        \\fill (B) circle[radius=1.25pt];\n\
        \\fill (C) circle[radius=1.25pt];\n\
        \\fill (D) circle[radius=1.25pt];\n\
        \\fill (E) circle[radius=1.25pt];\n\
        %% Beschriftung der Seiten\n\
        \\node[below] at ($(A)!0.5!(D)$) {{\\small$a$}};\n\
        \\node[below] at ($(D)!0.5!(B)$) {{\\small$x$}};\n\
        \\node[above left] at ($(A)!0.5!(E)$) {{\\small$q$}};\n\
        \\node[above left] at ($(E)!0.5!(C)$) {{\\small$p$}};\n\
        \\node[left] at ($(D)!0.4!(E)$) {{\\small$h$}};\n\
      \\end{tikzpicture}\n\
    \\end{center}\n\
    \\begin{equation*}\n\
      \\cos(\\alpha)=\\frac{q+p}{a+x}\n\
      \\qquad\n\
      \\sin(\\alpha)=\\frac{h}{a}\n\
      \\qquad\n\
      \\cos(\\alpha)=\\frac{q}{a}\n\
      \\qquad\n\
      \\tan(\\gamma)=\\frac{h}{p}\n\
    \\end{equation*}\n\
  \\fi\n\
  %% Loesung\n\
  \\ifoutcome\\outcome\n\
    \\begin{enumerate}[a)]\n\
      \\item Die gesuchte Größe $x$ kann man durch folgende\n\
            Gleichung bestimmen:\n\
            \\begin{equation*}\n\
              x=a\\cdot\\frac{\\tan(\\alpha)}{\\tan(2\\alpha)}\n\
            \\end{equation*}\n\
      \\item Aus den gegebenen Werten ergibt sich $x\\approx\\SI{1.11}{\\centi\\metre}$.\n\
      \\item In den Spezialfällen gilt:\n\
            \\begin{equation*}\n\
              \\alpha=\\SI{30}{\\degree}\\quad\\Rightarrow\\quad x=\\frac{a}{3}\n\
              \\qquad\\text{bzw.}\\qquad\n\
              \\alpha=\\SI{45}{\\degree}\\quad\\Rightarrow\\quad x=0\n\
            \\end{equation*}\n\
    \\end{enumerate}\n\
  \\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

