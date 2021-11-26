% Reset
close all
clear all

% Vektor mit allen x Werten
x = [-6:0.05:6];

% y Werte berechnen
y = f(x);

% Verschiebung in y Richtung
ty1 = f(x) .+ 2;
ty2 = f(x) .- 2;

# Grafik anzeigen
plot3(x, y, ty1, ty2, -6, 6, -6, 6);

% Verschiebung in x Richtung
tx1 = f(x .+ 1.5);
tx2 = f(x .- 1.5);

# Grafik anzeigen
plot3(x, y, tx1, tx2, -6, 6, -6, 6);

% Skalierung in y Richtung
sy1 = f(x) .* 1.8;
sy2 = f(x) .* 0.2;

# Grafik anzeigen
plot3(x, y, sy1, sy2, -6, 6, -6, 6);

% Skalierung in x Richtung
sx1 = f(x .* 1.8);
sx2 = f(x .* 0.6);

# Grafik anzeigen
plot3(x, y, sx1, sx2, -6, 6, -6, 6);

% Spiegelung
rx = -f(x);
ry = f(-x);

# Grafik anzeigen
plot2(x, y, rx, -6, 6, -6, 6);
plot2(x, y, ry, -6, 6, -6, 6);

% f(x)
file = fopen("f.xy", "w");
fprintf(file, '%8.4f %8.4f\n', [x;y]);
fclose(file);

% Translation y +
file = fopen("transy-pos.xy", "w");
fprintf(file, '%8.4f %8.4f\n', [x;ty1]);
fclose(file);

% Translation y -
file = fopen("transy-neg.xy", "w");
fprintf(file, '%8.4f %8.4f\n', [x;ty2]);
fclose(file);

% Translation x +
file = fopen("transx-pos.xy", "w");
fprintf(file, '%8.4f %8.4f\n', [x;tx1]);
fclose(file);

% Translation x -
file = fopen("transx-neg.xy", "w");
fprintf(file, '%8.4f %8.4f\n', [x;tx2]);
fclose(file);

% Skalierung y (>1)
file = fopen("scaley-big.xy", "w");
fprintf(file, '%8.4f %8.4f\n', [x;sy1]);
fclose(file);

% Skalierung y (<1)
file = fopen("scaley-sml.xy", "w");
fprintf(file, '%8.4f %8.4f\n', [x;sy2]);
fclose(file);

% Skalierung x (>1)
file = fopen("scalex-big.xy", "w");
fprintf(file, '%8.4f %8.4f\n', [x;sx1]);
fclose(file);

% Skalierung x (<1)
file = fopen("scalex-sml.xy", "w");
fprintf(file, '%8.4f %8.4f\n', [x;sx2]);
fclose(file);

% Spiegelung x
file = fopen("reflectx.xy", "w");
fprintf(file, '%8.4f %8.4f\n', [x;rx]);
fclose(file);

% Spiegelung y
file = fopen("reflecty.xy", "w");
fprintf(file, '%8.4f %8.4f\n', [x;ry]);
fclose(file);

