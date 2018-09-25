function p = getparabolaVA(vx, vy, a)
%
% vx  vertex x-coordinate
% vy  vertex y-coordinate
% a   leading coefficient
%

  % calculate missing coefficients
  b = -2 * a * vx;
  c = a * vx * vx + vy;

  % set return value
  p = [a b c];

endfunction

