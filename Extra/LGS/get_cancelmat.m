function T = get_cancelmat(A, b)

  msize = rows(A);

  T = diag(ones(msize, 1));

  for i = 1:msize

    clear numbers;

    nonzeroc = 0;
    nonzeron = 0;

    for j = 1:msize

      if ( !epsequal(A(i, j), 0) )

        nonzeroc += 1; 
        nonzeron  = A(i, j); 

      endif

      if ( isint(A(i, j)) )

        numbers(j) = A(i, j);

      else

        numbers(j) = 1;

      endif
      
    endfor

    if ( isint(b(i)) )

      numbers(msize + 1) = b(i);

    else

      numbers(msize + 1) = 1;

    endif

    T(i, i) = 1 / gcd(num2cell(numbers){:});

    if (nonzeroc == 1)

      if (nonzeron < 0)

        T(i, i) = -T(i, i);

      endif

    endif

    if (epsequal(T(i, i), 1))

      T(i, i) = 1;

    endif

  endfor

endfunction

