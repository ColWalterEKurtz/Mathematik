function p = polymul(a, b)
%
% version 2018-09-18.1
%
% a = [an a(n-1) ... a1 a0] = an*x^n + a(n-1)*x^(n-1) + ... + a1*x + a0
% b = [bn b(n-1) ... b1 b0] = bn*x^n + b(n-1)*x^(n-1) + ... + b1*x + b0
%
% p = a * b
%

% degree
da = length(a) - 1;
db = length(b) - 1;
dp = da + db;

% p = [0 0 ... 0]
p = zeros(1, dp + 1);

% multiply polynoms
for ai = 1:length(a)

  % exponent of a
  xa = da - ai + 1;

  for bi = 1:length(b)

    % exponent of b
    xb = db - bi + 1;

    % exponent of c
    xc = xa + xb;

    % coefficient of c
    ci = a(ai) * b(bi);

    % add to coefficient
    p(dp - xc + 1) += ci;

  endfor

endfor

endfunction

