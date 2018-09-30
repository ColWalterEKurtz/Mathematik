clear all;

addpath 'Octave/';

printf("\\begin{exercise}\n");
printf("      {ID-9945d02537df3ea4890a8338091dc506f33a6c0f}\n");
printf("      {Straßenbahn}\n");
printf("  \\ifproblem\\problem\n");
printf("    Nach Angaben der Initiative \\glqq Pro-Bahn-Mitteldeutsch\\-land\\grqq{} beträgt\n");
printf("    der Anteil der Schwarzfahrer im Nahverkehr \\SIrange{3}{4}{\\percent}.\n");
printf("    Informationen der Magdeburger Verkehrsbetriebe zufolge wurden im\n");
printf("    vergangenen Jahr ca. 62 Millionen Personen befördert, die Anzahl der\n");
printf("    ertappten Schwarzfahrer betrug -- so konnte man in der Tageszeitung\n");
printf("    \\glqq Volksstimme\\grqq{} lesen -- \\num{32000}.\n");
printf("    \\begin{enumerate}[1)]\n");
printf("      \\item Vergleichen Sie diese Zahlenwerte miteinander und\n");
printf("            kommentieren Sie das Ergebnis.\n");
printf("      \\item Zwei Kontrolleure steigen an der Haltestelle \\glqq Nicolaiplatz\\grqq{}\n");
printf("            in eine Bahn der Linie~10 in Richtung Zentrum und kontrollieren\n");
printf("            alle 42 Fahrgäste. An der Haltestelle \\glqq Alter Markt\\grqq{} steigen\n");
printf("            sie in eine Bahn der Linie~6 Richtung Diesdorf um, in der sie weitere\n");
printf("            56 Fahrgäste überprüfen.\n");
printf("            \\begin{enumerate}[a)]\n");
printf("              \\item Berechnen Sie ausgehend von einem Schwarzfahreranteil von ca.\n");
printf("                    \\pc{4} am gesamten Fahrgastaufkommen die Wahrscheinlichkeit,\n");
printf("                    dass die Kontrolleure bei diesen beiden Kontrollen mindestens\n");
printf("                    2 Schwarzfahrer ertappen.\n");
printf("              \\item Untersuchen Sie, mit wie vielen Schwarzfahrern bei diesen\n");
printf("                    beiden Kontrollen zu rechnen ist.\n");
printf("              \\item Berechnen Sie die Wahrscheinlichkeit, dass unter den 42\n");
printf("                    Fahrgästen der Linie~10 kein Schwarzfahrer ist.\n");
printf("              \\item Ermitteln Sie rechnerisch, wie viele Personen überprüft\n");
printf("                    werden müssen, um mit einer Wahrscheinlichkeit von mehr als\n");
printf("                    \\pc{95} mindestens einen Schwarzfahrer zu erwischen.\n");
printf("            \\end{enumerate}\n");
printf("      \\item Die Anzahl der Schwarzfahrer hält sich nur in Grenzen, wenn jeder\n");
printf("            Fahrgast mit einer gewissen Wahrscheinlichkeit $p$ kontrolliert wird.\n");
printf("            Ist dieser Wert $p$ zu klein, wird die Anzahl der Schwarzfahrer\n");
printf("            dramatisch ansteigen, ist der Wert zu hoch, gehen z.\\,B. Einnahmen\n");
printf("            durch das \\glqq erhöhte Beförderungsentgelt\\grqq{} in Höhe von\n");
printf("            40~Euro verloren.\\par\n");
printf("            Im Folgenden betrachten wir einen Fahrgast, der ca. 52 Fahrten\n");
printf("            im Monat unternimmt und gehen dabei von folgenden Annahmen aus:\n");
printf("            \\begin{itemize}\n");
printf("              \\item Der durchschnittliche Fahrpreis beträgt pro Fahrgast\n");
printf("                    und Fahrt 1,20 Euro.\n");
printf("              \\item Der Schwarzfahreranteil am gesamten Fahrgastaufkommen\n");
printf("                    beträgt ca. \\pc{4}.\n");
printf("              \\item Ein Schwarzfahrer wird ehrlich, wenn er bei seinen 52\n");
printf("                    Fahrten mindestens zweimal kontrolliert wird.\n");
printf("              \\item Ein ehrlicher Fahrgast wird zum Schwarzfahrer, wenn er\n");
printf("                    bei seinen 52 Fahrten überhaupt nicht kontrolliert wird.\n");
printf("            \\end{itemize}\n");
printf("            \\begin{enumerate}[a)]\n");
printf("              \\item Begründen Sie, dass sich die Wahrscheinlichkeit dafür,\n");
printf("                    dass ein Schwarzfahrer ehrlich wird, durch folgenden\n");
printf("                    Term beschreiben lässt:\n");
printf("                    \\begin{equation*}\n");
printf("                      1-(1-p)^{52}-52p(1-p)^{51}\n");
printf("                    \\end{equation*}\n");
printf("              \\item Begründen Sie, dass sich die Wahrscheinlichkeit dafür,\n");
printf("                    dass ein ehrlicher Fahrgast zum Schwarzfahrer wird, durch\n");
printf("                    folgenden Term beschreiben lässt:\n");
printf("                    \\begin{equation*}\n");
printf("                      (1-p)^{52}\n");
printf("                    \\end{equation*}\n");
printf("              \\item Ermitteln Sie mit Hilfe eines zweistufigen Baumdiagramms\n");
printf("                    einen Funktionsterm $P_{1}$ in Abhängigkeit von $p$ für\n");
printf("                    die Wahrscheinlichkeit, dass ein beliebiger Fahrgast\n");
printf("                    am Ende des Monats Schwarzfahrer ist.\n");
printf("              \\item Bestimmen Sie einen Funktionsterm $P_{2}$ für die\n");
printf("                    Wahrscheinlichkeit, dass ein beliebiger Fahrgast am\n");
printf("                    Ende des Monats ehrlicher Zahler ist.\n");
printf("              \\item Stellen Sie die beiden Funktionsterme mit dem CAS grafisch\n");
printf("                    dar und beschreiben Sie jeweils den Verlauf des Graphen.\n");
printf("              \\item Ermitteln Sie, für welches $p$ die Einnahmen pro Fahrgast\n");
printf("                    maximal werden.\n");
printf("              \\item Untersuchen Sie, wie sich eine Verdoppelung des\n");
printf("                    \\glqq erhöhten Beförderungsentgelts\\grqq{} auswirkt.\n");
printf("            \\end{enumerate}\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  %%\\ifoutcome\\outcome\n");
printf("  %%\\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';
