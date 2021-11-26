% Winkel
s30 = sin(pi/6);
c30 = cos(pi/6);
s15 = sin(pi/12);
c15 = cos(pi/12);

% Punkte
S = [0.0; 0.0]
B = [2.5; 0.0]
D = [4.0; 0.0]
E = [5 * c30; 5 * s30]
F = [5.0; 0.0]

% oberer Strahl
f0 = [0; 0];
f  = [c30; s30];

% Winkelhalbierende
g0 = [0; 0];
g  = [c15; s15];

% unterer Strahl
h0 = [0; 0];
h  = [1; 0];

% Parallelen
p1 = [2.5; 0];
p2 = [4.0; 0];
p  = [s15; -c15];

% ----------------
% Schnitt f mit P1
% ----------------
AA = [ f(1) -p(1)
       f(2) -p(2) ];

bb = [ p1(1) - f0(1)
       p1(2) - f0(2) ];

rs = inv(AA) * bb;

A  = f0 + rs(1) * f
AT = p1 + rs(2) * p

% ----------------
% Schnitt f mit P2
% ----------------
AA = [ f(1) -p(1)
       f(2) -p(2) ];

bb = [ p2(1) - f0(1)
       p2(2) - f0(2) ];

rs = inv(AA) * bb;

C  = f0 + rs(1) * f
CT = p2 + rs(2) * p

% ----------------
% Endpunkte von P1
% ----------------
Ax = A + (A-B)/norm(A-B)
Bx = B + (B-A)/norm(B-A)

% ----------------
% Endpunkte von P2
% ----------------
Cx = C + (C-D)/norm(C-D)
Dx = D + (D-C)/norm(D-C)

