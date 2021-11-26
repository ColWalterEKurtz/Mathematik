% Speicher leeren
clear all;

% Kantenlaenge
a = 5;

% Punkte (x y z)
A = [0 0 0]'                      % vorne links
B = [0 a 0]'                      % vorne rechts
C = [-sqrt(3)/2.0*a a/2.0 0]'     % hinten
D = [-a/3.0 a/2.0 sqrt(6)/3.0*a]' % Spitze
E = A+0.5*(B-A)                   % Mitte zwischen A und B
F = B+0.5*(C-B)                   % Mitte zwischen B und C
G = A+0.5*(C-A)                   % Mitte zwischen A und C
H = [-a/3.0 a/2.0 0]'             % Fusspunkt der Hoehe

% alle Punkte als Matrix
PP = [A B C D E F G H]

% ------------------------------------------------------------------------------

% Projektionsebene E : x = s + au + bv
s = [-5;  0;  0];
u = [ 0;  1;  0];
v = [ 0;  0;  1];

% r = Standpunkt (Blickrichtung zum Ursprung; Parallelprojektion)
r = -[4; 1; 1];

% Schnittpunkte berechnen
PS = para(PP, s, u, v, r);

% Koordinatentransformation
PL = global2local(PS, s, u, v);

% Schnittpunkte anzeigen
getCoordinates(PL, '');

