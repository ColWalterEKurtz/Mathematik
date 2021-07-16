% --------
% myqsolve
% --------
%
% ax^2 + bx + c = y
%
% res = [x1 x2]
%
function res = myqsolve(a, b, c, y, x)
  % zero threshold
  eps = 1e-12;
  % exact zero
  if (abs(y) < eps) y = 0; endif
  % exact ones
  if (abs(a - 1) < eps) a =  1; endif
  if (abs(a + 1) < eps) a = -1; endif
  % calculate roots
  p = b / a;
  q = (c - y) / a;
  % exact zeros
  if (abs(p) < eps) p = 0; endif
  if (abs(q) < eps) q = 0; endif
  % discriminant
  d = (p/2)^2 - q;
  if (d < 0)
    x1 = NaN;
    x2 = NaN;
  else
    x1 = -p/2 - sqrt(d);
    x2 = -p/2 + sqrt(d);
  endif
  res = [x1 x2];
  % ----------------------------------------------------------------------------
  printf("\\begingroup\n");
  printf("  \\newcommand{\\vstrut}{\\vphantom{\\left(f_0^0\\right)}}%%\n");
  printf("  \\newcommand{\\noeq}{\\phantom{\\Leftrightarrow}\\vstrut&\\quad}%%\n");
  printf("  \\newcommand{\\iseq}{\\Leftrightarrow\\vstrut&\\quad}%%\n");
  printf("  \\newcommand{\\impl}{\\Rightarrow\\vstrut&\\quad}%%\n");
  printf("  \\newcommand{\\nomod}{\\quad&\\phantom{|}}%%\n");
  printf("  \\newcommand{\\domod}[1]{\\quad&|#1}%%\n");
  printf("  \\begin{alignat*}{3}\n");
  % ----------------------------------------------------------------------------
  printf("    \\noeq\n");
  printf("    &\n");
  printf("    %s&=%s\n", myn2s(y, 0,0,0,0,1), mypolystr([a b c], x, [0 0 0 0 1]));
  printf("    &\n");
  % ----------------------------------------------------------------------------
  % set y = 0
  if (y < 0)
    printf("    \\domod{+%s}\n", myn2s(-y, 0,0,0,0,1));
    printf("    \\\\\n");
    c = c + y;
    y = 0;
    printf("    \\iseq\n");
    printf("    &\n");
    printf("    %s&=%s\n", myn2s(y, 0,0,0,0,1), mypolystr([a b c], x, [0 0 0 0 1]));
    printf("    &\n");
  elseif (y > 0)
    printf("    \\domod{-%s}\n", myn2s(y, 0,0,0,0,1));
    printf("    \\\\\n");
    c = c - y;
    y = 0;
    printf("    \\iseq\n");
    printf("    &\n");
    printf("    %s&=%s\n", myn2s(y, 0,0,0,0,1), mypolystr([a b c], x, [0 0 0 0 1]));
    printf("    &\n");
  endif
  % ----------------------------------------------------------------------------
  % set a = 1
  if ((a < 1) || (a > 1))
    printf("    \\domod{:%s}\n", myn2s(a, 0,1,0,0,1));
    printf("    \\\\\n");
    b = b / a;
    c = c / a;
    a = 1;
    printf("    \\iseq\n");
    printf("    &\n");
    printf("    %s&=%s\n", myn2s(y, 0,0,0,0,1), mypolystr([a b c], x, [0 0 0 0 1]));
    printf("    &\n");
  endif
  % ----------------------------------------------------------------------------
  % now a == 1
  p = b;
  q = c;
  % exact zero
  if (abs(p) < eps) p = 0; endif
  if (abs(q) < eps) q = 0; endif
  % ----------------------------------------------------------------------------
  printf("    \\domod{\\;\\text{$pq$-Formel}}\n");
  printf("    \\\\\n");
  printf("    \\noeq\n");
  printf("    &\n");
  printf("    p&=%s\n", myn2s(p, 0,0,0,0,1));
  printf("    &\n");
  printf("    \\nomod\n");
  printf("    \\\\\n");
  printf("    \\noeq\n");
  printf("    &\n");
  printf("    q&=%s\n", myn2s(q, 0,0,0,0,1));
  printf("    &\n");
  printf("    \\nomod\n");
  printf("    \\\\\n");
  printf("    \\noeq\n");
  printf("    &\n");
  printf("    %s_{1,2}&=-\\frac{p}{2}\\pm\\sqrt{\\left(\\frac{p}{2}\\right)^2-q}\n", x);
  printf("    &\n");
  printf("    \\nomod\n");
  % ----------------------------------------------------------------------------
  m = -p/2;
  % exact zero
  if (abs(m) < eps)
    m = 0;
  endif
  arg1 = myn2s(  m, 0,0,0,0,1 );
  arg2 = myn2s( -m, 0,1,1,0,1 );
  arg3 = myn2s(  q, 0,1,0,0,1 );
  printf("    \\\\\n");
  printf("    \\noeq\n");
  printf("    &\n");
  printf("    &=%s\\pm\\sqrt{%s^2-%s}\n", arg1, arg2, arg3);
  printf("    &\n");
  printf("    \\nomod\n");
  % ----------------------------------------------------------------------------
  d = (p/2)^2 - q;
  % exact zero
  if (abs(d) < eps)
    d = 0;
  endif
  arg1 = myn2s(m, 0,0,0,0,1);
  arg2 = myn2s(d, 0,0,0,0,1);
  printf("    \\\\\n");
  printf("    \\noeq\n");
  printf("    &\n");
  printf("    &=%s\\pm\\sqrt{%s}\n", arg1, arg2);
  printf("    &\n");
  printf("    \\nomod\n");
  % ----------------------------------------------------------------------------
  % no real solutions
  if (d < 0)
    printf("    \\\\\n");
    printf("    \\impl\n");
    printf("    &\n");
    printf("    %s_{1,2}&\\not\\in\\mathbb{R}\n", x);
    printf("    &\n");
    printf("    \\nomod\n");
    % stop here
    printf("  \\end{alignat*}\n");
    printf("\\endgroup\n");
    return
  endif
  % ----------------------------------------------------------------------------
  r = sqrt(d);
  % exact zero
  if (abs(r) < eps)
    r = 0;
  endif
  arg1 = myn2s(m, 0,0,0,0,1);
  arg2 = myn2s(r, 0,0,0,0,1);
  printf("    \\\\\n");
  printf("    \\noeq\n");
  printf("    &\n");
  printf("    &=%s\\pm%s\n", arg1, arg2);
  printf("    &\n");
  printf("    \\nomod\n");
  % ----------------------------------------------------------------------------
  if (r == 0)
    x1 = m;
    arg1 = myn2s(x1, 0,0,0,0,1);
    arg2 = myn2s(x1, 6,0,0,0,1);
    if strcmp(arg1, arg2)
      arg2 = "";
    else
      arg2 = sprintf("=%s", arg2);
    endif
    printf("    \\\\\n");
    printf("    \\impl\n");
    printf("    &\n");
    printf("    %s_1&=%s_2=%s%s\n", x, x, arg1, arg2);
    printf("    &\n");
    printf("    \\nomod\n");
  else
    x1 = m - r;
    x2 = m + r;
    arg1 = myn2s(x1, 0,0,0,0,1);
    arg2 = myn2s(x1, 6,0,0,0,1);
    if strcmp(arg1, arg2)
      arg2 = "";
    else
      arg2 = sprintf("=%s", arg2);
    endif
    printf("    \\\\\n");
    printf("    \\noeq\n");
    printf("    &\n");
    printf("    %s_1&=%s%s\n", x, arg1, arg2);
    printf("    &\n");
    printf("    \\nomod\n");
    arg1 = myn2s(x2, 0,0,0,0,1);
    arg2 = myn2s(x2, 6,0,0,0,1);
    if strcmp(arg1, arg2)
      arg2 = "";
    else
      arg2 = sprintf("=%s", arg2);
    endif
    printf("    \\\\\n");
    printf("    \\noeq\n");
    printf("    &\n");
    printf("    %s_2&=%s%s\n", x, arg1, arg2);
    printf("    &\n");
    printf("    \\nomod\n");
  endif
  % ----------------------------------------------------------------------------
  printf("  \\end{alignat*}\n");
  printf("\\endgroup\n");
endfunction

