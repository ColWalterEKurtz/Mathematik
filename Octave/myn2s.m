% -----
% myn2s
% -----
%
% number to string
%
% x       the number to convert
% maxdcp  maximum number of decimal places
%         0 <= maxdcp <= 12
%         0: convert to fraction
% addbrn  add round brackets if x is negative
% addbrf  add round brackets if x is a fraction
% addsgn  add + sign if x is not negative
% addtex  add tex macros
%
function str = myn2s( x,              ...
                      maxdcp = 7,     ...
                      addbrn = false, ...
                      addbrf = false, ...
                      addsgn = false, ...
                      addtex = true   )
  % set format strings
  if addtex
    % NaN format
    fmtnan = "\\text{~%s~}";
    % Inf format
    fmtinf = "\\infty";
    % integer format
    fmtint = "\\num{%d}";
    % decimal format
    fmtdec = "\\num{%%.%df}";
    % fraction format
    fmtfrc = "\\frac{\\num{%d}}{\\num{%d}}";
    % brace format
    fmtbrc = "\\left(%s\\right)";
  else
    % NaN format
    fmtnan = "%s";
    % Inf format
    fmtinf = "%s";
    % integer format
    fmtint = "%d";
    % decimal format
    fmtdec = "%%.%df";
    % fraction format
    fmtfrc = "%d/%d";
    % brace format
    fmtbrc = "(%s)";
  endif
  % NaN
  if isnan(x)
    str = sprintf(fmtnan, x);
    % stop here
    return
  endif
  % get absolute value and signum
  if (abs(x) < 1e-12)
    x = 0;
    s = 0;
  elseif (x < 0)
    x = abs(x);
    s = -1;
  else
    s = 1;
  endif
  % get numerator and denominator
  if isinf(x)
    n = Inf;
    d = 1;
  elseif (maxdcp > 0)
    n = x;
    d = 1;
  else
    [n d] = rat(x, 1e-12);
  endif
  % convert to string
  if isinf(n)
    % infinity
    str = sprintf(fmtinf, n);
  elseif (maxdcp > 0)
    % first run with many decimal places
    str = sprintf("%.12f", n);
    dot = 0;
    pos = 0;
    % find last non-zero
    for i = 1:length(str)
      if (dot == 0)
        if (str(i) == '.')
          dot = i;
        endif
      else
        if (str(i) != '0')
          pos = i;
        endif
      endif
    endfor
    % number of decimal places needed
    dec = pos - dot;
    % integer value
    if (dec < 1)
      str = sprintf(fmtint, round(n));
    % rational value
    else
      % assert maximum number of decimal places
      if (dec > maxdcp) dec = maxdcp; endif
      % final run with apropriate number of decimal places
      fmt = sprintf(fmtdec, dec);
      str = sprintf(fmt, n);
    endif
  elseif (d == 1)
    % integer value
    str = sprintf(fmtint, n);
  else
    % rational value
    str = sprintf(fmtfrc, n, d);
  endif
  % add negative sign and braces
  if (s < 0)
    % add sign inside braces
    str = sprintf("-%s", str);
    % add round braces
    if addbrn
      str = sprintf(fmtbrc, str);
    elseif (addbrf && (d > 1))
      str = sprintf(fmtbrc, str);
    endif
  % add positive sign and braces
  else
    % add round braces first
    if (addbrf && (d > 1))
      str = sprintf(fmtbrc, str);
    endif
    % add sign outside braces
    if addsgn
      str = sprintf("+%s", str);
    endif
  endif
endfunction

