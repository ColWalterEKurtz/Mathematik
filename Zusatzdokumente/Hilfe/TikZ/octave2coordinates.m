% LaTeX-Zeichenbefehl beginnen
printf("\\draw plot[smooth] coordinates {");
% Anzahl der berechneten Punkte
n = 0;
% Intervall und Schrittweite der x-Werte
for x = -1.5:0.1:1.5
  % Zeile nach 4 Punkten umbrechen und einruecken
  if (mod(n++, 4) == 0)
    printf("\n     ");
  endif
  % Funktionswert berechnen: y = -x^2 + 2x + 1
  y = -x**2 + 2*x + 1;
  % Wertepaar ' (x, y)' ausgeben
  printf(" (%4.1f, %5.2f)", x, y);
end
% LaTeX-Zeichenbefehl beenden
printf(" };\n");
