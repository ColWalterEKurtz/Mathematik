function step_by_step(A, b)

  % check rank
  if (rank(A) != max(size(A)))

    % notify user
    printf("matrix has invalid rank\n")

    % stop here
    return

  endif

  % start LaTeX environments
  printf("\\begin{equation*}\n");
  printf("\\begin{array}{l}\n");

  % eliminate elements below main diagonal
  for n = 1:(rows(A) - 1)

    % try to divide by gcm
    C = get_cancelmat(A, b);

    % check if at least one element is different from the identity matrix
    if ( !matequal(C, eye(size(A))) )

      show_array(A, b, C);
      printf("\\\\ \\\\\n");
      A = C * A;
      b = C * b;

    endif

    % diagonal element is close to zero
    if (epsequal(A(n, n), 0))

      T = get_swapmat(A, n);

      if (hasnan(T))

        % notify user
        printf("unable to swap pivot element\n")

        % stop here
        return

      endif

      show_array(A, b, T);
      printf("\\\\ \\\\\n");
      A = T * A;
      b = T * b;

    endif

    T = get_killmat(A, n);

    if (hasnan(T))

      % notify user
      printf("unable to calculate elimination matrix\n")

      % stop here
      return

    endif

    show_array(A, b, T);
    printf("\\\\ \\\\\n");
    A = T * A;
    b = T * b;

  endfor

  % eliminate elements above main diagonal
  for n = rows(A):-1:2

    % try to divide by gcm
    C = get_cancelmat(A, b);

    % check if at least one element is different from the identity matrix
    if ( !matequal(C, eye(size(A))) )

      show_array(A, b, C);
      printf("\\\\ \\\\\n");
      A = C * A;
      b = C * b;

    endif

    % diagonal element is close to zero
    if (epsequal(A(n, n), 0))

      T = get_swapmat(A, n, false);

      if (hasnan(T))

        % notify user
        printf("unable to swap pivot element\n")

        % stop here
        return

      endif

      show_array(A, b, T);
      printf("\\\\ \\\\\n");
      A = T * A;
      b = T * b;

    endif

    T = get_killmat(A, n, false);

    if (hasnan(T))

      % notify user
      printf("unable to calculate elimination matrix\n")

      % stop here
      return

    endif

    show_array(A, b, T);
    printf("\\\\ \\\\\n");
    A = T * A;
    b = T * b;

  endfor

  % try to divide by gcm
  C = get_cancelmat(A, b);

  % check if at least one element is different from the identity matrix
  if ( !matequal(C, eye(size(A))) )

    show_array(A, b, C);
    printf("\\\\ \\\\\n");
    A = C * A;
    b = C * b;

  endif

  % create identity matrix
  if ( !matequal(A, eye(size(A))) )

    T = diag(1 ./ diag(A));

    show_array(A, b, T);
    printf("\\\\ \\\\\n");
    A = T * A;
    b = T * b;

  endif

  % show result
  show_array(A, b, eye(size(A)));

  % close LaTeX environments
  printf("\\end{array}\n");
  printf("\\end{equation*}\n");

endfunction

