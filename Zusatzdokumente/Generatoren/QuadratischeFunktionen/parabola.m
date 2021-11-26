function [dg vx vy zn z1 z2] = parabola(a, b, c)
%
% version: 2018-09-22.1
%
% f(x) = ax^2 + bx + c
%
% pinfo = [degree vertexX vertexY zeroN zero1 zero2]
%

% threshold
eps = 1e-9;

% reset values
dg = 2;
vx = nan;
vy = nan;
zn = 0;
z1 = nan;
z2 = nan;

% no quadratic term
if (abs(a) < eps)

  % reduce degree
  dg -= 1;

  % no linear term
  if (abs(b) < eps)

    % reduce degree
    dg -= 1;

  endif

  % finish
  return

endif

% vertex
vx = -b / (2 * a);
vy = (4 * a * c - b * b) / (4 * a);

% set zero
if (abs(vx) < eps) vx = 0; endif
if (abs(vy) < eps) vy = 0; endif

% discriminant
d = b * b - 4 * a * c;

% no real zeros
if (d < 0)

  % finish
  return

endif

% calculate zeros
z1 = (-b - sqrt(d)) / (2 * a);
z2 = (-b + sqrt(d)) / (2 * a);

% no different zeros
if (abs(z1 - z2) < eps)

  % set number
  zn = 1;

  % set equal
  z1 = z2;

else

  % set number
  zn = 2;

  % check order
  if (z2 < z1)

    zz = z1;
    z1 = z2;
    z2 = zz;

  endif

endif

endfunction

