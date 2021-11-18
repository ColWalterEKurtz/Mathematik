clear all;

addpath 'Octave/';

% --
% sd
% --
%
% string decimal
%
% x       number to convert
% opt(1)  maxdcp
% opt(2)  addbrn
% opt(3)  addbrf
% opt(4)  addsgn
% opt(5)  addtex
%
function str = sd(x, opt = [7 0 0 0 1])
  str = myn2s(x, opt(1), opt(2), opt(3), opt(4), opt(5));
endfunction

% --
% sf
% --
%
% string fraction
%
% x       number to convert
% opt(1)  maxdcp
% opt(2)  addbrn
% opt(3)  addbrf
% opt(4)  addsgn
% opt(5)  addtex
%
function str = sf(x, opt = [0 0 0 0 1])
  str = myn2s(x, opt(1), opt(2), opt(3), opt(4), opt(5));
endfunction

%%% NO CALCULATIONS YET %%%

printf("%% 2021-11-16\n");
printf("\\begin{exercise}\n");
printf("      {ID-c74ee3f12b8ca075cbc7ae00fa6cdb3a5f6ded88}\n");
printf("      {Genau eine Sechs}\n");
printf("  %% dicepair\n");
printf("  \\newcommand{\\dicepair}[2]%%\n");
printf("  {%%\n");
printf("    \\begin{scope}[xshift=-0.75\\dicewidth]\n");
printf("      \\dicenum{#1}%%\n");
printf("    \\end{scope}\n");
printf("    \\node at (0, 0)\n");
printf("    {%%\n");
printf("      \\raisebox{-0.5\\dicewidth}[0pt][0pt]{,}%%\n");
printf("    };\n");
printf("    \\begin{scope}[xshift=0.85\\dicewidth]\n");
printf("      \\dicenum{#2}%%\n");
printf("    \\end{scope}\n");
printf("  }%%\n");
printf("  %% mathdice\n");
printf("  \\newcommand{\\mathdice}[2]\n");
printf("  {%%\n");
printf("    \\Big(%%\n");
printf("    \\text\n");
printf("    {%%\n");
printf("      \\raisebox{-0.6ex}{%%\n");
printf("      \\begin{tikzpicture}%%\n");
printf("        \\dicepair{#1}{#2}%%\n");
printf("      \\end{tikzpicture}}%%\n");
printf("    }%%\n");
printf("    \\Big)%%\n");
printf("  }%%\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Du hast mit einem Würfelbecher zwei Würfel\n");
printf("    geworfen. Ein Mitspieler schaut unter den\n");
printf("    Becher und verrät dir, dass beide Zahlen\n");
printf("    gerade sind.\n");
printf("    \\par\n");
printf("    Mit welcher Wahrscheinlichkeit ist genau\n");
printf("    eine der beiden Zahlen eine Sechs?\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    %% </OUTLINE>\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    %% <OUTCOME>\n");
printf("    Die Ergebnismenge $\\Omega$ beim Werfen von\n");
printf("    zwei Würfeln besteht aus folgenden Paaren:\n");
printf("    \\begin{equation*}\n");
printf("      \\setlength{\\arraycolsep}{0.1em}%%\n");
printf("      \\begin{array}{rccccl}\n");
printf("        \\Omega=\\Big\\{%%\n");
printf("        \\mathdice{1}{1}, & \\mathdice{1}{2}, & \\mathdice{1}{3}, & \\mathdice{1}{4}, & \\mathdice{1}{5}, & \\mathdice{1}{6}, \\\\\n");
printf("        \\mathdice{2}{1}, & \\mathdice{2}{2}, & \\mathdice{2}{3}, & \\mathdice{2}{4}, & \\mathdice{2}{5}, & \\mathdice{2}{6}, \\\\\n");
printf("        \\mathdice{3}{1}, & \\mathdice{3}{2}, & \\mathdice{3}{3}, & \\mathdice{3}{4}, & \\mathdice{3}{5}, & \\mathdice{3}{6}, \\\\\n");
printf("        \\mathdice{4}{1}, & \\mathdice{4}{2}, & \\mathdice{4}{3}, & \\mathdice{4}{4}, & \\mathdice{4}{5}, & \\mathdice{4}{6}, \\\\\n");
printf("        \\mathdice{5}{1}, & \\mathdice{5}{2}, & \\mathdice{5}{3}, & \\mathdice{5}{4}, & \\mathdice{5}{5}, & \\mathdice{5}{6}, \\\\\n");
printf("        \\mathdice{6}{1}, & \\mathdice{6}{2}, & \\mathdice{6}{3}, & \\mathdice{6}{4}, & \\mathdice{6}{5}, & \\mathdice{6}{6}\\Big\\}\n");
printf("      \\end{array}\n");
printf("    \\end{equation*}\n");
printf("    Das Ereignis \\glqq beide Zahlen sind\n");
printf("    gerade\\grqq{} wird durch folgende Teilmenge\n");
printf("    $A\\subset\\Omega$ beschreiben:\n");
printf("    \\begin{equation*}\n");
printf("      \\setlength{\\arraycolsep}{0.1em}%%\n");
printf("      \\begin{array}{rcl}\n");
printf("        A=\\Big\\{%%\n");
printf("        \\mathdice{2}{2}, & \\mathdice{2}{4}, & \\mathdice{2}{6}, \\\\\n");
printf("        \\mathdice{4}{2}, & \\mathdice{4}{4}, & \\mathdice{4}{6}, \\\\\n");
printf("        \\mathdice{6}{2}, & \\mathdice{6}{4}, & \\mathdice{6}{6}\\Big\\}\n");
printf("      \\end{array}\n");
printf("    \\end{equation*}\n");
printf("    Da jedes Ergebnis mit der gleichen\n");
printf("    Wahrscheinlichkeit eintritt,\n");
printf("    folgt die Wahrscheinlichkeit des Ereignisses\n");
printf("    $A$ den Regeln der Laplace-Wahrscheinlichkeit:\n");
printf("    \\begin{equation*}\n");
printf("      P(A)=\\frac{|A|}{|\\Omega|}=\\frac{9}{36}=\\frac{1}{4}\n");
printf("    \\end{equation*}\n");
printf("    Das Ereignis \\glqq genau ein Würfel zeigt eine\n");
printf("    Sechs\\grqq{} wird durch folgende Teilmenge\n");
printf("    $B\\subset\\Omega$ beschreiben:\n");
printf("    \\begin{equation*}\n");
printf("      \\setlength{\\arraycolsep}{0.1em}%%\n");
printf("      \\begin{array}{rcccl}\n");
printf("        B=\\Big\\{%%\n");
printf("        \\mathdice{1}{6}, & \\mathdice{2}{6}, & \\mathdice{3}{6}, & \\mathdice{4}{6}, & \\mathdice{5}{6}, \\\\\n");
printf("        \\mathdice{6}{1}, & \\mathdice{6}{2}, & \\mathdice{6}{3}, & \\mathdice{6}{4}, & \\mathdice{6}{5}\\Big\\}\n");
printf("      \\end{array}\n");
printf("    \\end{equation*}\n");
printf("    Das Ereignis $A\\cap B$ kann mit \\glqq beide Würfel\n");
printf("    zeigen eine gerade Zahl und genau eine der beiden\n");
printf("    Zahlen ist eine Sechs\\grqq{} übersetzt werden.\n");
printf("    Als Menge enthält dieses Ereignis folgende Ergebnisse:\n");
printf("    \\begin{equation*}\n");
printf("      \\setlength{\\arraycolsep}{0.1em}%%\n");
printf("      \\begin{array}{rccl}\n");
printf("        A\\cap B=\\Big\\{%%\n");
printf("        \\mathdice{2}{6}, & \\mathdice{4}{6}, & \\mathdice{6}{2}, & \\mathdice{6}{4}\\Big\\}\n");
printf("      \\end{array}\n");
printf("    \\end{equation*}\n");
printf("    Auch für dieses Ereignis ergibt sich die\n");
printf("    Wahrscheinlichkeit nach \\textit{Laplace}:\n");
printf("    \\begin{equation*}\n");
printf("      P(A\\cap B)=\\frac{|A\\cap B|}{|\\Omega|}\n");
printf("      =\\frac{4}{36}\n");
printf("      =\\frac{1}{9}\n");
printf("    \\end{equation*}\n");
printf("    Da der Mitspieler allerdings unter den\n");
printf("    Würfelbecher geschaut und verraten hat,\n");
printf("    dass Ereignis $A$ bereits eingetreten ist,\n");
printf("    beschreibt $P(A\\cap B)$ nicht die hier\n");
printf("    gesuchte Wahrscheinlichkeit.\n");
printf("    Die hier gesuchte Wahrscheinlichkeit ist\n");
printf("    die Wahrscheinlichkeit für das Werfen genau\n");
printf("    einer Sechs unter der Voraussetzung, dass\n");
printf("    beide Würfel eine gerade Zahl zeigen, und\n");
printf("    ergibt sich damit als bedingte Wahrscheinlichkeit\n");
printf("    nach folgendem Zusammenhang:\n");
printf("    \\begin{equation*}\n");
printf("      P_{A}(B)=\\frac{P(A\\cap B)}{P(A)}\n");
printf("      =\\frac{1/9}{1/4}\n");
printf("      =\\frac{4}{9}\n");
printf("      \\approx\\SI{44.44}{\\percent}\n");
printf("    \\end{equation*}\n");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

