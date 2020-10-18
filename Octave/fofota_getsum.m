function x = fofota_getsum(A, cat)
  % get coordinates
  [row col] = fofota_getpossum(cat);
  % set return value
  x = A(row, col);
endfunction

