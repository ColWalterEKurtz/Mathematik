function flag = matequal(A, B)

  arows = rows(A);
  acols = columns(A);

  brows = rows(B);
  bcols = columns(B);

  % check rows
  if (arows != brows)

    flag = false;
    return

  endif

  % check columns
  if (acols != bcols)

    flag = false;
    return

  endif

  % calculate difference
  D = A - B;

  % check if all elements are zero
  flag = (min(min(zeros(size(D)) == D)) == 1);

endfunction

