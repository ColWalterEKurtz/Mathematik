function x = fofota_subif(A, i1, j1, i2, j2)
  x = NaN;
  if isnan(A(i1, j1)) return; endif
  if isnan(A(i2, j2)) return; endif
  x = A(i1, j1) - A(i2, j2);
endfunction

