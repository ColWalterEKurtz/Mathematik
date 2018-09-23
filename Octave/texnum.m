function str = texnum(num)
%
% version 2018-09-23.1
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
  str = sprintf('\\num{%s%d}', signum, num);

% fraction
else

  % avoid large numbers
  if (num > 1000) || (den > 1000)

    % try square of ugly fraction
    square = absnum * absnum;

    % get fraction
    [num den] = rat(square);

    % avoid large numbers
    if (num > 1000) || (den > 1000)
    
      % use decimal places
      str = sprintf('\\num{%s%g}', signum, absnum);

    else

      % integer
      if (den == 1)

        % use integer
        str = sprintf('%s\\sqrt{\\num{%d}}', signum, num);

      else

        % use root
        str = sprintf('%s\\sqrt{\\frac{\\num{%d}}{\\num{%d}}}', signum, num, den);

      endif

    endif

  else

    % use fraction
    str = sprintf('%s\\frac{\\num{%d}}{\\num{%d}}', signum, num, den);

  endif

endif

endfunction

