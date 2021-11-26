function p = getparabolaZZV(z1, z2, vy)
%
% z1  first zero
% z2  second zero
% vy  vertex y-coordinate
%

  % threshold
  eps = 1e-9;

  % one signle zero
  if (abs(z1 - z2) < eps)

    % but vertex out of x-axis
    if (abs(vy) > eps)

      % invalid parabola
      p = [nan nan nan];

      % finish
      return

    endif

  endif

  % vertex on x-axis
  if (abs(vy) < eps)

    % but two different zeros
    if (abs(z1 - z2) > eps)

      % invalid parabola
      p = [nan nan nan];

      % finish
      return

    endif
    
  endif

  % multiply linear terms
  p = polymul([1 -z1], [1 -z2]);

  % vertex x coordinate
  vx = (z1 + z2) / 2;

  % y scale factor
  scale = vy / (p(1) * vx * vx + p(2) * vx + p(3));

  % scale parabola
  p = polymul(p, [scale]);

endfunction

