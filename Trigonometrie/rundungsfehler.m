clear all;

fmtstr = ["\
\\begin{exercise}{trigonometrie.rundungsfehler}{Rundungsfehler}\n\
  \\ifproblem\\problem\\par\n\
    Um die Höhe $h$ einer Wand zu bestimmen, wurde im Abstand\n\
    $a=\\SI{3.64}{\\metre}$ der Winkel $\\alpha=\\SI{32}{\\degree}$\n\
    gemessen. Abstand und Winkel wurden auf die angegebenen\n\
    Werte gerundet. Bestimme den kleinsten und den größten\n\
    Wert für die Höhe der Wand, die sich aus den gerundeten\n\
    Messgrößen ergeben können.\n\
    \\begin{center}\n\
      \\begin{tikzpicture}\n\
        %% Info\n\
        %% a       =     2.2745\n\
        %% b       =     4.2922\n\
        %% c       =     3.6400\n\
        %% alpha   =    32.0000\n\
        %% beta    =    90.0000\n\
        %% gamma   =    58.0000\n\
        %% ha      =     3.6400\n\
        %% hb      =     1.9289\n\
        %% hc      =     2.2745\n\
        %% flaeche =     4.1396\n\
        %% Koordinaten der Eckpunkte\n\
        \\coordinate (A) at (0.0000, 0.0000);\n\
        \\coordinate (B) at (3.6400, 0.0000);\n\
        \\coordinate (C) at (3.6400, 2.2745);\n\
        %% Koordinaten der Seitenmittelpunkte\n\
        \\coordinate (MAB) at (1.8200, 0.0000);\n\
        \\coordinate (MAC) at (1.8200, 1.1373);\n\
        \\coordinate (MBC) at (3.6400, 1.1373);\n\
        %% Koordinaten des Inkreismittelpunktes (r = 0.8112)\n\
        \\coordinate (I) at (2.8288, 0.8112);\n\
        %% Seiten des Dreiecks\n\
        \\draw[line width=0.6pt] (A) -- (B) -- (C) -- cycle;\n\
        %% Eckpunkte\n\
        %%\\fill (A) circle[radius=1pt];\n\
        %%\\fill (B) circle[radius=1pt];\n\
        %%\\fill (C) circle[radius=1pt];\n\
        %% Beschriftung der Seiten\n\
        \\node at ($(MAB)!3mm!270:(B)$) {$a$};\n\
        \\node at ($(MBC)!3mm!270:(C)$) {$h$};\n\
        %% Beschriftung der Winkel\n\
        \\begin{scope}\n\
          \\clip (A) -- (B) -- (C) -- cycle;\n\
          \\draw (A) circle[radius=1];\n\
          \\node at ($(A)!6mm!(I)$) {{\\small$\\alpha$}};\n\
          \\draw (B) circle[radius=0.5];\n\
          \\fill ($(B)!2.5mm!(I)$) circle[radius=1pt];\n\
        \\end{scope}\n\
      \\end{tikzpicture}\n\
    \\end{center}\n\
  \\fi\n\
  %%\\ifoutline\\outline\\par\n\
  %%\\fi\n\
  %%\\ifoutcome\\outcome\\par\n\
  %%\\fi\n\
\\end{exercise}\n\
"];

printf(fmtstr);

