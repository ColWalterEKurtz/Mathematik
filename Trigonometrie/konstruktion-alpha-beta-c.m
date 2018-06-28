clear all;

fmtstr = ["\
\\begin{exercise}{trigonometrie.konstruktion.alpha.beta.c}{Konstruktion aus $\\alpha$, $\\beta$ und $c$}\n\
  \\ifproblem\\problem\n\
    In der folgenden Abbildung ergibt sich die Strecke $x$\n\
    durch Konstruktion aus den Größen $\\alpha$, $\\beta$ und $c$.\n\
    \\begin{center}\n\
      \\begin{tikzpicture}\n\
        %% Koordinaten der Eckpunkte\n\
        \\coordinate (A) at ( -3.3439,   0.0000);\n\
        \\coordinate (B) at (  4.0000,   0.0000);\n\
        \\coordinate (C) at (  0.9038,   2.5523);\n\
        \\coordinate (D) at (  0.0000,   0.0000);\n\
        \\coordinate (E) at (  1.6184,   1.9633);\n\
        \\coordinate (F) at ( -0.8870,   1.4763);\n\
        %% Seiten des Dreiecks\n\
        \\draw[line width=0.6pt, join=bevel] (A) -- (B) -- (C) -- cycle;\n\
        \\draw[line width=0.6pt] (D) -- (C);\n\
        %% Eckpunkte\n\
        \\fill (A) circle[radius=1.25pt];\n\
        \\fill (B) circle[radius=1.25pt];\n\
        \\fill (C) circle[radius=1.25pt];\n\
        \\fill (D) circle[radius=1.25pt];\n\
        %% Beschriftung der Seiten\n\
        \\node[below] at ($(A)!0.5!(D)$) {$x$};\n\
        \\node[below] at ($(D)!0.5!(B)$) {$c$};\n\
        %% Beschriftung des Winkels alpha\n\
        \\begin{scope}\n\
          \\clip (B) -- (D) -- (C) -- cycle;\n\
          \\draw (D) circle[radius=0.7];\n\
          \\node at ([shift={(35.2500:4.0mm)}]D) {{\\small$\\alpha$}};\n\
        \\end{scope}\n\
        %% Beschriftung des Winkels beta bei Punkt B\n\
        \\begin{scope}\n\
          \\clip (C) -- (B) -- (D) -- cycle;\n\
          \\draw (B) circle[radius=1.0];\n\
          \\node at ([shift={(160.2500:7.0mm)}]B) {{\\small$\\beta$}};\n\
        \\end{scope}\n\
        %% Beschriftung des Winkels beta bei Punkt C\n\
        \\begin{scope}\n\
          \\clip (A) -- (C) -- (D) -- cycle;\n\
          \\draw (C) circle[radius=0.9];\n\
          \\node at ([shift={(230.7500:6.0mm)}]C) {{\\small$\\beta$}};\n\
        \\end{scope}\n\
      \\end{tikzpicture}\n\
    \\end{center}\n\
    \\begin{enumerate}[a)]\n\
      \\item Stelle $x$ als Funktion der gegebenen Größen dar.\n\
      \\item Berechne $x$ für\n\
            $\\alpha=\\SI{70.5}{\\degree}$,\n\
            $\\beta=\\SI{39.5}{\\degree}$ und\n\
            $c=\\SI{5}{\\centi\\metre}$.\n\
      \\item Untersuche die Spezialfälle\n\
            \\begin{itemize}\n\
              \\item $\\alpha=\\SI{60}{\\degree}$ und $\\beta=\\SI{30}{\\degree}$\n\
              \\item $\\alpha=\\SI{90}{\\degree}$\n\
              \\item $\\alpha=\\beta$\n\
            \\end{itemize}\n\
    \\end{enumerate}\n\
  \\fi\n\
  \\ifoutline\\outline\n\
    \\begin{center}\n\
      \\begin{tikzpicture}\n\
        %% Koordinaten der Eckpunkte\n\
        \\coordinate (A) at ( -3.3439,   0.0000);\n\
        \\coordinate (B) at (  4.0000,   0.0000);\n\
        \\coordinate (C) at (  0.9038,   2.5523);\n\
        \\coordinate (D) at (  0.0000,   0.0000);\n\
        \\coordinate (E) at (  1.6184,   1.9633);\n\
        \\coordinate (F) at ( -0.8870,   1.4763);\n\
        %% Seiten des Dreiecks\n\
        \\draw[line width=0.6pt, join=bevel] (A) -- (B) -- (C) -- cycle;\n\
        \\draw[line width=0.6pt] (D) -- (C);\n\
        \\draw[line width=0.6pt, style=solid] (D) -- (E);\n\
        \\draw[line width=0.6pt, style=solid] (D) -- (F);\n\
        %% Eckpunkte\n\
        \\fill (A) circle[radius=1.25pt];\n\
        \\fill (B) circle[radius=1.25pt];\n\
        \\fill (C) circle[radius=1.25pt];\n\
        \\fill (D) circle[radius=1.25pt];\n\
        \\fill (E) circle[radius=1.25pt];\n\
        \\fill (F) circle[radius=1.25pt];\n\
        %% Beschriftung der Seiten\n\
        \\node[below] at ($(A)!0.5!(D)$) {$x$};\n\
        \\node[below] at ($(D)!0.5!(B)$) {$c$};\n\
        \\path (D) -- node[pos=0.66, below right=-1mm] {{\\small$h_{1}$}} (E);\n\
        \\path (D) -- node[pos=0.51, left] {{\\small$b$}} (C);\n\
        \\path (D) -- node[pos=0.66, above right=-1mm] {{\\small$h_{2}$}} (F);\n\
        %% Beschriftung des Winkels alpha 1\n\
        \\begin{scope}\n\
          \\clip (B) -- (D) -- (E) -- cycle;\n\
          \\draw (D) circle[radius=1.1];\n\
          \\node at ([shift={(25.2500:7.0mm)}]D) {{\\small$\\alpha_{1}$}};\n\
        \\end{scope}\n\
        %% Beschriftung des Winkels alpha 2\n\
        \\begin{scope}\n\
          \\clip (E) -- (D) -- (C) -- cycle;\n\
          \\draw (D) circle[radius=1.6];\n\
          \\node at ([shift={(60.5000:13.0mm)}]D) {{\\small$\\alpha_{2}$}};\n\
        \\end{scope}\n\
        %% Beschriftung des Winkels beta bei Punkt B\n\
        \\begin{scope}\n\
          \\clip (C) -- (B) -- (D) -- cycle;\n\
          \\draw (B) circle[radius=1.0];\n\
          \\node at ([shift={(160.2500:7.0mm)}]B) {{\\small$\\beta$}};\n\
        \\end{scope}\n\
        %% Beschriftung des Winkels beta bei Punkt C\n\
        \\begin{scope}\n\
          \\clip (A) -- (C) -- (D) -- cycle;\n\
          \\draw (C) circle[radius=0.9];\n\
          \\node at ([shift={(230.7500:6.0mm)}]C) {{\\small$\\beta$}};\n\
        \\end{scope}\n\
        %% Beschriftung des Winkels delta\n\
        \\begin{scope}\n\
          \\clip (C) -- (D) -- (F) -- cycle;\n\
          \\draw (D) circle[radius=0.9];\n\
          \\node at ([shift={(95.7500:6.0mm)}]D) {{\\small$\\delta$}};\n\
        \\end{scope}\n\
        %% Beschriftung des Winkels phi\n\
        \\begin{scope}\n\
          \\clip (F) -- (D) -- (A) -- cycle;\n\
          \\draw (D) circle[radius=0.9];\n\
          \\node at ([shift={(150.5000:6.0mm)}]D) {{\\small$\\varphi$}};\n\
        \\end{scope}\n\
        %% Beschriftung des rechten Winkels bei E\n\
        \\begin{scope}\n\
          \\clip (D) -- (E) -- (B) -- cycle;\n\
          \\draw (E) circle[radius=0.4];\n\
          \\fill ([shift={(275.5000:2.0mm)}]E) circle[radius=1pt];\n\
        \\end{scope}\n\
        %% Beschriftung des rechten Winkels bei F\n\
        \\begin{scope}\n\
          \\clip (A) -- (F) -- (D) -- cycle;\n\
          \\draw (F) circle[radius=0.4];\n\
          \\fill ([shift={(256.0000:2.0mm)}]F) circle[radius=1pt];\n\
        \\end{scope}\n\
      \\end{tikzpicture}\n\
    \\end{center}\n\
    \\begin{equation*}\n\
      \\cos(\\varphi)=\\frac{h_{2}}{x}\n\
      \\qquad\n\
      \\cos(\\alpha_{1})=\\frac{h_{1}}{c}\n\
      \\qquad\n\
      \\cos(\\alpha_{2})=\\frac{h_{1}}{b}\n\
      \\qquad\n\
      \\cos(\\delta)=\\frac{h_{2}}{b}\n\
    \\end{equation*}\n\
  \\fi\n\
  \\ifoutcome\\outcome\n\
    \\begin{enumerate}[a)]\n\
      \\item Die Strecke $x$ lässt sich mit folgender Gleichung aus\n\
            den gegebenen Größen berechnen:\n\
            \\begin{equation*}\n\
              x=c\\cdot\\frac{\\sin^{2}\\beta}{\\sin(\\alpha+\\beta)\\cdot\\sin(\\alpha-\\beta)}\n\
            \\end{equation*}\n\
      \\item Aus den gegebenen Größen ergibt sich $x\\approx\\SI{4.18}{\\centi\\metre}$.\n\
      \\item In den ersten beiden Spezialfällen vereinfacht sich die Gleichung\n\
            zur Berechnung von $x$ zu:\n\
            \\begin{equation*}\n\
              x=\\frac{c}{2}\\qquad\\text{bzw.}\\qquad x=c\\cdot\\tan^{2}\\beta\n\
            \\end{equation*}\n\
            Falls $\\alpha=\\beta$ gilt, wird der Nenner Null. Die Strecke $x$\n\
            wird immer länger und der Schnittpunkt verlagert sich schließlich\n\
            ins Unendliche. Die Winkel $\\alpha$ und $\\beta$ werden zu\n\
            Wechselwinkeln an parallelen Geraden.\n\
    \\end{enumerate}\n\
  \\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

