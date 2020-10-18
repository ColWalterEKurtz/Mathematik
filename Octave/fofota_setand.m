function B = fofota_setand(A, cat1, cat2, val)
  % init return value
  B = A;
  % get coordinates
  [row col] = fofota_getposand(cat1, cat2);
  % set given value
  B(row, col) = val;
endfunction

