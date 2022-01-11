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

printf("%% 2022-01-04\n");
printf("\\begin{exercise}\n");
printf("      {ID-ba5d5b861e1307c6b134becbcf70fe226ecb28c2}\n");
printf("      {Beliebtheit}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Es soll die Beliebtheit einer Fernsehsendung\n");
printf("    überprüft werden. Eine Blitzumfrage lieferte\n");
printf("    folgendes Ergebnis: \\SI{30}{\\percent} der\n");
printf("    Zuschauerinnen und Zuschauer, die die Sendung\n");
printf("    gesehen hatten, waren \\num{25} Jahre und\n");
printf("    jünger. Von diesen hatten \\SI{50}{\\percent}\n");
printf("    und von den übrigen Zuschauerinnen und\n");
printf("    Zuschauern (über \\num{25} Jahre) hatten\n");
printf("    \\SI{80}{\\percent} eine positive Meinung.\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Stelle den Sachzusammenhang in einer\n");
printf("            Vierfeldertafel dar.\n");
printf("      \\item Stelle den Sachzusammenhang in einem\n");
printf("            Baumdiagramm dar und zeichne auch den\n");
printf("            inversen Baum. Bestimme alle\n");
printf("            Pfadwahrscheinlichkeiten.\n");
printf("      \\item Wie viel Prozent der Zuschauerinnen\n");
printf("            und Zuschauer, von denen man weiß,\n");
printf("            dass sie eine positive Meinung über\n");
printf("            die Sendung haben, sind älter als\n");
printf("            \\num{25} Jahre?\n");
printf("      \\item Wie viel Prozent der Zuschauerinnen\n");
printf("            und Zuschauer, von denen man weiß,\n");
printf("            dass sie älter als \\num{25} Jahre sind,\n");
printf("            haben keine positive Meinung über die\n");
printf("            Sendung?\n");
printf("      \\item Überprüfe durch eine Rechnung, ob in\n");
printf("            diesem Fall Alter und Meinung stochastisch\n");
printf("            unabhängig sind.\n");
printf("    \\end{enumerate}\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    %% </OUTLINE>\n");
printf("  %%\\fi\n");
printf("  %%\\ifoutcome\\outcome\\par\n");
printf("    %% <OUTCOME>\n");
printf("    %% </OUTCOME>\n");
printf("  %%\\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

