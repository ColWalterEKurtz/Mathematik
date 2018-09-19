function PL = global2local(PP, o, x, y)
%
% PP: Matrix der zu projizierenden Punkte (3 x n)
%     [ | |     | ]
%     [ A B ... Z ]
%     [ | |     | ]
%
% o: globale Koordinaten des neuen Ursprungs
% x: globale Koordinaten der lokalen x-Richtung (3 x 1)
% y: globale Koordinaten der lokalen y-Richtung (3 x 1)
%

  % Senkrechte zu x und y
  z = cross(x, y);

  % Schnittpunkte mit Projektionsebene berechnen
  for i = 1:size(PP, 2)

    % globale Koordinaten
    PI = PP(:,i);

    r = [ PI - o ];
    A = [ x y z ];

    lmt = inv(A) * r;

    PL(1, i) = lmt(1);
    PL(2, i) = lmt(2);

  end

end
