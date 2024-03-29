clear all;

%%% addpath 'Octave/';

%%% NO CALCULATIONS YET %%%

printf("\\begin{exercise}\n");
printf("      {ID-d175c5cfaef70166600d7fbfceb9139726dd8972}\n");
printf("      {Ebene mit einem Parameter}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Bestimmen Sie den Wert für $a\\in\\mathbb{R}$ so, dass\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item die Ebene\n");
printf("            \\begin{equation*}\n");
printf("              E:\\vec{x}=\n");
printf("              \\begin{pmatrix}5\\\\6\\\\a\\end{pmatrix}\n");
printf("              +r\\cdot\n");
printf("              \\begin{pmatrix}2\\\\3\\\\-1\\end{pmatrix}\n");
printf("              +s\\cdot\n");
printf("              \\begin{pmatrix}1\\\\0\\\\4\\end{pmatrix}\n");
printf("              ,\\quad r,s\\in\\mathbb{R}\n");
printf("            \\end{equation*}\n");
printf("            durch den Ursprung verläuft.\n");
printf("      \\item die Gleichung\n");
printf("            \\begin{equation*}\n");
printf("              E:\\vec{x}=\n");
printf("              \\begin{pmatrix}1\\\\2\\\\-1\\end{pmatrix}\n");
printf("              +r\\cdot\n");
printf("              \\begin{pmatrix}-3\\\\-6\\\\a\\end{pmatrix}\n");
printf("              +s\\cdot\n");
printf("              \\begin{pmatrix}a\\\\2a\\\\a\\end{pmatrix}\n");
printf("              ,\\quad r,s\\in\\mathbb{R}\n");
printf("            \\end{equation*}\n");
printf("            keine Ebene beschreibt.\n");
printf("    \\end{enumerate}\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    %% </OUTLINE>\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    %% <OUTCOME>\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Wenn der Ursprung $O\\left(0\\;\\middle|\\;0\\;\\middle|\\;0\\right)$\n");
printf("            auf der Ebene $E$ liegen soll, muss folgende Gleichung\n");
printf("            erfüllt sein:\n");
printf("            \\begin{equation*}\n");
printf("              \\begin{pmatrix}0\\\\0\\\\0\\end{pmatrix}\n");
printf("              =\n");
printf("              \\begin{pmatrix}5\\\\6\\\\a\\end{pmatrix}\n");
printf("              +r\\cdot\n");
printf("              \\begin{pmatrix}2\\\\3\\\\-1\\end{pmatrix}\n");
printf("              +s\\cdot\n");
printf("              \\begin{pmatrix}1\\\\0\\\\4\\end{pmatrix}\n");
printf("            \\end{equation*}\n");
printf("            Diese Vektorgleichung führt zu dem Gleichungssystem:\n");
printf("            \\begin{align*}\n");
printf("              &\n");
printf("              \\begin{array}{r|rcrcrcrl}\n");
printf("                  \\text{I.} & 0 & = & 5 & + & 2r & + &  s & \\quad|-5 \\\\\n");
printf("                 \\text{II.} & 0 & = & 6 & + & 3r &   &    & \\quad|-6 \\\\\n");
printf("                \\text{III.} & 0 & = & a & - &  r & + & 4s & \\quad\n");
printf("              \\end{array}\n");
printf("              \\\\[2ex]\n");
printf("              &\n");
printf("              \\begin{array}{r|rcrcrcrl}\n");
printf("                  \\text{I.} & -5 & = &   &   & 2r & + &  s & \\quad    \\\\\n");
printf("                 \\text{II.} & -6 & = &   &   & 3r &   &    & \\quad|:3 \\\\\n");
printf("                \\text{III.} &  0 & = & a & - &  r & + & 4s & \\quad\n");
printf("              \\end{array}\n");
printf("              \\\\[2ex]\n");
printf("              &\n");
printf("              \\begin{array}{r|rcrcrcrl}\n");
printf("                  \\text{I.} & -5 & = &   &   & 2r & + &  s & \\quad|\\;r=-2 \\\\\n");
printf("                 \\text{II.} & -2 & = &   &   &  r &   &    & \\quad        \\\\\n");
printf("                \\text{III.} &  0 & = & a & - &  r & + & 4s & \\quad|\\;r=-2\n");
printf("              \\end{array}\n");
printf("              \\\\[2ex]\n");
printf("              &\n");
printf("              \\begin{array}{r|rcrcrcrl}\n");
printf("                  \\text{I.} & -5 & = &   &   & -4 & + &  s & \\quad|+4 \\\\\n");
printf("                 \\text{II.} & -2 & = &   &   &  r &   &    & \\quad    \\\\\n");
printf("                \\text{III.} &  0 & = & a & + &  2 & + & 4s & \\quad|-2\n");
printf("              \\end{array}\n");
printf("              \\\\[2ex]\n");
printf("              &\n");
printf("              \\begin{array}{r|rcrcrcrl}\n");
printf("                  \\text{I.} & -1 & = &   & &   &   &  s & \\quad \\\\\n");
printf("                 \\text{II.} & -2 & = &   & & r &   &    & \\quad \\\\\n");
printf("                \\text{III.} & -2 & = & a & &   & + & 4s & \\quad|\\;s=-1\n");
printf("              \\end{array}\n");
printf("              \\\\[2ex]\n");
printf("              &\n");
printf("              \\begin{array}{r|rcrcrcrl}\n");
printf("                  \\text{I.} & -1 & = &   & &   &   & s & \\quad \\\\\n");
printf("                 \\text{II.} & -2 & = &   & & r &   &   & \\quad \\\\\n");
printf("                \\text{III.} & -2 & = & a & &   & - & 4 & \\quad|+4\n");
printf("              \\end{array}\n");
printf("              \\\\[2ex]\n");
printf("              &\n");
printf("              \\begin{array}{r|rcrcrcrl}\n");
printf("                  \\text{I.} & -1 & = &   & &   & & s & \\quad \\\\\n");
printf("                 \\text{II.} & -2 & = &   & & r & &   & \\quad \\\\\n");
printf("                \\text{III.} &  2 & = & a & &   & &   & \\quad\n");
printf("              \\end{array}\n");
printf("            \\end{align*}\n");
printf("            Wenn man $a=2$ wählt, kann man den\n");
printf("            Ursprung mit $r=-2$ und $s=-1$ erreichen.\n");
printf("      \\item Damit die Lösungsmenge der Gleichung\n");
printf("            keine Ebene beschreibt, müssen die\n");
printf("            Spannvektoren linear abhängig sein,\n");
printf("            also:\n");
printf("            \\begin{equation*}\n");
printf("              \\begin{pmatrix}0\\\\0\\\\0\\end{pmatrix}\n");
printf("              =\n");
printf("              r\\cdot\n");
printf("              \\begin{pmatrix}-3\\\\-6\\\\a\\end{pmatrix}\n");
printf("              +s\\cdot\n");
printf("              \\begin{pmatrix}a\\\\2a\\\\a\\end{pmatrix}\n");
printf("              \\quad\\Rightarrow\\quad\n");
printf("              \\exists\\,\\{r;s\\}\\neq\\{0\\}\n");
printf("            \\end{equation*}\n");
printf("            Diese Vektorgleichung führt zu dem Gleichungssystem:\n");
printf("            \\begin{align*}\n");
printf("              &\n");
printf("              \\begin{array}{r|rcrcrl}\n");
printf("                  \\text{I.} & 0 & = & -3r & + &  as &\\quad    \\\\\n");
printf("                 \\text{II.} & 0 & = & -6r & + & 2as &\\quad|:2 \\\\\n");
printf("                \\text{III.} & 0 & = &  ar & + &  as &\\quad\n");
printf("              \\end{array}\n");
printf("              \\\\[2ex]\n");
printf("              &\n");
printf("              \\begin{array}{r|rcrcrl}\n");
printf("                  \\text{I.} & 0 & = & -3r & + & as &\\quad \\\\\n");
printf("                 \\text{II.} & 0 & = & -3r & + & as &\\quad \\\\\n");
printf("                \\text{III.} & 0 & = &  ar & + & as &\\quad\n");
printf("              \\end{array}\n");
printf("              \\intertext{Die Zeilen I. und II. stimmen überein, so dass man eine davon streichen kann:}\n");
printf("              &\n");
printf("              \\begin{array}{r|rcrcrl}\n");
printf("                 \\text{I.} & 0 & = & -3r & + & as &\\quad \\\\\n");
printf("                \\text{II.} & 0 & = &  ar & + & as &\\quad\n");
printf("              \\end{array}\n");
printf("              \\intertext{Mit der Festlegung $\\mathbb{D}_a=\\mathbb{R}\\setminus\\{0\\}$ kann fortgesetzt werden:}\n");
printf("              &\n");
printf("              \\begin{array}{r|rcrcrl}\n");
printf("                 \\text{I.} & 0 & = & -3r & + & as &\\quad \\\\\n");
printf("                \\text{II.} & 0 & = &  ar & + & as &\\quad|:a\n");
printf("              \\end{array}\n");
printf("              \\\\[2ex]\n");
printf("              &\n");
printf("              \\begin{array}{r|rcrcrl}\n");
printf("                 \\text{I.} & 0 & = & -3r & + & as &\\quad|\\;r=-s \\\\\n");
printf("                \\text{II.} & 0 & = &   r & + &  s &\\quad\n");
printf("              \\end{array}\n");
printf("              \\\\[2ex]\n");
printf("              &\n");
printf("              \\begin{array}{r|rcrcrl}\n");
printf("                 \\text{I.} & 0 & = & 3s & + & as &\\quad \\\\\n");
printf("                \\text{II.} & 0 & = &  r & + &  s &\\quad\n");
printf("              \\end{array}\n");
printf("              \\\\[2ex]\n");
printf("              &\n");
printf("              \\begin{array}{r|rcrcrl}\n");
printf("                 \\text{I.} & 0 & = &   &   & (3+a)\\cdot s &\\quad \\\\\n");
printf("                \\text{II.} & 0 & = & r & + &            s &\\quad\n");
printf("              \\end{array}\n");
printf("            \\end{align*}\n");
printf("            Mit $-3\\neq a\\in\\mathbb{D}_a$ besitzt das\n");
printf("            Gleichungssystem nur die triviale Lösung\n");
printf("            $r=s=0$.\n");
printf("            Die Spannvektoren wären also linear unabhängig\n");
printf("            und würden eine Ebene aufspannen.\n");
printf("            Für $a=-3$ erhält man die nicht-trivialen\n");
printf("            Lösungen $r=-s$, und damit linear\n");
printf("            abhängige Vektoren, die keine Ebene\n");
printf("            mehr aufspannen.\\par\n");
printf("            Da $0\\not\\in\\mathbb{D}_a$, trifft das\n");
printf("            Gleichungssystem keine Aussage für\n");
printf("            diesen Fall, und man muss ihn gesondert\n");
printf("            betrachten.\n");
printf("            Mit $a=0$ entartet der zweite Richtungsvektor\n");
printf("            der Gleichung zum Nullvektor, und es\n");
printf("            ergibt sich ebenfalls keine Ebene als\n");
printf("            Lösungsmenge mehr.\n");
printf("    \\end{enumerate}\n");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

