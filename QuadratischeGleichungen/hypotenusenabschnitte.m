clear all;

addpath 'Octave/';

function [p q] = pqcalc(d, h)

  q = -(d / 2) + sqrt((d / 2)^2 + h^2);
  p = q + d;

endfunction

ad=3;
ah=2;
bd=15;
bh=10;
cd=12;
ch=8;
dd=10;
dh=12;
ed=9;
eh=6;
fd=7;
fh=12;
gd=6;
gh=4;
hd=5;
hh=6;

[ap aq] = pqcalc(ad, ah);
[bp bq] = pqcalc(bd, bh);
[cp cq] = pqcalc(cd, ch);
[dp dq] = pqcalc(dd, dh);
[ep eq] = pqcalc(ed, eh);
[fp fq] = pqcalc(fd, fh);
[gp gq] = pqcalc(gd, gh);
[hp hq] = pqcalc(hd, hh);

ins_ad = texnum(ad);
ins_ah = texnum(ah);
ins_ap = texnum(ap);
ins_aq = texnum(aq);
ins_bd = texnum(bd);
ins_bh = texnum(bh);
ins_bp = texnum(bp);
ins_bq = texnum(bq);
ins_cd = texnum(cd);
ins_ch = texnum(ch);
ins_cp = texnum(cp);
ins_cq = texnum(cq);
ins_dd = texnum(dd);
ins_dh = texnum(dh);
ins_dp = texnum(dp);
ins_dq = texnum(dq);
ins_ed = texnum(ed);
ins_eh = texnum(eh);
ins_ep = texnum(ep);
ins_eq = texnum(eq);
ins_fd = texnum(fd);
ins_fh = texnum(fh);
ins_fp = texnum(fp);
ins_fq = texnum(fq);
ins_gd = texnum(gd);
ins_gh = texnum(gh);
ins_gp = texnum(gp);
ins_gq = texnum(gq);
ins_hd = texnum(hd);
ins_hh = texnum(hh);
ins_hp = texnum(hp);
ins_hq = texnum(hq);

printf("\\begin{exercise}\n");
printf("      {ID-cd9a0332d23af571cbbb60b6857242ec45bc9797}\n");
printf("      {Hypotenusenabschnitte}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    In einem rechtwinkligen Dreieck unterscheiden sich die Hypotenusenabschnitte\n");
printf("    $p$ und $q$ um $d$\\,cm. Die zugehörige Höhe besitzt eine Länge von $h$\\,cm.\n");
printf("    Berechne $p$ und $q$, wobei $p$ den längeren und $q$ den kürzeren\n");
printf("    Hypotenusenabschnitt bezeichnet.\n");
printf("    \\begin{center}\n");
printf("      \\newcommand{\\w}[1]{\\makebox[1.5em][r]{#1}}%%\n");
printf("      \\renewcommand{\\arraystretch}{1.25}%%\n");
printf("      \\begin{tabular}{|c|r|r|r|r|r|r|r|r|}\n");
printf("        \\hline\n");
printf("        $d$ & \\w{%s} & \\w{%s} & \\w{%s} & \\w{%s} & \\w{%s} & \\w{%s} & \\w{%s} & \\w{%s} \\\\\n", ins_ad, ins_bd, ins_cd, ins_dd, ins_ed, ins_fd, ins_gd, ins_hd);
printf("        \\hline\n");
printf("        $h$ & %s & %s & %s & %s & %s & %s & %s & %s \\\\\n", ins_ah, ins_bh, ins_ch, ins_dh, ins_eh, ins_fh, ins_gh, ins_hh);
printf("        \\hline\n");
printf("        $p$ & & & & & & & & \\\\\n");
printf("        \\hline\n");
printf("        $q$ & & & & & & & & \\\\\n");
printf("        \\hline\n");
printf("      \\end{tabular}\n");
printf("    \\end{center}\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\\par\n");
printf("    \\begin{minipage}{7cm}\n");
printf("      \\centering\n");
printf("      \\begin{tikzpicture}[scale=0.4]\n");
printf("        \\coordinate (A) at (0, 0);\n");
printf("        \\coordinate (B) at (13, 0);\n");
printf("        \\coordinate (C) at (4, 6);\n");
printf("        \\coordinate (F) at (4, 0);\n");
printf("        %% Rand\n");
printf("        \\draw (A) -- (B) -- (C) -- cycle;\n");
printf("        %% Hoehe\n");
printf("        \\draw (C) -- (F);\n");
printf("        %% Eckpunkte\n");
printf("        \\fill (A) circle[radius=2.5pt];\n");
printf("        \\fill (B) circle[radius=2.5pt];\n");
printf("        \\fill (C) circle[radius=2.5pt];\n");
printf("        %% Beschriftung\n");
printf("        \\node[below left]  at (A) {$A$};\n");
printf("        \\node[below right] at (B) {$B$};\n");
printf("        \\node[above]       at (C) {$C$};\n");
printf("        \\path (A) -- node[below]{$q$} (F) -- node[below]{$p$} (B);\n");
printf("        \\path (F) -- node[right]{$h$} (C);\n");
printf("        %% rechter Winkel\n");
printf("        \\begin{scope}\n");
printf("          \\clip (A) -- (B) -- (C) -- cycle;\n");
printf("          \\draw (C) circle[radius=15mm];\n");
printf("          \\fill[fill=white] ($(C)!8mm!45:(A)$) circle[radius=6pt];\n");
printf("          \\fill[fill=black] ($(C)!8mm!45:(A)$) circle[radius=3pt];\n");
printf("        \\end{scope}\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{minipage}%%\n");
printf("    \\hfill\n");
printf("    \\begin{minipage}{8cm}\n");
printf("      \\newcommand{\\fakew}[3]{\\hphantom{#1}\\makebox[0pt][#2]{#3}}%%\n");
printf("      \\begin{equation*}\n");
printf("        \\begin{split}\n");
printf("          h^2&=p\\cdot q\\quad\\text{und}\\quad d=p-q\\\\[1ex]\n");
printf("          \\Rightarrow\\quad h^2&=(d+q)\\cdot q=q^2+dq\\\\[1ex]\n");
printf("          \\Rightarrow\\quad \\fakew{h^2}{r}{0}&=q^2+dq-h^2\n");
printf("        \\end{split}\n");
printf("      \\end{equation*}\n");
printf("    \\end{minipage}\\bigskip\\par\n");
printf("    Im Kontext dieser Aufgabenstellung kommen nur positive $q$ als Lösung in Frage,\n");
printf("    also gilt:\n");
printf("    \\begin{equation*}\n");
printf("      q=-\\frac{d}{2}+\\sqrt{\\left(\\frac{d}{2}\\right)^2+h^2}\n");
printf("      \\qquad\\text{und}\\qquad\n");
printf("      p=q+d\n");
printf("    \\end{equation*}\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    \\begin{center}\n");
printf("      \\newcommand{\\w}[1]{\\makebox[1.5em][r]{#1}}%%\n");
printf("      \\renewcommand{\\arraystretch}{1.25}%%\n");
printf("      \\begin{tabular}{|c|r|r|r|r|r|r|r|r|}\n");
printf("        \\hline\n");
printf("        $d$ & \\w{%s} & \\w{%s} & \\w{%s} & \\w{%s} & \\w{%s} & \\w{%s} & \\w{%s} & \\w{%s} \\\\\n", ins_ad, ins_bd, ins_cd, ins_dd, ins_ed, ins_fd, ins_gd, ins_hd);
printf("        \\hline\n");
printf("        $h$ & %s & %s & %s & %s & %s & %s & %s & %s \\\\\n", ins_ah, ins_bh, ins_ch, ins_dh, ins_eh, ins_fh, ins_gh, ins_hh);
printf("        \\hline\n");
printf("        $p$ & %s & %s & %s & %s & %s & %s & %s & %s \\\\\n", ins_ap, ins_bp, ins_cp, ins_dp, ins_ep, ins_fp, ins_gp, ins_hp);
printf("        \\hline\n");
printf("        $q$ & %s & %s & %s & %s & %s & %s & %s & %s \\\\\n", ins_aq, ins_bq, ins_cq, ins_dq, ins_eq, ins_fq, ins_gq, ins_hq);
printf("        \\hline\n");
printf("      \\end{tabular}\n");
printf("    \\end{center}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

