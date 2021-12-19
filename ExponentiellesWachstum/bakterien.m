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

printf("%% 2021-11-19\n");
printf("\\begin{exercise}\n");
printf("      {ID-b90871525e32c60a676d6be133f8061a6f7a10b8}\n");
printf("      {Bakterien}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Eine Bakterienkultur besitzt eine Verdopplungszeit\n");
printf("    von einer Stunde.\n");
printf("    Zu Beginn besteht die Kultur aus \\num{500}\n");
printf("    Bakterien.\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Stelle die Funktionsgleichung auf,\n");
printf("            die das exponentielle Wachstum der\n");
printf("            Bakterien in Abhängigkeit der Zeit\n");
printf("            $t$ beschreibt.\n");
printf("      \\item Wie viele Bakterien sind es nach \\num{3} Stunden?\n");
printf("      \\item Wann beträgt die Anzahl der Bakterien das\n");
printf("            Hundertfache des Anfangswertes?\n");
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
printf("      \\item Wenn sich die Anzahl der Bakterien\n");
printf("            jede Stunde verdoppelt, und am\n");
printf("            Anfang \\num{500} Bakterien\n");
printf("            vorhanden waren, kann das\n");
printf("            exponentielle Wachstum dieser\n");
printf("            Kultur durch folgende Gleichung\n");
printf("            beschrieben werden:\n");
printf("            \\begin{equation*}\n");
printf("              w(t)=\\num{500}\\cdot2^t\n");
printf("            \\end{equation*}\n");
printf("      \\item Die Anzahl der Bakterien, die nach \\num{3}\n");
printf("            Stunden vorhanden sind, erhält man durch\n");
printf("            das Einsetzen der gegebenen Zeitspanne in\n");
printf("            die Wachstumsfunktion $w$:\n");
printf("            \\begin{equation*}\n");
printf("              w(3)=\\num{500}\\cdot2^3\n");
printf("                  =\\num{500}\\cdot8\n");
printf("                  =\\num{4000}\n");
printf("            \\end{equation*}\n");
printf("            Nach \\num{3} Stunden besteht die\n");
printf("            Bakterienkultur also aus \\num{4000}\n");
printf("            Bakterien.\n");
printf("      \\item Um die Zeitspanne zu ermitteln, nach\n");
printf("            der der Startwert auf das Hundertfache\n");
printf("            angewachsen ist, bietet es sich an\n");
printf("            die Wachstumsfunktion $w$ nach $t$\n");
printf("            aufzulösen:\n");
printf("            \\begin{alignat*}{3}\n");
printf("              \\relax&\\quad\n");
printf("              &\n");
printf("              100\\cdot w_0&=w_0\\cdot2^t\n");
printf("              &\n");
printf("              \\quad&|:w_0\n");
printf("              \\\\\n");
printf("              \\Leftrightarrow&\\quad\n");
printf("              &\n");
printf("              100&=2^t\n");
printf("              &\n");
printf("              \\quad&|\\ln(\\ldots)\n");
printf("              \\\\\n");
printf("              \\Leftrightarrow&\\quad\n");
printf("              &\n");
printf("              \\ln(100)&=\\ln(2^t)\n");
printf("              &\n");
printf("              \\quad&\\relax\n");
printf("              \\\\\n");
printf("              \\Leftrightarrow&\\quad\n");
printf("              &\n");
printf("              \\ln(100)&=t\\cdot\\ln(2)\n");
printf("              &\n");
printf("              \\quad&|:\\ln(2)\n");
printf("              \\\\\n");
printf("              \\Leftrightarrow&\\quad\n");
printf("              &\n");
printf("              \\frac{\\ln(100)}{\\ln(2)}&=t\\approx\\num{6.644}\n");
printf("              %%log(100)/log(2)\n");
printf("              &\n");
printf("              \\quad&\\relax\n");
printf("            \\end{alignat*}\n");
printf("            Also ist die Bakterienkultur nach knapp\n");
printf("            \\SI{6}{\\hour} und \\SI{39}{\\minute}\n");
printf("            auf das Hundertfache des\n");
printf("            Startwertes angewachsen.\n");
printf("            %%(log(100)/log(2)-6)*60\n");
printf("    \\end{enumerate}\n");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

