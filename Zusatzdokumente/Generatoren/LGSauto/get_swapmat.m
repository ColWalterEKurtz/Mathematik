function T = get_swapmat(A, col, down = true)

  # nothing to swap by default
  T = eye(size(A));

  # diagonal element is not close to zero
  if ( !epsequal(A(col, col), 0) )

    # stop here
    return

  endif

  # search element below diagonal element
  if (down)

    b = col + 1;
    d = 1;
    e = rows(A);

  # search element above diagonal element
  else

    b = col - 1;
    d = -1;
    e = 1;

  endif

  # initialize with invalid value
  opt = col;

  # find element closest to 1 or -1
  for i = b:d:e

    # another zero found
    if ( epsequal(A(i, col), 0) )

      continue

    endif

    # first candidate found
    if (opt == col)

      opt = i;

    # check next candidate
    else

      # get distance to 1
      d = abs(1 - A(i, col));
      m = abs(1 - A(opt, col));

      # use element that is closer to 1
      if (d < m)

        opt = i;

      endif

    endif

  endfor

  # no element found
  if (opt == col)

    # signalize trouble
    T = nan(size(A));

    # stop here
    return

  endif

  T(col, col) = 0;
  T(col, opt) = 1;
  T(opt, opt) = 0;
  T(opt, col) = 1;

endfunction

