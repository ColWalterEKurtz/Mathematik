function T = get_killmat(A, col, down = true)

  % nothing to calculate by default
  T = eye(size(A));

  % diagonal element is close to zero
  if ( epsequal(A(col, col), 0) )

    % signalize trouble
    T = nan(size(A));

    % stop here
    return

  endif

  % kill elements below diagonal element
  if (down)

    b = col + 1;
    d = 1;
    e = rows(A);

  % kill elements above diagonal element
  else

    b = col - 1;
    d = -1;
    e = 1;

  endif

  for i = b:d:e

    % the number to eliminate
    delnum = A(i, col);

    % the number to add
    addnum = A(col, col);

    % the number to eliminate is already zero
    if ( epsequal(delnum, 0) )

      continue

    endif

    % two integer values: calculate lcm
    if ( isint(delnum) && isint(addnum) )

      lcmnum = lcm(delnum, addnum);

      delnum = lcmnum / A(col, col);
      addnum = lcmnum / A(i, col);

    else

      % same number: treat both numbers as 1
      if ( epsequal(delnum, addnum) )

        delnum = 1;
        addnum = 1;

      endif

    endif

    % check if numbers have different sign
    if ((delnum * addnum) < 0)

      % both factors can be positive
      delnum = abs(delnum);
      addnum = abs(addnum);

    % both numbers have the same sign
    else

      % factors must have different sign
      delnum = -abs(delnum);
      addnum =  abs(addnum);

    endif

    % set elements
    T(i, i)   = addnum;
    T(i, col) = delnum;

  endfor

endfunction

