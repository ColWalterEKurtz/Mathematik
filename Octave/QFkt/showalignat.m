function showalignat(abc)
%
% version: 2018-09-23.1
%

  % number of parabolas
  imax = size(abc, 1);

  % preceeding number
  exnum = 0;

  printf('\\allowdisplaybreaks\n');
  printf('\\begin{alignat*}{5}\n');

  % create LaTeX code
  for i = 1:imax

    % get coefficients
    a = abc(i, 1);
    b = abc(i, 2);
    c = abc(i, 3);

    % get TeX commands
    sa = texnum(a, false);
    sb = texnum(b, false);
    sc = texnum(c, false);

    % skip ugly polynoms
    if (length(sa) == 0) continue endif
    if (length(sb) == 0) continue endif
    if (length(sc) == 0) continue endif
    
    % calculate vertex and zeros
    [dg vx vy zn z1 z2] = parabola(a, b, c);

    % no parabola
    if (dg < 2) continue endif

    % get TeX commands
    svx = texnum(vx, false);
    svy = texnum(vy, false);
    sz1 = texnum(z1, false);
    sz2 = texnum(z2, false);

    % skip ugly polynoms
    if              (length(svx) == 0)  continue endif
    if              (length(svy) == 0)  continue endif
    if ((zn > 0) && (length(sz1) == 0)) continue endif
    if ((zn > 1) && (length(sz2) == 0)) continue endif

    % step counter
    exnum += 1;

    % no real zero
    if (zn == 0)

      % show polynom
      printf('  \\text{%02d)}\\qquad f(x)&=%s & \\colgap & \\text{NST}&=\\emptyset & \\colgap & S&\\left(%s\\;\\middle|\\;%s\\right)', exnum, polystr([a b c], 'x'), svx, svy);

    % one zero
    elseif (zn == 1)

      % show polynom
      printf('  \\text{%02d)}\\qquad f(x)&=%s & \\colgap & \\text{NST}&=\\left\\{%s\\right\\} & \\colgap & S&\\left(%s\\;\\middle|\\;%s\\right)', exnum, polystr([a b c], 'x'), sz1, svx, svy);

    % two zeros
    elseif (zn == 2)

      % show polynom
      printf('  \\text{%02d)}\\qquad f(x)&=%s & \\colgap & \\text{NST}&=\\left\\{%s;%s\\right\\} & \\colgap & S&\\left(%s\\;\\middle|\\;%s\\right)', exnum, polystr([a b c], 'x'), sz1, sz2, svx, svy);

    endif

    % add LaTeX line break
    if (i < imax)

      printf(' \\\\[1ex]');

    endif

    % add line break
    printf('\n');

  endfor

  printf("\\end{alignat*}\n");

endfunction

