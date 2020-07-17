function flag = isAlmostInt(x)

  flag = 0;

  if !isnan(x)
    eps = 1e-3;
    xa = abs(x);
    xf = floor(xa);
    if (abs(xa - xf) < eps) ...
    || (abs(xa - xf - 1) < eps)
      flag = 1;
    endif
  endif

endfunction


