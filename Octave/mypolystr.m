% ---------
% mypolystr
% ---------
%
% ai      vector of coefficients
% x       name of the variable
% numopt  myn2s parameters
%
function str = mypolystr(ai, x = "x", numopt = [7 0 0 0 1])
  % set zero threshold
  eps = 1e-12;
  % get number options
  maxdcp = numopt(1);
  addbrn = numopt(2);
  addbrf = numopt(3);
  addsgn = numopt(4);
  addtex = numopt(5);
  % reset return value
  str = "";
  % get number of coefficients
  n = length(ai);
  % create term
  for i = 1:n
    % get positive value
    co = abs(ai(i));
    % skip all zero coefficients
    if (co < eps)
      continue
    endif
    % get exponent
    xp = n - i;
    % next operator
    op = "";
    % set next operator
    if (ai(i) < 0)
      % first coefficient
      if (length(str) == 0)
        op = "-";
      % further coefficients
      else
        if addtex
          op = "-";
        else
          op = " - ";
        endif
      endif
    elseif (ai(i) > 0)
      % further coefficients
      if (length(str) > 0)
        if addtex
          op = "+";
        else
          op = " + ";
        endif
      endif
    endif
    % add next operator
    str = sprintf("%s%s", str, op);
    % coefficient needed
    cn = true;
    % check if coefficient is needed
    if (abs(co - 1) < eps)
      if (xp > 0)
        cn = false;
      endif
    endif
    % add coefficient if needed
    if cn
      str = sprintf("%s%s", str, myn2s( co,     ...
                                        maxdcp, ...
                                        addbrn, ...
                                        addbrf, ...
                                        addsgn, ...
                                        addtex  ));
    endif
    % add variable
    if (xp > 0)
      str = sprintf("%s%s", str, x);
    endif
    % add exponent
    if (xp > 1)
      if addtex
        str = sprintf("%s^{%d}", str, xp);
      else
        str = sprintf("%s^%d", str, xp);
      endif
    endif
  endfor
  % empty term
  if (length(str) == 0)
    str = "0";
  endif
endfunction

