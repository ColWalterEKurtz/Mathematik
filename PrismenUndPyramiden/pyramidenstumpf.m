clear all;

addpath 'Octave/';

function H = totalheight(a, b, h)

  H = (a * h) / (a - b);

endfunction

function V = volume(a, h)

  V = 1/3 * a * a * h;

endfunction

a1 = 6;
a2 = 8;
a3 = 9;
a4 = 15;
a5 = 20;
b1 = 4;
b2 = 7;
b3 = 6;
b4 = 9;
b5 = 14;
h1 = 7;
h2 = 3;
h3 = 5;
h4 = 8;
h5 = 6;
H1 = totalheight(a1, b1, h1);
H2 = totalheight(a2, b2, h2);
H3 = totalheight(a3, b3, h3);
H4 = totalheight(a4, b4, h4);
H5 = totalheight(a5, b5, h5);
V1 = volume(a1, H1) - volume(b1, (H1 - h1)) - volume(b1, h1);
V2 = volume(a2, H2) - volume(b2, (H2 - h2)) - volume(b2, h2);
V3 = volume(a3, H3) - volume(b3, (H3 - h3)) - volume(b3, h3);
V4 = volume(a4, H4) - volume(b4, (H4 - h4)) - volume(b4, h4);
V5 = volume(a5, H5) - volume(b5, (H5 - h5)) - volume(b5, h5);
ins_a1 = texnum(a1);
ins_a2 = texnum(a2);
ins_a3 = texnum(a3);
ins_a4 = texnum(a4);
ins_a5 = texnum(a5);
ins_b1 = texnum(b1);
ins_b2 = texnum(b2);
ins_b3 = texnum(b3);
ins_b4 = texnum(b4);
ins_b5 = texnum(b5);
ins_h1 = texnum(h1);
ins_h2 = texnum(h2);
ins_h3 = texnum(h3);
ins_h4 = texnum(h4);
ins_h5 = texnum(h5);
ins_V1 = texnum(V1);
ins_V2 = texnum(V2);
ins_V3 = texnum(V3);
ins_V4 = texnum(V4);
ins_V5 = texnum(V5);

printf("\\begin{exercise}\n");
printf("      {ID-90e44bba82cbd1b5985b3aba6158140367a7856e}\n");
printf("      {Pyramidenstumpf}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Aus dem Stumpf einer quadratischen Pyramide wurde eine auf dem Kopf\n");
printf("    stehende kleine quadratische Pyramide ausgeschnitten. Ihre Spitze\n");
printf("    reicht bis auf den Boden des Pyramidenstumpfs. Berechne das verbleibende\n");
printf("    Volumen dieses Pyramidenstumpfs.\\par\n");
printf("    \\begin{minipage}{0.45\\linewidth}%%\n");
printf("      \\begin{tikzpicture}[scale=0.4]\n");
printf("        %% Koordinaten\n");
printf("        \\coordinate (A) at ( -6.8750,  -1.2500);\n");
printf("        \\coordinate (B) at (  3.1250,  -1.2500);\n");
printf("        \\coordinate (C) at (  6.8750,   1.2500);\n");
printf("        \\coordinate (D) at ( -3.1250,   1.2500);\n");
printf("        \\coordinate (E) at ( -4.1250,   4.2500);\n");
printf("        \\coordinate (F) at (  1.8750,   4.2500);\n");
printf("        \\coordinate (G) at (  4.1250,   5.7500);\n");
printf("        \\coordinate (H) at ( -1.8750,   5.7500);\n");
printf("        \\coordinate (I) at (  0.0000,   0.0000);\n");
printf("        %% Hilfspunkte\n");
printf("        \\coordinate (AB) at ($(A)!0.5!(B)$);\n");
printf("        \\coordinate (CD) at ($(C)!0.5!(D)$);\n");
printf("        \\coordinate (BC) at ($(B)!0.5!(C)$);\n");
printf("        \\coordinate (AD) at ($(A)!0.5!(D)$);\n");
printf("        \\coordinate (FG) at ($(F)!0.5!(G)$);\n");
printf("        \\coordinate (GH) at ($(G)!0.5!(H)$);\n");
printf("        \\coordinate (EH) at ($(E)!0.5!(H)$);\n");
printf("        \\coordinate (VBT) at ([xshift=5cm]FG);\n");
printf("        \\coordinate (VBB) at ([xshift=3cm]BC);\n");
printf("        \\begin{scope}[line width=0.6pt]\n");
printf("          %% sichtbare Linien\n");
printf("          \\begin{scope}\n");
printf("            \\draw (A) -- (B) -- (C);\n");
printf("            \\draw (E) -- (F) -- (G) -- (H) -- cycle;\n");
printf("            \\draw (A) -- (E);\n");
printf("            \\draw (B) -- (F);\n");
printf("            \\draw (C) -- (G);\n");
printf("          \\end{scope}\n");
printf("          %% verdeckte Linien\n");
printf("          \\begin{scope}[style=dashed]\n");
printf("            \\draw (C) -- (D) -- (A);\n");
printf("            \\draw (D) -- (H);\n");
printf("            \\draw (E) -- (I);\n");
printf("            \\draw (F) -- (I);\n");
printf("            \\draw (G) -- (I);\n");
printf("            \\draw (H) -- (I);\n");
printf("          \\end{scope}\n");
printf("          %% Hilfslinien\n");
printf("          \\begin{scope}[style=dotted]\n");
printf("            \\draw (AB) -- (CD);\n");
printf("            \\draw (BC) -- (AD);\n");
printf("            \\draw (FG) -- (EH);\n");
printf("            \\draw (BC) -- (VBB);\n");
printf("            \\draw (FG) -- (VBT);\n");
printf("          \\end{scope}\n");
printf("          \\draw[decorate, decoration=brace] (VBT) -- node[right=2pt]{$h$} (VBB);\n");
printf("        \\end{scope}\n");
printf("        \\node[below] at (AB) {$a$};\n");
printf("        \\node[above] at (GH) {$b$};\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{minipage}%%\n");
printf("    \\hfill\n");
printf("    \\begin{minipage}{0.54\\linewidth}%%\n");
printf("      \\flushright\n");
printf("      \\newcommand{\\cbox}[1]{\\vphantom{\\ensuremath{\\displaystyle\\Big(}}\\makebox[2.4em][r]{#1}}%%\n");
printf("      \\begin{tabular}{|c|r|r|r|r|r|}\n");
printf("        \\hline\n");
printf("        $a$ & %s & %s & %s & %s & %s \\\\\n", ins_a1, ins_a2, ins_a3, ins_a4, ins_a5);
printf("        $b$ & %s & %s & %s & %s & %s \\\\\n", ins_b1, ins_b2, ins_b3, ins_b4, ins_b5);
printf("        $h$ & %s & %s & %s & %s & %s \\\\\n", ins_h1, ins_h2, ins_h3, ins_h4, ins_h5);
printf("        \\hline\n");
printf("        $V$ & \\cbox{} & \\cbox{} & \\cbox{} & \\cbox{} & \\cbox{} \\\\\n");
printf("        \\hline\n");
printf("      \\end{tabular}%%\n");
printf("    \\end{minipage}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    \\begin{center}\n");
printf("      \\newcommand{\\cbox}[1]{\\vphantom{\\ensuremath{\\displaystyle\\Big(}}\\makebox[2.4em][r]{#1}}%%\n");
printf("      \\begin{tabular}{|c|r|r|r|r|r|}\n");
printf("        \\hline\n");
printf("        $a$ & %s & %s & %s & %s & %s \\\\\n", ins_a1, ins_a2, ins_a3, ins_a4, ins_a5);
printf("        $b$ & %s & %s & %s & %s & %s \\\\\n", ins_b1, ins_b2, ins_b3, ins_b4, ins_b5);
printf("        $h$ & %s & %s & %s & %s & %s \\\\\n", ins_h1, ins_h2, ins_h3, ins_h4, ins_h5);
printf("        \\hline\n");
printf("        $V$ & \\cbox{%s} & \\cbox{%s} & \\cbox{%s} & \\cbox{%s} & \\cbox{%s} \\\\\n", ins_V1, ins_V2, ins_V3, ins_V4, ins_V5);
printf("        \\hline\n");
printf("      \\end{tabular}%%\n");
printf("    \\end{center}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

