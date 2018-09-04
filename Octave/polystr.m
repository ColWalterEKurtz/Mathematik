function term = polystr(ai, x)

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

      strxp = sprintf('^{%d}', (n - i));

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
        if (max(size(term)) == 0)

          strco = '0';

        endif

      endif

    % coefficient == 1
    elseif (abs(a - 1) < 1e-9)

      % last coefficient
      if (i == n)

        strco = '1';

      % inner coefficient
      else

        strco = '';

      endif

    else

      strco = sprintf('%g', a);

    endif

    % append operator, coefficient and variable
    term = sprintf('%s%s%s', term, strop, strco, strvr, strxp);

  endfor

endfunction

