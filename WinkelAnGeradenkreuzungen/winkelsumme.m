clear all;

%%% addpath 'Octave/';

function vnode()
  printf("        \\newcommand{\\vnode}[5]%%\n");
  printf("        {%%\n");
  printf("          \\begin{scope}%%\n");
  printf("            \\coordinate (S1) at ($(#2)!1cm!0:(#3)$);\n");
  printf("            \\coordinate (S2) at ($(#2)!1cm!0:(#4)$);\n");
  printf("            \\coordinate (M)  at ($(S1)!0.5!0:(S2)$);\n");
  printf("            \\node at ($(#2)!#5!180:(M)$) {#1};\n");
  printf("          \\end{scope}%%\n");
  printf("        }%%\n");
endfunction

function dreieck()
  printf("        \\coordinate (A) at (0, 0);\n");
  printf("        \\coordinate (B) at (4, 0);\n");
  printf("        \\coordinate (C) at (3, 3);\n");
  printf("        \\fill (A) circle[radius=1.25pt];\n");
  printf("        \\fill (B) circle[radius=1.25pt];\n");
  printf("        \\fill (C) circle[radius=1.25pt];\n");
  printf("        \\draw ($(A)!9mm!180:(B)$) -- ($(B)!9mm!180:(A)$);\n");
  printf("        \\draw ($(B)!9mm!180:(C)$) -- ($(C)!9mm!180:(B)$);\n");
  printf("        \\draw ($(C)!9mm!180:(A)$) -- ($(A)!9mm!180:(C)$);\n");
  printf("        \\begin{scope}\n");
  printf("          \\clip (A) -- (B) -- (C);\n");
  printf("          \\draw (A) circle[radius=8mm];\n");
  printf("          \\draw (B) circle[radius=8mm];\n");
  printf("          \\draw (C) circle[radius=8mm];\n");
  printf("        \\end{scope}\n");
  printf("        \\vnode{$\\alpha$}{A}{B}{C}{-5mm};\n");
  printf("        \\vnode{$\\beta$} {B}{C}{A}{-5.5mm};\n");
  printf("        \\vnode{$\\gamma$}{C}{A}{B}{-5mm};\n");
  printf("        \\node[above left] at (A) {$A$};\n");
  printf("        \\node[below=3pt]  at (B) {$B\\;\\,$};\n");
  printf("        \\vnode{$C$}{C}{A}{B}{5mm};\n");
endfunction

printf("\\begin{exercise}\n");
printf("      {ID-249e2640053bdb6e974127140c8bd5799ea9c1f3}\n");
printf("      {Winkelsumme}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Drei Geraden schneiden sich so in den Punkten\n");
printf("    $A$, $B$ und $C$, dass ein Dreieck entsteht.\n");
printf("    Wie groß sind die Winkel $\\alpha$, $\\beta$ und\n");
printf("    $\\gamma$ zusammen?\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}[rotate=25, line width=0.7pt]\n");
vnode();
dreieck();
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    %% </OUTLINE>\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    %% <OUTCOME>\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}[rotate=25, line width=0.7pt]\n");
vnode();
dreieck();
printf("      \\end{tikzpicture}%%\n");
printf("      \\hspace{2cm}%%\n");
printf("      \\begin{tikzpicture}[rotate=25, line width=0.7pt]\n");
vnode();
dreieck();
printf("        \\coordinate (D) at ([yshift=3cm]$(A)!9mm!180:(B)$);\n");
printf("        \\coordinate (E) at ([yshift=3cm]$(B)!9mm!180:(A)$);\n");
printf("        \\draw (D) -- (E);\n");
printf("        \\begin{scope}\n");
printf("          \\clip (A) -- (C) -- (D) -- cycle;\n");
printf("          \\draw (C) circle[radius=12mm];\n");
printf("        \\end{scope}\n");
printf("        \\begin{scope}\n");
printf("          \\clip (B) -- (E) -- (C) -- cycle;\n");
printf("          \\draw (C) circle[radius=10mm];\n");
printf("        \\end{scope}\n");
printf("        \\vnode{$\\alpha'$}{C}{A}{D}{-8mm};\n");
printf("        \\vnode{$\\beta'$}{C}{B}{E}{-6mm};\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

