function str = texnum(num)
%
% version 2018-09-18.1
%

signum = '';
absnum = abs(num);

% close to zero
if (absnum < 1e-9)

  % set zero
  str = '\num{0}';

  % finished
  return;

endif

% check sign
if (num < 0)

  signum = '-';

endif

% get fraction
[num den] = rat(absnum);

% integer
if (den == 1)

  % use integer
  str = sprintf('\\num{%s%d}', signum, absnum);

% fraction
else

  % avoid large numbers
  if (num > 1000) || (den > 1000)

    % use decimal places
    str = sprintf('\\num{%s%g}', signum, absnum);

  else

    % use fraction
    str = sprintf('%s\\frac{\\num{%d}}{\\num{%d}}', signum, num, den);

  endif

endif

endfunction

