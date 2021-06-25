% ----------
% mypolyplot
% ----------
%
% plot polynom
%
% f     vector of coefficients
% xmin  left boundary
% xmax  right boundary
% ymin  upper boundary
% ymax  lower boundary
% dx    x increment
% scale tikz scale factor
%
% example:
% f = [0.5 -2 0];
% mypolyplot(f, -3, 7, -3, 7);
%
function mypolyplot(f, xmin, xmax, ymin, ymax, dx = 0.1, scale = 1)
  % calculate coordinates
  x = [xmin:dx:xmax];
  y = polyval(f, x);
  % cut off large y values
  maxoff = 3;
  for i = 1:length(y)
    if (y(i) < (ymin - maxoff))
      y(i) = ymin - maxoff;
    elseif (y(i) > (ymax + maxoff))
      y(i) = ymax + maxoff;
    endif
  endfor
  % show tex code
  printf("\\begin{tikzpicture}[scale=%.3f]\n", scale);
  printf("  %% grid\n");
  printf("  \\draw[draw=black!50!white] (%.3f, %.3f) grid[step=0.5] (%.3f, %.3f);\n", xmin, ymin, xmax, ymax);
  printf("  %% x-axis\n");
  printf("  \\draw[line width=0.6pt, ->, >=stealth] (%.3f, 0) -- (%.3f, 0) node[below left] {\\small$x$};\n", xmin, xmax);
  printf("  %% y-axis\n");
  printf("  \\draw[line width=0.6pt, ->, >=stealth] (0, %.3f) -- (0, %.3f) node[below left] {\\small$y$};\n", ymin, ymax);
  printf("  %% function: f(x)=%s\n", mypolystr(f, "x"));
  printf("  \\begin{scope}[line width=0.7pt]\n");
  printf("    \\clip (%.3f, %.3f) rectangle (%.3f, %.3f);\n", xmin, ymin, xmax, ymax);
  printf("    \\draw plot[smooth] coordinates\n");
  printf("    {");
  for i = 1:length(x)
    if (mod(i, 3) == 1)
      printf("\n      ");
    else
      printf(" ");
    endif
    printf("(%7.3f, %7.3f)", x(i), y(i));
  endfor
  printf("\n");
  printf("    };\n");
  printf("  \\end{scope}\n");
  printf("\\end{tikzpicture}\n");
endfunction

