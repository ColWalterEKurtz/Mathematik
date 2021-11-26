% Datei 'f.xy' zum Schreiben oeffnen
FID = fopen("f.xy", "w");
% Intervall und Schrittweite der x-Werte
for x = -5:0.1:5
  % Funktionswert berechnen: y = -x^2 + 2x + 1
  y = -x**2 + 2*x + 1;
  % Wertepaar 'x y' ausgeben
  fprintf(FID, "%6.2f\t%6.2f\n", x, y);
end
% Datei schliessen
fclose(FID);
