function [row col] = fofota_getpossum(cat)
  row = NaN;
  col = NaN;
  % get coordinates
  if (cat(1) == 1)
    if cat(2)
      row = 3;
      col = 1;
    else
      row = 3;
      col = 2;
    endif
  else
    if cat(2)
      row = 1;
      col = 3;
    else
      row = 2;
      col = 3;
    endif
  endif
endfunction

