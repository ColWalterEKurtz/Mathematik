function [row col] = fofota_getposand(cat1, cat2)
  row = NaN;
  col = NaN;
  % get column (attribute 1)
  if (cat1(1) == 1)
    if cat1(2)
      col = 1;
    else
      col = 2;
    endif
  else
    if cat2(2)
      col = 1;
    else
      col = 2;
    endif
  endif
  % get row (attribute 2)
  if (cat1(1) == 2)
    if cat1(2)
      row = 1;
    else
      row = 2;
    endif
  else
    if cat2(2)
      row = 1;
    else
      row = 2;
    endif
  endif
endfunction

