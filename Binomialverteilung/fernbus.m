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
printf("      {ID-82cea7dfc25a6b841fe3ace9c03da3d56eb4bebd}\n");
printf("      {Fernbus}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Reisen mit dem Fernbus werden immer beliebter.\n");
printf("    Reiseanbieter werben mit günstigen Preisen\n");
printf("    und besonderem Komfort.\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Für eine Städtereise stellt ein\n");
printf("            Busunternehmen einen Fernbus mit\n");
printf("            \\num{59} Plätzen bereit, die vor\n");
printf("            Reiseantritt gebucht und bezahlt\n");
printf("            werden. Im Mittel werden\n");
printf("            \\SI{95}{\\percent} der Buchungen\n");
printf("            angetreten.\n");
printf("            \\begin{enumerate}[(1)]\n");
printf("              \\item Erläutern Sie, unter welchen\n");
printf("                    Voraussetzungen die Anzahl\n");
printf("                    der angetretenen Buchungen\n");
printf("                    bei einer Reise als\n");
printf("                    binomialverteilt mit\n");
printf("                    $p=\\num{0.95}$ angenommen\n");
printf("                    werden kann.\n");
printf("            \\end{enumerate}\n");
printf("            Im Folgenden wird die Anzahl der\n");
printf("            angetretenen Buchungen nun wirklich als\n");
printf("            binomialverteilt mit $p=\\num{0.95}$\n");
printf("            vorausgesetzt. Für einen bestimmten\n");
printf("            Reisetermin sind genau \\num{59}\n");
printf("            Buchungen vorgenommen worden.\n");
printf("            \\begin{enumerate}[(1)]\n");
printf("              \\setcounter{enumii}{1}%%\n");
printf("              \\item Bestimmen Sie jeweils die\n");
printf("                    Wahrscheinlichkeit für folgende\n");
printf("                    Ereignisse:\n");
printf("                    \\begin{itemize}\n");
printf("                      %%\\renewcommand{\\itemsep}{-1ex}%%\n");
printf("                      \\item[$E_1$:]\n");
printf("                        Genau \\num{59} Buchungen\n");
printf("                        werden angetreten.\n");
printf("                      \\item[$E_2$:]\n");
printf("                        Mindestens \\num{55}\n");
printf("                        Buchungen werden angetreten.\n");
printf("                    \\end{itemize}\n");
printf("            \\end{enumerate}\n");
printf("      \\item Da erfahrungsgemäß nicht alle Buchungen\n");
printf("            angetreten werden, verkauft das\n");
printf("            Busunternehmen mehr Plätze als vorhanden\n");
printf("            sind. Für eine Städtereise mit \\num{96}\n");
printf("            Plätzen werden \\num{99} Buchungen\n");
printf("            vorgenommen (Überbuchung). Es wird\n");
printf("            unverändert angenommen, dass die\n");
printf("            Anzahl der angetretenen Buchungen\n");
printf("            binomialverteilt mit $p=\\num{0.95}$ ist.\n");
printf("            \\begin{enumerate}[(1)]\n");
printf("              \\item Ermitteln Sie die Wahrscheinlichkeit,\n");
printf("                    dass mehr als eine Person ihre Reise\n");
printf("                    wegen Überbuchung nicht antreten kann.\n");
printf("              \\item Bestimmen Sie die Anzahl der Buchungen,\n");
printf("                    die das Busunternehmen bei einer Reise\n");
printf("                    mit \\num{96} Plätzen höchstens\n");
printf("                    bestätigen darf, um das Risiko, dass\n");
printf("                    mindestens eine Person ihre Reise\n");
printf("                    aufgrund der Überbuchung nicht\n");
printf("                    antreten kann, auf \\SI{5}{\\percent}\n");
printf("                    zu begrenzen.\n");
printf("            \\end{enumerate}\n");
printf("            Kann eine Person die Reise wegen\n");
printf("            Überbuchung nicht antreten, wird vom\n");
printf("            Busunternehmen der komplette\n");
printf("            Reisepreis von \\num{20} Euro\n");
printf("            zurückerstattet. Als Entschädigung\n");
printf("            wird zusätzlich ein Betrag von\n");
printf("            \\num{300} Euro ausgezahlt.\n");
printf("            \\begin{enumerate}[(1)]\n");
printf("              \\setcounter{enumii}{2}%%\n");
printf("              \\item Beurteilen Sie, ob sich aus\n");
printf("                    finanzieller Sicht die Praxis,\n");
printf("                    \\num{99} Buchungen für eine\n");
printf("                    Reise mit \\num{96} Plätzen zu\n");
printf("                    bestätigen, für das\n");
printf("                    Busunternehmen im Mittel lohnt.\n");
printf("            \\end{enumerate}\n");
printf("      \\item In der Werbung eines anderen Busunternehmens\n");
printf("            werden bisher Kunden damit gewonnen, dass bis\n");
printf("            kurz vor Reiseantritt eine kostenlose\n");
printf("            Stornierung der Buchung möglich ist. Aktuell\n");
printf("            liegt der Anteil der kurzfristig stornierten\n");
printf("            Buchungen bei \\SI{7}{\\percent}.\n");
printf("            Das Busunternehmen möchte diesen Anteil\n");
printf("            verringern und ändert die Vertragsbedingungen\n");
printf("            dahingehend, dass bei kurzfristigen\n");
printf("            Stornierungen ein Teil des Fahrpreises gezahlt\n");
printf("            werden muss. Es möchte die Vermutung absichern,\n");
printf("            dass durch diese Maßnahme der Anteil der\n");
printf("            kurzfristig stornierten Buchungen sinkt.\n");
printf("            Die nächsten \\num{1000} Buchungen sollen auf\n");
printf("            diese Wirkung hin untersucht werden. Die\n");
printf("            Anzahl der kurzfristig stornierten Buchungen\n");
printf("            wird als binomialverteilt angenommen.\n");
printf("            \\begin{enumerate}[(1)]\n");
printf("              \\item Geben Sie begründet an, welche\n");
printf("                    Nullhypothese aus der Sicht des\n");
printf("                    Busunternehmens gewählt wird.\n");
printf("              \\item Bestimmen Sie die Anzahl der\n");
printf("                    kurzfristig stornierten Buchungen,\n");
printf("                    bis zu der das Busunternehmen auf\n");
printf("                    einem Signifikanzniveau von\n");
printf("                    \\SI{5}{\\percent} von einem Erfolg\n");
printf("                    der Maßnahme ausgehen wird.\n");
printf("              \\item Bei einem Signifikanzniveau von\n");
printf("                    \\SI{1}{\\percent} lautet die\n");
printf("                    Entscheidungsregel:\n");
printf("                    \\begin{quote}\n");
printf("                      \\glqq\n");
printf("                      Das Busunternehmen verwirft die\n");
printf("                      Nullhypothese $H_0$, und geht von\n");
printf("                      einem Erfolg der Maßnahme aus,\n");
printf("                      falls die Anzahl der kurzfristig\n");
printf("                      stornierten Buchungen höchstens\n");
printf("                      \\num{51} beträgt.\n");
printf("                      \\grqq\n");
printf("                    \\end{quote}\n");
printf("                    Bestimmen Sie die Wahrscheinlichkeit\n");
printf("                    für den Fehler 2. Art, falls aufgrund\n");
printf("                    der Maßnahme der Anteil der\n");
printf("                    kurzfristig stornierten Buchungen nur\n");
printf("                    noch \\SI{4}{\\percent} beträgt, und\n");
printf("                    erläutern Sie diesen Fehler im\n");
printf("                    Sachzusammenhang.\n");
printf("            \\end{enumerate}\n");
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

