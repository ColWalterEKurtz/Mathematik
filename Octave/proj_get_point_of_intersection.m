function i = proj_get_point_of_intersection(s, r, plane)
%
% s:     [x y z]    g: x = s + u * r
% r:     [x y z]    g: x = s + u * r
% plane: [a b c d]  L: 0 = ax + by + cz - d
%
% i:     [x y z]
%

  % get readable names
  sx = s(1);
  sy = s(2);
  sz = s(3);

  % get readable names
  rx = r(1);
  ry = r(2);
  rz = r(3);

  % get readable names
  a = plane(1);
  b = plane(2);
  c = plane(3);
  d = plane(4);

  % calculate u from ax + by + cz - d = 0 with [x y z] = s + u * r
  numerator = d - (a * sx + b * sy + c * sz);
  denominator = a * rx + b * ry + c * rz;

  % avoid division by zero
  if (abs(denominator) < 1e-12)

    i = [NaN NaN NaN];

    return;

  endif

  % calculate point of intersection
  i = s + (numerator / denominator) * r;

endfunction

