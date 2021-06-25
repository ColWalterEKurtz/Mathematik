% --------
% mychktab
% --------
%
% xi     vector of x values
% fxi    vector of related f(x) values
% dfxi   vector of related f'(x) values
% maxdp  maximum number of decimal places
% flbl   name of the function
% xlbl   name of the variable
%
% example:
% f   = [-1 24 -117 182];
% df  = polyder(f);
% t   = [2 3 7.5 13 16.5];
% ft  = polyval(f, t);
% dft = polyval(df, t);
% mychktab(t, ft, dft, 3, "f", "t");
%
function mychktab(xi, fxi, dfxi, maxdp = 3, flbl = "f", xlbl = "x_i")
  % zero threshold
  eps = 1e-12;
  % start with empty string matrix
  S = {};
  % first column
  S{1, 1} = "Punkt";
  S{2, 1} = sprintf("$%s$", xlbl);
  S{3, 1} = sprintf("$%s(%s)$", flbl, xlbl);
  S{4, 1} = sprintf("$%s'(%s)$", flbl, xlbl);
  S{5, 1} = "Steigung in $P$";
  S{6, 1} = "Klassifikation";
  % point labels
  for j = 1:length(xi)
    S(1, j+1) = sprintf("$P_{%d}$", j);
  endfor
  % numbers
  for j = 1:length(xi)
    S(2, j+1) = strcat("$", myn2s(  xi(j), maxdp,0,0,0,1), "$");
    S(3, j+1) = strcat("$", myn2s( fxi(j), maxdp,0,0,0,1), "$");
    S(4, j+1) = strcat("$", myn2s(dfxi(j), maxdp,0,0,0,1), "$");
  endfor
  % gradient
  for j = 1:length(xi)
    if (abs(dfxi(j)) < eps)
      S{5, j+1} = "$\\rightarrow$";
    elseif (dfxi(j) < 0)
      S{5, j+1} = "$\\searrow$";
    else
      S{5, j+1} = "$\\nearrow$";
    endif
  endfor
  % classification
  for j = 2:length(xi)-1
    if (abs(dfxi(j)) < eps)
      ml = dfxi(j-1);
      sl = 1;
      if (abs(ml) < eps)
        sl = 0;
      elseif (ml < 0)
        sl = -1;
      endif
      mr = dfxi(j+1);
      sr = 1;
      if (abs(mr) < eps)
        sr = 0;
      elseif (mr < 0)
        sr = -1;
      endif
      if ((sl > 0) && (sr < 0))
        S{6, j+1} = "HP";
      elseif ((sl < 0) && (sr > 0))
        S{6, j+1} = "TP";
      elseif (sl == sr)
        S{6, j+1} = "SP";
      endif
    endif
  endfor
  % get size of string matrix
  nrows = size(S, 1);
  ncols = size(S, 2);
  % get width per column
  cw = ones(1, ncols);
  for j = 1:ncols
    for i = 1:nrows
      w = length(S{i, j});
      if (cw(j) < w)
        cw(j) = w;
      endif
    endfor
  endfor
  % tabular column definition
  cdef = "r";
  for j = 2:ncols
    cdef = sprintf("%s|c", cdef);
  endfor
  printf("\\begin{center}\n");
  printf("  \\renewcommand{\\arraystretch}{1.25}%%\n");
  printf("  \\begin{tabular}{%s}\n", cdef);
  for i = 1:nrows
    if (i > 1)
      printf("    \\hline\n");
    endif
    printf("    ");
    for j = 1:ncols
      if (j > 1)
        printf(" & ");
      endif
      fmt = sprintf("%%-%ds", cw(j));
      printf(fmt, S{i, j});
    endfor
    if (i < nrows)
      printf(" \\\\");
    endif
    printf("\n");
  endfor
  printf("  \\end{tabular}\n");
  printf("\\end{center}\n");
endfunction

