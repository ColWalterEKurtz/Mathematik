function uv = proj_get_plane_coordinates(p, q, r, s)
%
% p = q + u * r + v * s
%
% p = [x y z]
% q = [x y z]
% r = [x y z]
% s = [x y z]
%

  xval = abs(r(1)) + abs(s(1));
  yval = abs(r(2)) + abs(s(2));
  zval = abs(r(3)) + abs(s(3));

  minval = min( [xval yval zval] );

  % calculate u and v from y and z coordinates
  if (xval == minval)

    i = 2;
    j = 3;
    k = 1;

  % calculate u and v from x and z coordinates
  elseif (yval == minval)

    i = 1;
    j = 3;
    k = 2;

  % calculate u and v from x and y coordinates
  else

    i = 1;
    j = 2;
    k = 3;

  endif

  A = [ r(i) s(i)
        r(j) s(j) ];

  b = [ p(i) - q(i)
        p(j) - q(j) ];

  % calculate local coordinates from px and py only
  uv = transpose(inv(A) * b);

  % calculate z coordinate
  check = q(k) + uv(1) * r(k) + uv(2) * s(k);

  % check if p is an element of the layer
  if (abs(p(k) - check) > 1e12)

    uv = [NaN NaN];

    return;

  endif

endfunction

