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

printf("%% 2021-12-02\n");
printf("\\begin{exercise}\n");
printf("      {ID-0c7f7a4af04575fa5349f38ef6b1df18a86b1f27}\n");
printf("      {Wolfspopulationen}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Im Folgenden berachten wir die Entwicklung von\n");
printf("    Wolfspopulationen. Dabei beschränken wir uns\n");
printf("    ausschließlich auf die weiblichen Tiere einer\n");
printf("    Popuöation. die aus Welpen (w), jungen Fähen (j)\n");
printf("    sowie ausgewachsenen Fähen (a) bestehen soll.\n");
printf("    Alle Fähen sind vermehrungsfähig. Die Welpen\n");
printf("    entwickeln sich ein Jahr nach der Geburt zu\n");
printf("    jungen Fähen und ein Jahr später zu\n");
printf("    ausgewachsenen Fähen.\n");
printf("    \\par\n");
printf("    Die folgenden Tabellen zeigen die Verteilung\n");
printf("    der weiblichen Tiere innerhalb einer in der\n");
printf("    Wildnis lebenden Population für die Jahre 2013\n");
printf("    und 2014, sowie die Übergänge zwischen den\n");
printf("    einzelnen Lebensphasen, mit denen die\n");
printf("    Entwicklung der Population modellhaft\n");
printf("    beschieben werden kann:\n");
printf("    \\begin{center}\n");
printf("      \\begingroup\n");
printf("        \\renewcommand{\\arraystretch}{1.2}%%\n");
printf("        \\begin{tabular}{|c|r|r|}\n");
printf("          \\hline\n");
printf("            & 2013 & 2014 \\\\\n");
printf("          \\hline\n");
printf("          w &   65 &   52 \\\\\n");
printf("          \\hline\n");
printf("          j &    8 &   26 \\\\\n");
printf("          \\hline\n");
printf("          a &   20 &   16 \\\\\n");
printf("          \\hline\n");
printf("        \\end{tabular}%%\n");
printf("        \\hspace{3em}%%\n");
printf("        \\begin{tabular}{|l|c|c|c|}\n");
printf("          \\hline\n");
printf("                 & von w   & von j     & von a     \\\\\n");
printf("          \\hline\n");
printf("          nach w & \\num{0} & \\num{1.5} & \\num{2}   \\\\\n");
printf("          \\hline\n");
printf("          nach j & $b$     & \\num{0}   & \\num{0}   \\\\\n");
printf("          \\hline\n");
printf("          nach a & \\num{0} & \\num{0.5} & \\num{0.6} \\\\\n");
printf("          \\hline\n");
printf("        \\end{tabular}\n");
printf("      \\endgroup\n");
printf("    \\end{center}\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Stellen Sie die Übergangsmatrix $A$ auf,\n");
printf("            die zu diesem Entwicklungsprozess gehört,\n");
printf("            und begründen Sie mit den Daten aus der\n");
printf("            Tabelle, dass $b=\\num{0.4}$ gilt.\n");
printf("      \\item Berechnen Sie die Verteilungen, die nach\n");
printf("            diesem Modell in den Jahen 2015 und 2016\n");
printf("            zu erwarten sind.\n");
printf("      \\item Bestimmen Sie die Verteilung, die nach\n");
printf("            diesem Modell im Jahr 2012 vorgelegen\n");
printf("            haben müsste.\n");
printf("      \\item Zeigen Sie, dass sich in diesem Modell\n");
printf("            die Population aus 2011 nicht bestimmen\n");
printf("            lässt.\n");
printf("      \\item Ein Biologe behauptet, dass weniger als\n");
printf("            \\SI{15}{\\percent} aller Welpen ein Alter\n");
printf("            von mindestens 3 Jahren erreichen.\n");
printf("            Prüfen Sie, ob nach vorliegender\n");
printf("            Modellierung die Behauptung des Biologen\n");
printf("            zutrifft.\n");
printf("    \\end{enumerate}\n");
printf("    Wölfe, die in einem Tierpark leben, haben andere\n");
printf("    Überlebens- und Fortpflanzungsraten. Für einen\n");
printf("    Tierpark kann die Entwicklung seiner\n");
printf("    Wolfspopulation durch folgende Matrix modelliert\n");
printf("    werden:\n");
printf("    \\begin{equation*}\n");
printf("      B=\n");
printf("      \\begin{pmatrix}\n");
printf("        \\num{0}   & \\num{1}    & \\num{0.1} \\\\\n");
printf("        \\num{0.8} & \\num{0}    & \\num{0}   \\\\\n");
printf("        \\num{0}   & \\num{0.75} & \\num{0.7}\n");
printf("      \\end{pmatrix}\n");
printf("    \\end{equation*}\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\setcounter{enumi}{5}%%\n");
printf("      \\item Beschreiben Sie die Bedeutung der\n");
printf("            Einträge in der zweiten Spalte von\n");
printf("            Matrix $B$ im Sachzusammengang und\n");
printf("            interpretieren Sie die Unterschiede,\n");
printf("            die sich im Vergleich mit der zweiten\n");
printf("            Spalte von Matrix $A$ zeigen.\n");
printf("      \\item Wegen der räumlichen Beschränkung will\n");
printf("            die Tierparkleitung die Gesamtzahl der\n");
printf("            Wölfe konstant halten.\n");
printf("            Eine Verteilung, die sich beim Übergang\n");
printf("            in den Folgezustand nicht ändert, wird\n");
printf("            \\emph{stationäre} Verteilung genannt.\n");
printf("            Zeigen Sie, dass für die Population im\n");
printf("            Tierpark eine nicht-triviale\n");
printf("            stationäre Verteilung existiert.\n");
printf("      \\item Wie groß muss die Anzahl der weiblichen\n");
printf("            Individuen in der Population mindestens\n");
printf("            sein, und wie müssen sie sich auf die\n");
printf("            verschiedenen Entwicklungsstufen\n");
printf("            verteilen, damit sie eine stationäre\n");
printf("            Verteilung bilden.\n");
printf("            Geben Sie eine ganzzahlige Lösung an,\n");
printf("            die sich vom Nullvektor unterscheidet.\n");
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
printf("      %%\\setlength{\\itemsep}{-1ex}%%\n");
printf("      %%\\setcounter{enumi}{0}%%\n");
printf("      \\item Aus der rechten Tabelle erhält man\n");
printf("            folgende Übergangsmatrix:\n");
printf("            \\begin{equation*}\n");
printf("              A=\n");
printf("              \\begin{pmatrix}\n");
printf("                \\num{0} & \\num{1.5} & \\num{2}   \\\\\n");
printf("                b       & \\num{0}   & \\num{0}   \\\\\n");
printf("                \\num{0} & \\num{0.5} & \\num{0.6}\n");
printf("              \\end{pmatrix}\n");
printf("            \\end{equation*}\n");
printf("            Den Wert für $b$ erhält man, indem\n");
printf("            man die Matrixmultiplikation für die\n");
printf("            zweite Zeile durchführt und die\n");
printf("            entstehende Gleichung nach $b$\n");
printf("            auflöst:\n");
printf("            \\begin{equation*}\n");
printf("              \\begin{split}\n");
printf("                A\\cdot n_{2013}=n_{2014}\n");
printf("                \\quad&\\Rightarrow\\quad\n");
printf("                b\\cdot65+0\\cdot8+0\\cdot20=26\n");
printf("                \\quad|:65\n");
printf("                \\\\\n");
printf("                &\\Rightarrow\\quad\n");
printf("                b=\\num{0.4}\n");
printf("              \\end{split}\n");
printf("            \\end{equation*}\n");
printf("      \\item Die $n$-fache Multiplikation mit der\n");
printf("            Übergangsmatrix ergibt die entsprexhene\n");
printf("            Verteilung:\n");
printf("            \\begin{equation*}\n");
printf("              n_{2015}=A\\cdot n_{2014}=\n");
printf("              \\begin{pmatrix}\n");
printf("                \\num{71}   \\\\\n");
printf("                \\num{20.8} \\\\\n");
printf("                \\num{22.6}\n");
printf("              \\end{pmatrix}\n");
printf("              \\qquad\n");
printf("              n_{2016}=A^2\\cdot n_{2014}=\n");
printf("              \\begin{pmatrix}\n");
printf("                \\num{76.4}  \\\\\n");
printf("                \\num{28.4}  \\\\\n");
printf("                \\num{23.96}\n");
printf("              \\end{pmatrix}\n");
printf("            \\end{equation*}\n");
printf("      \\item Zum Berechnen früherer Zustände\n");
printf("            in stochastischen Ptozessen\n");
printf("            benötigt man die inverse\n");
printf("            Übergangsmatrix $A^{-1}$.\n");
printf("            Für den vorliegenden Prozess gilt:\n");
printf("            \\begin{equation*}\n");
printf("              A^{-1}=\n");
printf("              \\begin{pmatrix}\n");
printf("                \\num{0}  & \\num{2.5} & \\num{0}   \\\\\n");
printf("                -\\num{6} & \\num{0}   & \\num{20}  \\\\\n");
printf("                \\num{5}  & \\num{0}   & -\\num{15}\n");
printf("              \\end{pmatrix}\n");
printf("            \\end{equation*}\n");
printf("            Für das Jahr 2012 ergibt sich damit\n");
printf("            folgende Verteilung:\n");
printf("            \\begin{equation*}\n");
printf("              \\begin{pmatrix}\n");
printf("                \\num{0}  & \\num{2.5} & \\num{0}   \\\\\n");
printf("                -\\num{6} & \\num{0}   & \\num{20}  \\\\\n");
printf("                \\num{5}  & \\num{0}   & -\\num{15}\n");
printf("              \\end{pmatrix}\n");
printf("              \\cdot\n");
printf("              \\begin{pmatrix}\n");
printf("                \\num{65} \\\\\n");
printf("                \\num{8}  \\\\\n");
printf("                \\num{20}\n");
printf("              \\end{pmatrix}\n");
printf("              =\n");
printf("              \\begin{pmatrix}\n");
printf("                \\num{20} \\\\\n");
printf("                \\num{10} \\\\\n");
printf("                \\num{25}\n");
printf("              \\end{pmatrix}\n");
printf("            \\end{equation*}\n");
printf("      \\item Wenn man von 2013 zwei Jahre auf 2011\n");
printf("            zurück rechnet, erhält man:\n");
printf("            \\begin{equation*}\n");
printf("              \\begin{pmatrix}\n");
printf("                \\num{0}  & \\num{2.5} & \\num{0}   \\\\\n");
printf("                -\\num{6} & \\num{0}   & \\num{20}  \\\\\n");
printf("                \\num{5}  & \\num{0}   & -\\num{15}\n");
printf("              \\end{pmatrix}^2\n");
printf("              \\cdot\n");
printf("              \\begin{pmatrix}\n");
printf("                \\num{65} \\\\\n");
printf("                \\num{8}  \\\\\n");
printf("                \\num{20}\n");
printf("              \\end{pmatrix}\n");
printf("              =\n");
printf("              \\begin{pmatrix}\n");
printf("                \\num{25}  \\\\\n");
printf("                \\num{380} \\\\\n");
printf("                -\\num{275}\n");
printf("              \\end{pmatrix}\n");
printf("            \\end{equation*}\n");
printf("            Da der negative Wert im Sachzusammengang\n");
printf("            keinen Sinn ergibt, ist dieses Modell\n");
printf("            ungeeignet, um die Verteilung aus dem\n");
printf("            Jahr 2011 zu berechnen. Auch die\n");
printf("            Verteilungen aus noch früheren Jahren\n");
printf("            sind durch dieses Modell nicht\n");
printf("            zugänglich.\n");
printf("      \\item Um ein Alter von mindestens 3 Jahren\n");
printf("            zu erreichen sind in diesem Modell\n");
printf("            drei Übergänge erforderlich.\n");
printf("            Die entsprechende Übergangsmatrix\n");
printf("            lautet:\n");
printf("            \\begin{equation*}\n");
printf("              A^3=\n");
printf("              \\begin{pmatrix}\n");
printf("                \\num{0.4}  & \\num{1.5}  & \\num{1.92}  \\\\\n");
printf("                \\num{0.24} & \\num{0.4}  & \\num{0.48}  \\\\\n");
printf("                \\num{0.12} & \\num{0.48} & \\num{0.616}\n");
printf("              \\end{pmatrix}\n");
printf("            \\end{equation*}\n");
printf("            Man erkennt am Eintrag $A_{31}=\\num{0.12}$,\n");
printf("            dass \\SI{12}{\\percent} der Welpen drei\n");
printf("            Übergänge (Jahre) überleben.\n");
printf("            Die Aussage des Biologen trifft also zu.\n");
printf("      \\item Die Zahlen in der zweiten Spalte von\n");
printf("            Matrix $B$ haben folgende Bedeutung:\n");
printf("            \\begin{itemize}\n");
printf("              \\renewcommand{\\itemsep}{-1ex}%%\n");
printf("              \\item[1:] im Durchschnitt bekommt jede\n");
printf("                        junge Fähe pro Jahr genau\n");
printf("                        einen Welpen\n");
printf("              \\item[0:] keine junge Fähe ist nach einem\n");
printf("                        Jahr immer noch eine junge Fähe\n");
printf("              \\item[\\num{0.75}:] \\SI{75}{\\percent} der\n");
printf("                        jungen Fähen überleben ihre\n");
printf("                        Entwicklungsstufe und werden zu\n");
printf("                        ausgewachsenen Fähen\n");
printf("            \\end{itemize}\n");
printf("            Im Vergleich zu den jungen Fähen, die in\n");
printf("            freier Wildnis leben, besitzen die jungen\n");
printf("            Fähen aus dem Tierpark eine \\SI{50}{\\percent}\n");
printf("            höhere Überlebenswahrscheinlichkeit.\n");
printf("            Dieser Unterschied könnte auf fehlende\n");
printf("            Fressfeinde, das fehlende Risiko sich\n");
printf("            auf der Jagd nach Beute selbst zu\n");
printf("            verletzen und die tierärztliche\n");
printf("            Betreuung im Tierpark zurückzuführen\n");
printf("            sein.\n");
printf("            \\par\n");
printf("            Andererseits liegt die Vermehrungsrate\n");
printf("            der jungen Fähen aus dem Tierpark\n");
printf("            ein Drittel unter der der frei\n");
printf("            lebenden jungen Fähen.\n");
printf("            Dies könnte damit zusammenhängen,\n");
printf("            dass im Tierpark \\SI{80}{\\percent}\n");
printf("            der Welpen überleben, in der Wildnis\n");
printf("            hingegen nur \\SI{40}{\\percent}.\n");
printf("      \\item Eine Übergangsmatrix $U$ besitzt eine\n");
printf("            (nicht-triviale) stationäre Verteilung\n");
printf("            $x$, wenn in dem Gleichungssystem\n");
printf("            $U\\cdot x=x$ identische Zeilen auftreten.\n");
printf("            \\par\n");
printf("            Mit den Daten aus dem Tierpark ergibt\n");
printf("            sich damit folgender Ansatz:\n");
printf("            \\begin{equation*}\n");
printf("              B\\cdot x=x\n");
printf("              \\quad\\Rightarrow\\quad\n");
printf("              \\begin{pmatrix}\n");
printf("                \\num{0}   & \\num{1}    & \\num{0.1} \\\\\n");
printf("                \\num{0.8} & \\num{0}    & \\num{0}   \\\\\n");
printf("                \\num{0}   & \\num{0.75} & \\num{0.7}\n");
printf("              \\end{pmatrix}\n");
printf("              \\cdot\n");
printf("              \\begin{pmatrix}\n");
printf("                w \\\\\n");
printf("                j \\\\\n");
printf("                a\n");
printf("              \\end{pmatrix}\n");
printf("              =\n");
printf("              \\begin{pmatrix}\n");
printf("                w \\\\\n");
printf("                j \\\\\n");
printf("                a\n");
printf("              \\end{pmatrix}\n");
printf("            \\end{equation*}\n");
printf("            Diese Gleichung führt auf das\n");
printf("            äquivalente Gleichungssystem:\n");
printf("            \\begingroup\n");
printf("              \\renewcommand{\\arraycolsep}{2pt}%%\n");
printf("              \\begin{alignat*}{1}\n");
printf("                &\n");
printf("                \\begin{array}{r|rcrcrcll}\n");
printf("                  \\text{I}\\;\\;&\\;   \\num{0}w & + &    \\num{1}j & + & \\num{0.1}a & = & w & \\quad|-w \\\\\n");
printf("                 \\text{II}\\;\\;&\\; \\num{0.8}w & + &    \\num{0}j & + &   \\num{0}a & = & j & \\quad|-j \\\\\n");
printf("                \\text{III}\\;\\;&\\;   \\num{0}w & + & \\num{0.75}j & + & \\num{0.7}a & = & a & \\quad|-a\n");
printf("                \\end{array}\n");
printf("                \\\\[1ex] &\n");
printf("                \\begin{array}{r|rcrcrcll}\n");
printf("                  \\text{I}\\;\\;&\\;         -w & + &           j & + & \\num{0.1}a & = & 0 & \\quad|\\cdot(-1)                  \\\\\n");
printf("                 \\text{II}\\;\\;&\\; \\num{0.8}w & - &           j &   &            & = & 0 & \\quad|\\rightleftarrows\\text{III} \\\\\n");
printf("                \\text{III}\\;\\;&\\;            &   & \\num{0.75}j & - & \\num{0.3}a & = & 0 & \\quad|\\rightleftarrows\\text{II}\n");
printf("                \\end{array}\n");
printf("                \\\\[1ex] &\n");
printf("                \\begin{array}{r|rcrcrcll}\n");
printf("                  \\text{I}\\;\\;&\\;          w & - &           j & - & \\num{0.1}a & = & 0 & \\quad\\relax       \\\\\n");
printf("                 \\text{II}\\;\\;&\\;            &   & \\num{0.75}j & - & \\num{0.3}a & = & 0 & \\quad|:\\num{0.75} \\\\\n");
printf("                \\text{III}\\;\\;&\\; \\num{0.8}w & - &           j &   &            & = & 0 & \\quad|:\\num{0.8}\n");
printf("                \\end{array}\n");
printf("                \\\\[1ex] &\n");
printf("                \\begin{array}{r|rcrcrcll}\n");
printf("                  \\text{I}\\;\\;&\\; w & - &           j & - & \\num{0.1}a & = & 0 & \\quad\\relax \\\\\n");
printf("                 \\text{II}\\;\\;&\\;   &   &           j & - & \\num{0.4}a & = & 0 & \\quad\\relax \\\\\n");
printf("                \\text{III}\\;\\;&\\; w & - & \\num{1.25}j &   &            & = & 0 & \\quad|-\\text{I}\n");
printf("                \\end{array}\n");
printf("                \\\\[1ex] &\n");
printf("                \\begin{array}{r|rcrcrcll}\n");
printf("                  \\text{I}\\;\\;&\\; w & - &            j & - & \\num{0.1}a & = & 0 & \\quad\\relax \\\\\n");
printf("                 \\text{II}\\;\\;&\\;   &   &            j & - & \\num{0.4}a & = & 0 & \\quad\\relax \\\\\n");
printf("                \\text{III}\\;\\;&\\;   &   & -\\num{0.25}j & + & \\num{0.1}a & = & 0 & \\quad|:(-\\num{0.25})\n");
printf("                \\end{array}\n");
printf("                \\\\[1ex] &\n");
printf("                \\begin{array}{r|rcrcrcll}\n");
printf("                  \\text{I}\\;\\;&\\; w & - & j & - & \\num{0.1}a & = & 0 & \\quad\\relax \\\\\n");
printf("                 \\text{II}\\;\\;&\\;   &   & j & - & \\num{0.4}a & = & 0 & \\quad\\relax \\\\\n");
printf("                \\text{III}\\;\\;&\\;   &   & j & - & \\num{0.4}a & = & 0 & \\quad\\relax\n");
printf("                \\end{array}\n");
printf("              \\end{alignat*}\n");
printf("            \\endgroup\n");
printf("            Da die Zeilen II und III des Gleichungssystems\n");
printf("            übereinstimmen, existiert für die Übergangsmatrix\n");
printf("            $B$ eine nicht-triviale stationäre Verteilung.\n");
printf("      \\item Die stationäre Verteilung erhält man nun,\n");
printf("            indem man das Gleichungssystem löst, das\n");
printf("            sich durch Weglassen aller redundanten\n");
printf("            Zeilen aus dem vorherigen ergibt:\n");
printf("            \\begingroup\n");
printf("              \\renewcommand{\\arraycolsep}{2pt}%%\n");
printf("              \\begin{alignat*}{1}\n");
printf("                &\n");
printf("                \\begin{array}{r|rcrcrcll}\n");
printf("                 \\text{I}\\;\\;&\\; w & - & j & - & \\num{0.1}a & = & 0 & \\quad\\relax \\\\\n");
printf("                \\text{II}\\;\\;&\\;   &   & j & - & \\num{0.4}a & = & 0 & \\quad|+\\num{0.4} a\n");
printf("                \\end{array}\n");
printf("                \\\\[1ex] &\n");
printf("                \\begin{array}{r|rcrcrcll}\n");
printf("                 \\text{I}\\;\\;&\\; w & - & j & - & \\num{0.1}a & = & 0          & \\quad|\\leftarrow\\text{II} \\\\\n");
printf("                \\text{II}\\;\\;&\\;   &   & j &   &            & = & \\num{0.4}a & \\quad\\relax\n");
printf("                \\end{array}\n");
printf("                \\\\[1ex] &\n");
printf("                \\begin{array}{r|rcrcrcll}\n");
printf("                 \\text{I}\\;\\;&\\; w & - & \\num{0.4}a & - & \\num{0.1}a & = & 0          & \\quad\\relax \\\\\n");
printf("                \\text{II}\\;\\;&\\;   &   &          j &   &            & = & \\num{0.4}a & \\quad\\relax\n");
printf("                \\end{array}\n");
printf("                \\\\[1ex] &\n");
printf("                \\begin{array}{r|rcrcll}\n");
printf("                 \\text{I}\\;\\;&\\; w & - & \\num{0.5}a & = & 0          & \\quad|+\\num{0.5}a \\\\\n");
printf("                \\text{II}\\;\\;&\\;   &   &          j & = & \\num{0.4}a & \\quad\\relax\n");
printf("                \\end{array}\n");
printf("                \\\\[1ex] &\n");
printf("                \\begin{array}{r|rcl}\n");
printf("                 \\text{I}\\;\\;&\\; w & = & \\num{0.5}a \\\\\n");
printf("                \\text{II}\\;\\;&\\; j & = & \\num{0.4}a\n");
printf("                \\end{array}\n");
printf("              \\end{alignat*}\n");
printf("            \\endgroup\n");
printf("            Alle stationären Verteilungen der Matrix\n");
printf("            $B$ haben damit die Form:\n");
printf("            \\begin{equation*}\n");
printf("              x=\\begin{pmatrix}\\num{0.5}a\\\\\\num{0.4}a\\\\a\\end{pmatrix}\n");
printf("               =a\\cdot\\begin{pmatrix}\\num{0.5}\\\\\\num{0.4}\\\\\\num{1}\\end{pmatrix}\n");
printf("            \\end{equation*}\n");
printf("            Die kleinstmögliche Lösung mit\n");
printf("            ganzzahligen Werten ergibt sich\n");
printf("            für $a=\\num{10}$ und man\n");
printf("            erhält:\n");
printf("            \\begin{equation*}\n");
printf("              x=10\\cdot\\begin{pmatrix}\\num{0.5}\\\\\\num{0.4}\\\\\\num{1}\\end{pmatrix}\n");
printf("               =\\begin{pmatrix}5\\\\4\\\\10\\end{pmatrix}\n");
printf("              \\quad\\text{mit}\\quad\n");
printf("              |x|=\\num{19}\n");
printf("            \\end{equation*}\n");
printf("            In der Anfangspopulation sollten also\n");
printf("            \\num{19} Fähen vorhanden sein: \\num{5}\n");
printf("            als Welpen, \\num{4} als junge und\n");
printf("            \\num{10} als ausgewachsene Tiere.\n");
printf("    \\end{enumerate}\n");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

