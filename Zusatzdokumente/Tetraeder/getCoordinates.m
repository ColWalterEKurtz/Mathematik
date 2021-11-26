function getCoordinates(P, flag)
%
% gibt die LaTeX-Definition der uebergebenen Punkte aus
%
%     [ | |     | ]
% P = [ A B ... Z ]
%     [ | |     | ]

for i = 1:size(P, 2)

  x = P(1, i);
  y = P(2, i);

  printf("\\coordinate (%s%s) at (%8.4f, %8.4f);\n", flag, char(i + 64), x, y);

end

end

