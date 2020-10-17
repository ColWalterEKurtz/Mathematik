function s = fofota_cat(A, fmt)
  s = "\\numbers";
  fmtnan = "%s{}";
  fmtnum = sprintf("%%s{%s}", fmt);
  for i = 1:3
    for j=1:3
      if isnan(A(i, j))
        s = sprintf(fmtnan, s);
      else
        s = sprintf(fmtnum, s, A(i, j));
      endif
    endfor
  endfor
endfunction

