% -----------
% mypolyshift
% -----------
%
% Shift polynom p by dx and dy.
% dx  x distance
% dy  y distance
%
function q = mypolyshift(p, dx, dy)
  % get number of coefficients
  n = length(p);
  % initialize shifted polynom with zeros
  q = p * 0;
  % y-shift
  q(n) = p(n) + dy;
  % x-shift
  for xp = 1:(n-1)
    % calculate aj*(x-dx)^j
    c = 1;
    for i = 1:xp
      c = conv(c, [1 -dx]);
    endfor
    c = p(n-xp) * c;
    % add aj*(x-dx)^j to new polynom
    for i = 0:xp
      q(n-i) += c(xp-i+1);
    endfor
  endfor
endfunction

