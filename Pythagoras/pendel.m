clear all;

addpath 'Octave/';

x = 80;
y = 25;
l = (x^2 + y^2) / (2 * y);

ins_x = sprintf("%d",   x);
ins_y = sprintf("%d",   y);
ins_l = sprintf("%.1f", l);

printf("\\begin{exercise}\n");
printf("      {ID-126b94e5583f1b4e31636a0353fe11814c14a4dd}\n");
printf("      {Pendel}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Wenn man ein Pendel \\sicm{%s} zur Seite auslenkt, hängt das Gewicht \\sicm{%s}\n", ins_x, ins_y);
printf("    höher als in Ruhelage. Wie lang ist das Pendel?\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}\n");
printf("        %% unten\n");
printf("        \\coordinate (A) at (270:4cm);\n");
printf("        %% oben\n");
printf("        \\coordinate (B) at (0, 0);\n");
printf("        %% rechts\n");
printf("        \\coordinate (C) at (305:4cm);\n");
printf("        %% Schnittpunkt der Hilfslinien\n");
printf("        \\coordinate (D) at (intersection of C--[yshift=-10cm]C and A--[xshift=10cm]A);\n");
printf("        %% Hilfslinien\n");
printf("        \\draw[draw=white!50!black] (A) -| (C);\n");
printf("        %% das Pendel\n");
printf("        \\draw[line width=0.8pt] (A) -- (B) -- (C);\n");
printf("        %% Kreislinie\n");
printf("        \\draw[style=dashed] (A) arc (270:305:4cm);\n");
printf("        %% Gewichte\n");
printf("        \\fill (A) circle (2pt);\n");
printf("        \\fill (C) circle (2pt);\n");
printf("        %% Masse\n");
printf("        \\draw[|<->|, >=latex] ([yshift=-3mm]A) -- node[below]{{\\small\\sicm{%s}}} ([yshift=-3mm]D);\n", ins_x);
printf("        \\draw[|<->|, >=latex] ([xshift=3mm]C) -- node[right]{{\\small\\sicm{%s}}} ([xshift=3mm]D);\n", ins_y);
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\\par\n");
printf("    \\begin{center}%%\n");
printf("      \\begin{tikzpicture}\n");
printf("        %% unten\n");
printf("        \\coordinate (A) at (270:4cm);\n");
printf("        %% oben\n");
printf("        \\coordinate (B) at (0, 0);\n");
printf("        %% rechts\n");
printf("        \\coordinate (C) at (305:4cm);\n");
printf("        %% Projektion auf die y-Achse\n");
printf("        \\path (C) -| coordinate (E) (A);\n");
printf("        %% Hilfslinien und Punkt D\n");
printf("        \\draw[draw=white!50!black] (A) -| coordinate (D) (C);\n");
printf("        %% das Pendel\n");
printf("        \\draw[line width=0.8pt] (A) -- (B) -- (C);\n");
printf("        %% Kreislinie\n");
printf("        \\draw[style=dashed] (A) arc (270:305:4cm);\n");
printf("        %% Gewichte\n");
printf("        \\fill (A) circle (2pt);\n");
printf("        \\fill (C) circle (2pt);\n");
printf("        %% fehlende Kathete\n");
printf("        \\draw[draw=white!50!black] (C) -- (E);\n");
printf("        %% rechter Winkel\n");
printf("        \\draw[draw=white!50!black] ([xshift=5mm]E) arc[start angle=0, end angle=90, radius=5mm];\n");
printf("        \\fill[fill=white!50!black] ([shift={(45:2.6mm)}]E) circle[radius=1.25pt];\n");
printf("        %% Beschriftung\n");
printf("        \\draw[|<->|, >=latex] ([yshift=-3mm]A) -- node[below]{$x$} ([yshift=-3mm]D);\n");
printf("        \\draw[|<->|, >=latex] ([xshift=3mm]C) -- node[right]{$y$} ([xshift=3mm]D);\n");
printf("        \\path (E) -- node[rotate=90, above]{$\\ell-y$} (B);\n");
printf("        \\path (B) -- node[above right]{$\\ell$} (C);\n");
printf("        %% Gleichungen\n");
printf("        \\node[right] at (4, -2)\n");
printf("        {%%\n");
printf("          \\begin{minipage}{4cm}\n");
printf("            \\setlength{\\abovedisplayskip}{0pt}%%\n");
printf("            \\begin{equation*}\n");
printf("              \\ell^2=x^2+(\\ell-y)^2\n");
printf("            \\end{equation*}\n");
printf("          \\end{minipage}%%\n");
printf("        };\n");
printf("      \\end{tikzpicture}%%\n");
printf("    \\end{center}\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    Das Pendel ist \\sicm{%s} lang.\n", ins_l);
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

