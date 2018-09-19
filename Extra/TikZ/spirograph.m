% Ausgabeformat definieren
format short g

% Vektor mit allen Winkeln im Bogenmass
alpha = [0:0.5:360] .* (pi / 180);

% Radien
r1 =  1;
r2 = -0.75;

% Geschwindigkeiten
v1 = -1;
v2 =  2;

% Datei zum Schreiben oeffnen
FID = fopen("spirograph.xy", "w");

% Koordinaten berechnen
for i = 1:columns(alpha)

  p1x = r1 * cos(v1 * alpha(i));
  p1y = r1 * sin(v1 * alpha(i));
  p2x = r2 * cos(v2 * alpha(i));
  p2y = r2 * sin(v2 * alpha(i));

  px = p1x + p2x;
  py = p1y + p2y;

  % Wertepaar in die Datei schreiben
  fprintf(FID, "%7.3f %7.3f\n", px, py);

end

% Datei schliessen
fclose(FID);

