% Ausgabeformat definieren
format short g

% Vektor mit allen x-Werten erzeugen
x = [-1:0.1:7];

% f(x) berechnen
for i = 1:columns(x)

  y(i) = 0.5 * (x(i) - 1) * (x(i) - 5);

end

% kleine Werte auf Null setzen
for i = 1:columns(x)

  if (abs(x(i)) < 0.0001)

    x(i) = 0;

  end

  if (abs(y(i)) < 0.0001)

    y(i) = 0;

  end

end

% Datei zum Schreiben oeffnen
FID = fopen("fx.table", "w");

% Wertetabelle exportieren
for i = 1:columns(x)

  fprintf(FID, "%10.3f %10.3f\n", x(i), y(i));

end

% Datei schliessen
fclose(FID);

