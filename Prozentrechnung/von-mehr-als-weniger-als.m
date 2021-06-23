clear all;

addpath 'Octave/';

printf("\\begin{exercise}\n");
printf("      {ID-797012f1faa18c18c26785bbd21015ab6096071e}\n");
printf("      {Von -- mehr als -- weniger als}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Übersetze in einen Term und berechne:\\\\\n");
printf("    \\begin{minipage}[t]{0.32\\textwidth}\n");
printf("      \\begin{enumerate}[a)]\n");
printf("        \\item \\pc{5} von 30\\,kg\n");
printf("        \\item \\pc{5} mehr als 30\\,kg\n");
printf("        \\item \\pc{5} weniger als 30\\,kg\n");
printf("      \\end{enumerate}\n");
printf("    \\end{minipage}%%\n");
printf("    \\hfill\n");
printf("    \\begin{minipage}[t]{0.32\\textwidth}\n");
printf("      \\begin{enumerate}[a)]\n");
printf("        \\setcounter{enumi}{3}\n");
printf("        \\item \\pc{75} von 6\\,m\n");
printf("        \\item \\pc{75} mehr als 6\\,m\n");
printf("        \\item \\pc{75} weniger als 6\\,m\n");
printf("      \\end{enumerate}\n");
printf("    \\end{minipage}%%\n");
printf("    \\hfill\n");
printf("    \\begin{minipage}[t]{0.32\\textwidth}\n");
printf("      \\begin{enumerate}[a)]\n");
printf("        \\setcounter{enumi}{6}\n");
printf("        \\item \\pc{400} von \\eur{50}\n");
printf("        \\item \\pc{400} mehr als \\eur{50}\n");
printf("        \\item \\pc{400} weniger als \\eur{50}\n");
printf("      \\end{enumerate}\n");
printf("    \\end{minipage}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    {\\setlength{\\abovedisplayskip}{0pt}%%\n");
printf("    \\begin{alignat*}{6}\n");
printf("      \\text{a)}&\\quad & \\num{0.05}\\cdot\\sikg{30}&=\\sikg{1.5}  & \\qquad\\text{d)}&\\quad & \\num{0.75}\\cdot\\simeter{6}&=\\simeter{4.5}  & \\qquad\\text{g)}&\\quad &  4\\cdot\\text{\\eur{50}}&=\\text{\\eur{200}}  \\\\[1ex]\n");
printf("      \\text{b)}&\\quad & \\num{1.05}\\cdot\\sikg{30}&=\\sikg{31.5} & \\qquad\\text{e)}&\\quad & \\num{1.75}\\cdot\\simeter{6}&=\\simeter{10.5} & \\qquad\\text{h)}&\\quad &  5\\cdot\\text{\\eur{50}}&=\\text{\\eur{250}}  \\\\[1ex]\n");
printf("      \\text{c)}&\\quad & \\num{0.95}\\cdot\\sikg{30}&=\\sikg{28.5} & \\qquad\\text{f)}&\\quad & \\num{0.25}\\cdot\\simeter{6}&=\\simeter{1.5}  & \\qquad\\text{i)}&\\quad & -3\\cdot\\text{\\eur{50}}&=\\text{\\eur{-150}}\n");
printf("    \\end{alignat*}}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

