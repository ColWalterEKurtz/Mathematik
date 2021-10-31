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

% -------
% fofogen
% -------
%
% pmin  minimum probability
%
function M = fofogen(pmin = 0)
  M = -ones(3, 3);
  while (min(min(M)) < pmin)
    % random numbers
    M(1,3) = fix(rand() * 100) / 100;
    M(2,2) = fix(rand() * 100) / 100;
    M(3,1) = fix(rand() * 100) / 100;
    M(3,3) = 1;
    % calculations
    M(2,3) = M(3,3) - M(1,3);
    M(3,2) = M(3,3) - M(3,1);
    M(1,2) = M(3,2) - M(2,2);
    M(2,1) = M(2,3) - M(2,2);
    M(1,1) = M(1,3) - M(1,2);
  endwhile
endfunction

% --------
% fofofind
% --------
%
% find nice values
%
function fofofind()
  while true
    % generate table
    M = fofogen(0.09);
    % P(B|A)
    PBA = sd(M(1,1) / M(1,3));
    PbA = sd(M(1,2) / M(1,3));
    PBa = sd(M(2,1) / M(2,3));
    Pba = sd(M(2,2) / M(2,3));
    % P(A|B)
    PAB = sd(M(1,1) / M(3,1));
    PaB = sd(M(2,1) / M(3,1));
    PAb = sd(M(1,2) / M(3,2));
    Pab = sd(M(2,2) / M(3,2));
    % check number of digits
    if (length(PAB) > 5) continue; endif
    if (length(PaB) > 5) continue; endif
    if (length(PAb) > 5) continue; endif
    if (length(Pab) > 5) continue; endif
    % show result
    printf("%s\n", myalignout(mym2s(M, [3 0 0 0 0])));
    printf("\n");
    printf("P(B|A) = %s/%s = %s\n", sd(M(1,1)), sd(M(1,3)), PBA);
    printf("P(b|A) = %s/%s = %s\n", sd(M(1,2)), sd(M(1,3)), PbA);
    printf("P(B|a) = %s/%s = %s\n", sd(M(2,1)), sd(M(2,3)), PBa);
    printf("P(b|a) = %s/%s = %s\n", sd(M(2,2)), sd(M(2,3)), Pba);
    printf("\n");
    printf("P(A|B) = %s/%s = %s\n", sd(M(1,1)), sd(M(3,1)), PAB);
    printf("P(a|B) = %s/%s = %s\n", sd(M(2,1)), sd(M(3,1)), PaB);
    printf("P(A|b) = %s/%s = %s\n", sd(M(1,2)), sd(M(3,2)), PAb);
    printf("P(a|b) = %s/%s = %s\n", sd(M(2,2)), sd(M(3,2)), Pab);
    % stop after first output
    break
  endwhile
endfunction

%fofofind()
%exit

M(1,1) = 0.24;
M(1,2) = 0.22;
M(2,1) = 0.36;
M(2,2) = 0.18;
M(1,3) = M(1,1) + M(1,2);
M(2,3) = M(2,1) + M(2,2);
M(3,1) = M(1,1) + M(2,1);
M(3,2) = M(1,2) + M(2,2);
M(3,3) = M(3,1) + M(3,2);

% relative Haeufigkeiten
P = M;
% absolute Haeufigkeiten
M = M * 100 * 6;
% bedingte Wahrscheinlichkeiten
PAB = P(1,1) / P(3,1);
PaB = P(2,1) / P(3,1);
PAb = P(1,2) / P(3,2);
Pab = P(2,2) / P(3,2);

printf("\\begin{exercise}\n");
printf("      {ID-113b26f6913fe7ef7f9df2e4250082027e2ebe8f}\n");
printf("      {Beziehungsstatus}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    %s deiner %s Facebook-Freunde haben\n", sd(M(2,3)), sd(M(3,3)));
printf("    ihren Beziehungsstatus nicht angegeben. Da du\n");
printf("    natürlich alle persönlich kennst, weißt du, dass\n");
printf("    insgesamt %s deiner Face\\-book-Freunde in\n", sd(M(3,1)));
printf("    einer Beziehung sind. %s von denen, die\n", sd(M(1,2)));
printf("    ihren Beziehungsstatus angegeben haben, sind\n");
printf("    single.\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Erstelle mit den Informationen aus dem\n");
printf("            Text eine Vierfeldertafel, und ergänze\n");
printf("            alle fehlenden Werte.\n");
printf("      \\item Erstelle mit den Informationen aus der\n");
printf("            Vierfeldertafel ein vollständiges\n");
printf("            Baumdiagramm auf dessen erster Stufe\n");
printf("            der tatsächliche Beziehungsstatus\n");
printf("            unterschieden wird.\n");
printf("      \\item Wie wahrscheinlich ist es, dass jemand\n");
printf("            in einer Beziehung ist und dies auch bei\n");
printf("            Facebook angibt?\n");
printf("      \\item Wie groß ist die Wahrscheinlichkeit, dass\n");
printf("            jemand, der Single ist, dies auch bei\n");
printf("            Facebook angibt?\n");
printf("    \\end{enumerate}\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    %% </OUTLINE>\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    %% <OUTCOME>\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Mit den absoluten Werten aus der Aufgabenstellung\n");
printf("            lässt sich folgende Vierfeldertafel aufstellen:\\par\n");
printf("            \\begin{minipage}[c]{0.41\\linewidth}\n");
printf("              \\begin{fofotab}%%[t]\n");
printf("                %% Bezeichnungen\n");
printf("                \\lblA{$A$}\n");
printf("                \\lbla{$\\overline{A}$}\n");
printf("                \\lblB{$B$}\n");
printf("                \\lblb{$\\overline{B}$}\n");
printf("                %% Mitte\n");
printf("                \\andAB{%s}\n", sd(M(1,1)));
printf("                \\andAb{%s}\n", sd(M(1,2)));
printf("                \\andaB{%s}\n", sd(M(2,1)));
printf("                \\andab{%s}\n", sd(M(2,2)));
printf("                %% Rand\n");
printf("                \\sumA {%s}\n", sd(M(1,3)));
printf("                \\suma {%s}\n", sd(M(2,3)));
printf("                \\sumB {%s}\n", sd(M(3,1)));
printf("                \\sumb {%s}\n", sd(M(3,2)));
printf("                \\total{%s}\n", sd(M(3,3)));
printf("              \\end{fofotab}\n");
printf("            \\end{minipage}%%\n");
printf("            \\begin{minipage}[c]{0.58\\linewidth}\n");
printf("              \\begin{itemize}\n");
printf("                \\renewcommand{\\itemsep}{-1ex}%%\n");
printf("                \\item[$A$:]\\glqq Status angegeben\\grqq\n");
printf("                \\item[$\\overline{A}$:]\\glqq Status nicht angegeben\\grqq\n");
printf("                \\item[$B$:]\\glqq in einer Beziehung\\grqq\n");
printf("                \\item[$\\overline{B}$:]\\glqq nicht in einer Beziehung\\grqq\n");
printf("              \\end{itemize}\n");
printf("            \\end{minipage}\n");
printf("      \\item Um das Baumdiagramm erstellen zu können,\n");
printf("            werden zunächst Wahrscheinlichkeiten,\n");
printf("            also relative Häufigkeiten benötigt.\n");
printf("            Diese erhält man, indem man alle Werte\n");
printf("            der Vierfeldertafel durch die\n");
printf("            Gesamtanzahl %s teilt:\n", sd(M(3,3)));
printf("            \\begin{center}\n");
printf("              \\begin{fofotab}%%[t]\n");
printf("                %% Bezeichnungen\n");
printf("                \\lblA{$A$}\n");
printf("                \\lbla{$\\overline{A}$}\n");
printf("                \\lblB{$B$}\n");
printf("                \\lblb{$\\overline{B}$}\n");
printf("                %% Mitte\n");
printf("                \\andAB{%s}\n", sd(P(1,1)));
printf("                \\andAb{%s}\n", sd(P(1,2)));
printf("                \\andaB{%s}\n", sd(P(2,1)));
printf("                \\andab{%s}\n", sd(P(2,2)));
printf("                %% Rand\n");
printf("                \\sumA {%s}\n", sd(P(1,3)));
printf("                \\suma {%s}\n", sd(P(2,3)));
printf("                \\sumB {%s}\n", sd(P(3,1)));
printf("                \\sumb {%s}\n", sd(P(3,2)));
printf("                \\total{%s}\n", sd(P(3,3)));
printf("              \\end{fofotab}\n");
printf("            \\end{center}\n");
printf("            Die bedingten Wahrscheinlichkeiten für\n");
printf("            die zweite Stufe des Baumdiagramms\n");
printf("            müssen eigens berechnet werden:\n");
printf("            \\begin{align*}\n");
printf("              P_{B}(A)&=\\frac{P(A\\cap B)}{P(B)}\n");
printf("              =\\frac{%s}{%s}\n", sd(P(1,1)), sd(P(3,1)));
printf("              =%s\n", sd(P(1,1) / P(3,1)));
printf("              &\n");
printf("              P_{\\overline{B}}(A)&=\\frac{P(A\\cap\\overline{B})}{P(\\overline{B})}\n");
printf("              =\\frac{%s}{%s}\n", sd(P(1,2)), sd(P(3,2)));
printf("              =%s\n", sd(P(1,2) / P(3,2)));
printf("              \\\\[1ex]\n");
printf("              P_{B}(\\overline{A})&=\\frac{P(\\overline{A}\\cap B)}{P(B)}\n");
printf("              =\\frac{%s}{%s}\n", sd(P(2,1)), sd(P(3,1)));
printf("              =%s\n", sd(P(2,1) / P(3,1)));
printf("              &\n");
printf("              P_{\\overline{B}}(\\overline{A})&=\\frac{P(\\overline{A}\\cap\\overline{B})}{P(\\overline{B})}\n");
printf("              =\\frac{%s}{%s}\n", sd(P(2,2)), sd(P(3,2)));
printf("              =%s\n", sd(P(2,2) / P(3,2)));
printf("            \\end{align*}\\par\n");
printf("            Mit diesen Informationen kann man nun\n");
printf("            ein vollständiges Baumdiagramm zeichnen:\n");
printf("            \\begin{center}\n");
printf("              %%<OCTAVE>\n");
printf("              \\begin{tikzpicture}[line width=0.6pt]\n");
printf("                %% tree\n");
printf("                \\begin{scope}\n");
printf("                  %% size settings\n");
printf("                  \\newcommand{\\radius}{4mm}%%\n");
printf("                  \\newcommand{\\xscale}{5}%%\n");
printf("                  \\newcommand{\\yscale}{4}%%\n");
printf("                  %% background color of nodes\n");
printf("                  \\newcommand{\\colora}{white}%%\n");
printf("                  \\newcommand{\\colorb}{white}%%\n");
printf("                  %% node text\n");
printf("                  \\newcommand{\\ntexta}{$B$}%%\n");
printf("                  \\newcommand{\\ntextb}{$\\overline{B}$}%%\n");
printf("                  \\newcommand{\\ntextaa}{$A$}%%\n");
printf("                  \\newcommand{\\ntextab}{$\\overline{A}$}%%\n");
printf("                  \\newcommand{\\ntextba}{$A$}%%\n");
printf("                  \\newcommand{\\ntextbb}{$\\overline{A}$}%%\n");
printf("                  %% edge text\n");
printf("                  \\newcommand{\\etexta}{%s}%%\n", sd(P(3,1)));
printf("                  \\newcommand{\\etextb}{%s}%%\n", sd(P(3,2)));
printf("                  \\newcommand{\\etextaa}{%s}%%\n", sd(PAB));
printf("                  \\newcommand{\\etextab}{%s}%%\n", sd(PaB));
printf("                  \\newcommand{\\etextba}{%s}%%\n", sd(PAb));
printf("                  \\newcommand{\\etextbb}{%s}%%\n", sd(Pab));
printf("                  %% geometry\n");
printf("                  \\coordinate (Z)  at ( 1.500*\\xscale*\\radius,  2.000*\\yscale*\\radius);\n");
printf("                  \\coordinate (A)  at ( 0.500*\\xscale*\\radius,  1.000*\\yscale*\\radius);\n");
printf("                  \\coordinate (B)  at ( 2.500*\\xscale*\\radius,  1.000*\\yscale*\\radius);\n");
printf("                  \\coordinate (AA) at ( 0.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("                  \\coordinate (AB) at ( 1.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("                  \\coordinate (BA) at ( 2.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("                  \\coordinate (BB) at ( 3.000*\\xscale*\\radius,  0.000*\\yscale*\\radius);\n");
printf("                  %% edges\n");
printf("                  \\draw (Z) -- (A);\n");
printf("                  \\draw (Z) -- (B);\n");
printf("                  \\draw (A) -- (AA);\n");
printf("                  \\draw (A) -- (AB);\n");
printf("                  \\draw (B) -- (BA);\n");
printf("                  \\draw (B) -- (BB);\n");
printf("                  %% root\n");
printf("                  \\fill[fill=black] (Z) circle[radius=2pt];\n");
printf("                  %% nodes\n");
printf("                  \\filldraw[fill=\\colora, draw=black] (A)  circle[radius=\\radius] node{\\ntexta};\n");
printf("                  \\filldraw[fill=\\colorb, draw=black] (B)  circle[radius=\\radius] node{\\ntextb};\n");
printf("                  \\filldraw[fill=\\colora, draw=black] (AA) circle[radius=\\radius] node{\\ntextaa};\n");
printf("                  \\filldraw[fill=\\colorb, draw=black] (AB) circle[radius=\\radius] node{\\ntextab};\n");
printf("                  \\filldraw[fill=\\colora, draw=black] (BA) circle[radius=\\radius] node{\\ntextba};\n");
printf("                  \\filldraw[fill=\\colorb, draw=black] (BB) circle[radius=\\radius] node{\\ntextbb};\n");
printf("                  %% label macros\n");
printf("                  \\newcommand{\\rlabel}[4]%%\n");
printf("                  {%%\n");
printf("                    \\coordinate (TEMP) at ($(#1)!0.5!(#2)$);\n");
printf("                    \\coordinate (TEMP) at ($(TEMP)!#3!270:(#2)$);\n");
printf("                    \\node at (TEMP) {#4};\n");
printf("                  }%%\n");
printf("                  \\newcommand{\\llabel}[4]{\\rlabel{#2}{#1}{#3}{#4}};\n");
printf("                  %% edge labels\n");
printf("                  \\rlabel{Z}{A}{3mm}{\\etexta};\n");
printf("                  \\llabel{Z}{B}{3mm}{\\etextb};\n");
printf("                  \\rlabel{A}{AA}{3mm}{\\etextaa~~};\n");
printf("                  \\llabel{A}{AB}{3mm}{~\\etextab};\n");
printf("                  \\rlabel{B}{BA}{3mm}{\\etextba~~~};\n");
printf("                  \\llabel{B}{BB}{3mm}{~~\\etextbb};\n");
printf("                \\end{scope}\n");
printf("              \\end{tikzpicture}\n");
printf("            \\end{center}\n");
printf("      \\item Sowohl der Beziehungsstatus, als auch\n");
printf("            die Angabe bei Facebook sind in der\n");
printf("            Fragestellung vom Zufall abhängig,\n");
printf("            also ist folgende Wahrscheinlichkeit\n");
printf("            gesucht:\n");
printf("            \\begin{equation*}\n");
printf("              P(A\\cap B)=%s\n", sd(P(1,1)));
printf("            \\end{equation*}\n");
printf("      \\item Da in der Fragestellung der Beziehungsstatus\n");
printf("            vorgegeben wird, ist nur noch die Angabe\n");
printf("            bei Facebook vom Zufall abhängig. Also\n");
printf("            ist folgende bedingte Wahrscheinlichkeit\n");
printf("            gesucht:\n");
printf("            \\begin{equation*}\n");
printf("              P_{\\overline{B}}(A)=%s\n", sd(PAb));
printf("            \\end{equation*}\n");
printf("    \\end{enumerate}\n");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");
