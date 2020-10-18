function B = fofota_setsum(A, cat, val)
  % init return value
  B = A;
  % get coordinates
  [row col] = fofota_getpossum(cat);
  % set given value
  B(row, col) = val;
endfunction

