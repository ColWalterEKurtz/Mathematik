function term = polystr(ai, x = 'x')
%
% version 2018-09-18.1
%

  % reset return value
  term = '';

  % get number of coefficients
  n = max(size(ai));

  % buid term
  for i = 1:n

    % reset all
    strop = ''; % operator
    strco = ''; % coefficient
    strvr = ''; % variable
    strxp = ''; % exponent

    % use variable
    if (i < n)

      strvr = sprintf('%s', x);

    endif

    % use exponent
    if (i < (n - 1))

      strxp = sprintf('^{\\num{%d}}', (n - i));

    endif

    % check signum 
    if (ai(i) < 0)

      % set operator
      strop = '-';

    else

      % don't start terms with a plus
      if (i > 1)
  
        % set operator
        strop = '+';

      endif

    endif

    % get positive number
    a = abs(ai(i));

    % coefficient == 0
    if (a < 1e-9)

      % reset all
      strop = ''; % operator
      strco = ''; % coefficient
      strvr = ''; % variable
      strxp = ''; % exponent

      % last coefficient
      if (i == n)

        % and term is still empty
        if (length(term) == 0)

          strco = sprintf('\\num{%g}', 0);

        endif

      endif

    % coefficient == 1
    elseif (abs(a - 1) < 1e-9)

      % last coefficient
      if (i == n)

        strco = sprintf('\\num{%g}', 1);

      % inner coefficient
      else

        strco = '';

      endif

    else

      % get fraction
      [anum aden] = rat(a);

      % integer
      if (aden == 1)

        % use integer
        strco = sprintf('\\num{%g}', a);

      % fraction
      else

        % avoid large numbers
        if (anum > 1000) || (aden > 1000)

          % use decimal places
          strco = sprintf('\\num{%g}', a);

        else

          % use fraction
          strco = sprintf('\\frac{\\num{%g}}{\\num{%g}}', anum, aden);

        endif

      endif

    endif

    % append operator, coefficient and variable
    term = sprintf('%s%s%s', term, strop, strco, strvr, strxp);

  endfor

endfunction

