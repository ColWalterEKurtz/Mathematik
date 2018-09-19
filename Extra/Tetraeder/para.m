function PS = para(PP, s, u, v, r)
%
% PP: Matrix der zu projizierenden Punkte (3 x n)
%     [ | |     | ]
%     [ A B ... Z ]
%     [ | |     | ]
%
% s: Stuetzvektor der Projektionsebene (3 x 1)
%    [ x ]
%    [ y ]
%    [ z ]
%
% u, v: Richtungsvektoren der Projektionsebene (3 x 1)
%    [ x ]
%    [ y ]
%    [ z ]
%
% r: Richtung der Lichtstrahlen (3 x 1)
%    [ x ]
%    [ y ]
%    [ z ]

  % Schnittpunkte von Gerade und Projektionsebene:
  %                        p + alpha * r = s + lambda * u + mue * v
  % =>  alpha * r - lambda * u - mue * v = s - p
  A = [r -u -v];

  % Schnittpunkte mit Projektionsebene berechnen
  for i = 1:size(PP, 2)

    % Punktkoordinaten als Stuetzvektor der Geraden
    PI = PP(:,i);

    % alpha, lambda und mue
    x = inv(A) * (s - PI);

    % Schnittpunkt
    PS(:,i) = PI + x(1) * r;

  end

end

