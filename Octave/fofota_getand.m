function x = fofota_getand(A, cat1, cat2)
  % get coordinates
  [row col] = fofota_getposand(cat1, cat2);
  % set return value
  x = A(row, col);
endfunction

