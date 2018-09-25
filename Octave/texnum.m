function str = texnum(num, ugly = true)
%
% version 2018-09-25.1
%

  % not a number
  if isnan(num)

    % don't return any characters
    str = '';

    % exit function
    return

  endif

  % infinity
  if isinf(num)

    % don't return any characters
    str = '';

    % exit function
    return

  endif

  % complex number
  if iscomplex(num)

    % don't return any characters
    str = '';

    % exit function
    return

  endif

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

        % show ugly numbers
        if ugly

          % use decimal places
          str = sprintf('\\num{%s%g}', signum, absnum);

        else

          % don't show ugly numbers
          str = '';

        endif

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

