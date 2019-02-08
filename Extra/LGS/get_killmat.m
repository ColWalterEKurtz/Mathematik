function T = get_killmat(A, col, down = true)

  # nothing to calculate by default
  T = eye(size(A));

  # diagonal element is close to zero
  if ( epsequal(A(col, col), 0) )

    # signalize trouble
    T = nan(size(A));

    # stop here
    return

  endif

  # kill elements below diagonal element
  if (down)

    b = col + 1;
    d = 1;
    e = rows(A);

  # kill elements above diagonal element
  else

    b = col - 1;
    d = -1;
    e = 1;

  endif

  for i = b:d:e

    # A(i, col) is already zero
    if ( epsequal(A(i, col), 0) )

      continue

    endif

    # two integer values: calculate lcm
    if ( isint(A(i, col)) && isint(A(col, col)) )

      alcm = lcm(abs(A(i, col)), abs(A(col, col)));
      fak1 = alcm / A(i, col);
      fak2 = alcm / A(col, col);

    else

      fak1 = A(col, col);
      fak2 = A(i, col);

      if ( epsequal(fak1, fak2) )

        fak1 = 1;
        fak2 = 1;

      endif

    endif

    # switch one sign
    T(i, i)   =  fak1;
    T(i, col) = -fak2;

    # both elements are negative
    if ( (T(i, col) < 0) && (T(i, i) < 0) )

      # use two positive elements
      T(i, col) = -T(i, col);
      T(i, i)   = -T(i, i);

    endif

  endfor

endfunction

