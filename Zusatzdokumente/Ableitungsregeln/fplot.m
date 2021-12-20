clear all;
format long;
format compact;
addpath '../../Octave/'

% ---------
% polygraph
% ---------
%
% plot polynom graph
%
% f       vector of coefficients
% xmin    left boundary
% xmax    right boundary
% ymin    upper boundary
% ymax    lower boundary
% dx      x increment (=0.1)
% indent  line indent (="")
%
function polygraph(f, xmin, xmax, ymin, ymax, dx = 0.1, indent = "")
  % calculate coordinates (x, y)
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
  printf("%s\\begin{scope}[line width=0.7pt]\n", indent);
  printf("%s  %% f(x) = %s\n", indent, mypolystr(f, "x", [0 0 0 0 0]));
  printf("%s  %% xmin = %7.3f\n", indent, xmin);
  printf("%s  %% xmax = %7.3f\n", indent, xmax);
  printf("%s  %% ymin = %7.3f\n", indent, ymin);
  printf("%s  %% ymax = %7.3f\n", indent, ymax);
  printf("%s  %% dx   = %7.3f\n", indent, dx);
  printf("%s  \\clip (%.3f, %.3f) rectangle (%.3f, %.3f);\n", indent, xmin, ymin, xmax, ymax);
  printf("%s  \\draw plot[smooth] coordinates\n", indent);
  printf("%s  {", indent);
  for i = 1:length(x)
    if (mod(i, 3) == 1)
      printf("\n%s    ", indent);
    else
      printf(" ");
    endif
    printf("(%7.3f, %7.3f)", x(i), y(i));
  endfor
  printf("\n%s  };\n", indent);
  printf("%s\\end{scope}\n", indent);
endfunction

% -------
% polytan
% -------
%
% f       vector of coefficients
% xmin    left boundary
% xmax    right boundary
% ymin    upper boundary
% ymax    lower boundary
% x0      point of contact
% indent  line indent (="")
%
function polytan(f, xmin, xmax, ymin, ymax, x0, indent = "")
  y0 = polyval(f, x0);
  df = polyder(f);
  m  = polyval(df, x0);
  b  = y0 - m * x0;
  xl = xmin;
  xr = xmax;
  yl = m * xl + b;
  yr = m * xr + b;
  if (yl < ymin)
    xl = (ymin - b) / m;
    yl = m * xl + b;
  elseif (yl > ymax)
    xl = (ymax - b) / m;
    yl = m * xl + b;
  endif
  if (yr < ymin)
    xr = (ymin - b) / m;
    yr = m * xr + b;
  elseif (yr > ymax)
    xr = (ymax - b) / m;
    yr = m * xr + b;
  endif
  % show tex code
  printf("%s\\begin{scope}\n", indent);
  printf("%s  %% f(x)  = %s\n", indent, mypolystr(f, "x", [0 0 0 0 0]));
  printf("%s  %% f'(x) = %s\n", indent, mypolystr(df, "x", [0 0 0 0 0]));
  printf("%s  %% x0    = %7.3f\n", indent, x0);
  printf("%s  %% y0    = %7.3f\n", indent, y0);
  printf("%s  %% t(x)  = %s\n", indent, mypolystr([m b], "x", [0 0 0 0 0]));
  printf("%s  \\clip (%.3f, %.3f) rectangle (%.3f, %.3f);\n", indent, xmin, ymin, xmax, ymax);
  printf("%s  \\draw (%.3f, %.3f) -- (%.3f, %.3f);\n", indent, xl, yl, xr, yr);
  printf("%s\\end{scope}\n", indent);
endfunction

% --------
% polycirc
% --------
%
% f       vector of coefficients
% x0      point of contact
% indent  line indent (="")
%
function polycirc(f, x0, indent = "")
  y0    = polyval(f, x0);
  df    = polyder(f);
  m     = polyval(df, x0);
  d2f   = polyder(df);
  kappa = polyval(d2f, x0);
  if (abs(kappa) < 1e-9)
    return;
  endif
  r   = 1.0 / kappa;
  M   = [x0 y0]' + r / norm([-m 1]) * [-m 1]';
  phi = atan((y0 - M(2)) / (x0 - M(1))) * 180 / pi;
  % show tex code
  printf("%s\\begin{scope}\n", indent);
  printf("%s  %% f(x)   = %s\n", indent, mypolystr(f, "x", [0 0 0 0 0]));
  printf("%s  %% f'(x)  = %s\n", indent, mypolystr(df, "x", [0 0 0 0 0]));
  printf("%s  %% f''(x) = %s\n", indent, mypolystr(d2f, "x", [0 0 0 0 0]));
  printf("%s  %% x0     = %7.3f\n", indent, x0);
  printf("%s  %% y0     = %7.3f\n", indent, y0);
  printf("%s  %% kappa  = %7.3f\n", indent, kappa);
  printf("%s  %% r      = %7.3f\n", indent, r);
  printf("%s  %% Mx     = %7.3f\n", indent, M(1));
  printf("%s  %% My     = %7.3f\n", indent, M(2));
  printf("%s  \\fill (%.3f, %.3f) circle[radius=1.00pt];\n", indent, M(1), M(2));
  printf("%s  \\draw (%.3f, %.3f) circle[radius=%.3f];\n", indent, M(1), M(2), r);
  printf("%s  \\draw (%.3f, %.3f) -- (%.3f, %.3f);\n", indent, M(1), M(2), x0, y0);
  printf("%s\\end{scope}\n", indent);
endfunction

% settings
scale =  1.0;
xmin  = -5.0;
xmax  =  5.0;
ymin  = -1.0;
ymax  =  4.0;
x0    =  1.5;
f     = [1/3 0 -3/4 1];
% calculations
y0    = polyval(f, x0);
df    = polyder(f);
m     = polyval(df, x0);
b     = y0 - m * x0;
d2f   = polyder(df);
kappa = polyval(d2f, x0);
r     = 1.0 / kappa;
M     = [x0 y0]' + r / norm([-m 1]) * [-m 1]';

printf("%% layout and global options\n");
printf("\\documentclass\n");
printf("[\n");
printf("  draft    = true,\n");
printf("  fontsize = 11pt,\n");
printf("  parskip  = half-,\n");
printf("  BCOR     = 0pt,\n");
printf("  DIV      = 11,\n");
printf("  ngerman,\n");
printf("  dvipsnames\n");
printf("]\n");
printf("{scrartcl}\n");
printf("\n");
printf("%% default packages\n");
printf("\\usepackage[utf8]{inputenc}\n");
printf("\\usepackage[T1]{fontenc}\n");
printf("\\usepackage{babel}\n");
printf("\\usepackage{lmodern}\n");
printf("%% extra packages\n");
printf("\\usepackage{amsmath}\n");
printf("\\usepackage{amssymb}\n");
printf("\\usepackage{tikz}\n");
printf("\n");
printf("%% enable calculations in TikZ\n");
printf("\\usetikzlibrary{calc}\n");
printf("\n");
printf("%% no headers no footers\n");
printf("\\pagestyle{empty}\n");
printf("\n");
printf("%% ------------------------------------------------------------------------------\n");
printf("\\begin{document}\n");
printf("%% ------------------------------------------------------------------------------\n");
printf("\n");
printf("%% ----------------------------------------------------------------------\n");
printf("\\section*{Grafische Interpretation der Funktionswerte von f, f' und f''}\n");
printf("%% ----------------------------------------------------------------------\n");
printf("\\begin{center}\n");
% coordinate system
printf("  \\begin{tikzpicture}[scale=%.3f]\n", scale);
printf("    %% grid\n");
printf("    \\draw[draw=black!50!white] (%.3f, %.3f) grid[step=0.5] (%.3f, %.3f);\n", xmin, ymin, xmax, ymax);
printf("    %% x-axis\n");
printf("    \\draw[line width=0.6pt, ->, >=stealth] (%.3f, 0) -- (%.3f, 0) node[below left] {$x$};\n", xmin, xmax);
printf("    %% y-axis\n");
printf("    \\draw[line width=0.6pt, ->, >=stealth] (-1.5, %.3f) -- (-1.5, %.3f) node[below left]\n", ymin, ymax);
printf("    {%%\n");
printf("      \\begin{minipage}{5em}\n");
printf("        \\vspace*{-\\abovedisplayskip}\n");
printf("        \\begin{equation*}\n");
printf("          \\begin{split}\n");
printf("            f(x)&=y\\\\\n");
printf("            f'(x)&=m\\\\\n");
printf("            f''(x)&=\\kappa\n");
printf("          \\end{split}\n");
printf("        \\end{equation*}\n");
printf("      \\end{minipage}%%\n");
printf("    };\n");
% graph
polygraph(f, xmin, xmax, ymin, ymax, 0.1, "    ");
% tangent
polytan(f, xmin, xmax, ymin, ymax, x0, "    ");
% t(x) = m0 * x + b
xt = 2.5;
yt = m * xt + b;
at = atan(m) * 180 / pi;
printf("    %% t(x) = m0 * x + b\n");
printf("    \\node[below=-10pt, rotate=%.3f] at (%.3f, %.3f)\n", at, xt, yt);
printf("    {%%\n");
printf("      \\begin{minipage}{8em}\n");
printf("        \\vspace*{-\\abovedisplayskip}\n");
printf("        \\begin{equation*}\n");
printf("          t(x)=m_0\\cdot x+b_0\n");
printf("        \\end{equation*}\n");
printf("      \\end{minipage}%%\n");
printf("    };\n");
% circle
polycirc(f, x0, "    ");
% 1/k0 = r0
printf("    %% 1/k0 = r0\n");
printf("    \\node[above left=%.3f] at (%.3f, %.3f)\n", r, M(1), M(2));
printf("    {%%\n");
printf("      $\\displaystyle\\frac{1}{\\kappa_0}=r_0$%%\n");
printf("    };\n");
% point of contact
printf("    %% point of contact\n");
printf("    \\fill (%7.3f, %7.3f) circle[radius=1.25pt] node[below right] {$P\\left(x_0\\;\\middle|\\;y_0\\right)$};\n", x0, y0);
% x0
printf("    %% x0\n");
printf("    \\draw[style=dashed, line width=0.6pt] (%.3f, 0) -- (%.3f, %.3f);\n", x0, x0, y0);
printf("    \\draw (%.3f, 2pt) -- (%.3f, -2pt) node[below] {$x_0$};\n", x0, x0);
% f
xf = 2.35;
yf = polyval(f, xf);
printf("    %% f\n");
printf("    \\node[right] at (%.3f, %.3f) {$f$};\n", xf, yf);
% f'(x)
printf("    %% f'(x)\n");
yshift = abs(ymax - ymin) + 1;
printf("    \\begin{scope}[yshift=-%.3fcm]\n", yshift);
% coordinate system
printf("      %% grid\n");
printf("      \\draw[draw=black!50!white] (%.3f, %.3f) grid[step=0.5] (%.3f, %.3f);\n", xmin, ymin, xmax, ymax);
printf("      %% x-axis\n");
printf("      \\draw[line width=0.6pt, ->, >=stealth] (%.3f, 0) -- (%.3f, 0) node[below left] {$x$};\n", xmin, xmax);
printf("      %% y-axis\n");
printf("      \\draw[line width=0.6pt, ->, >=stealth] (-1.5, %.3f) -- (-1.5, %.3f) node[below left] {$m$};\n", ymin, ymax);
% graph
polygraph(df, xmin, xmax, ymin, ymax, 0.1, "      ");
% f'
xf = 1.85;
yf = polyval(df, xf);
printf("      %% f'\n");
printf("      \\node[right] at (%.3f, %.3f) {$f'$};\n", xf, yf);
printf("      %% x0\n");
printf("      \\draw (1.500, 2pt) -- (1.500, -2pt) node[below] {$x_0$};\n");
printf("    \\end{scope}\n");
% f''(x)
ymin = -4;
printf("    %% f''(x)\n");
printf("    \\begin{scope}[yshift=-%.3fcm]\n", 2 * yshift);
% coordinate system
printf("      %% grid\n");
printf("      \\draw[draw=black!50!white] (%.3f, %.3f) grid[step=0.5] (%.3f, %.3f);\n", xmin, ymin, xmax, ymax);
printf("      %% x-axis\n");
printf("      \\draw[line width=0.6pt, ->, >=stealth] (%.3f, 0) -- (%.3f, 0) node[below left] {$x$};\n", xmin, xmax);
printf("      %% y-axis\n");
printf("      \\draw[line width=0.6pt, ->, >=stealth] (-1.5, %.3f) -- (-1.5, %.3f) node[below left] {$\\kappa$};\n", ymin, ymax);
% graph
polygraph(d2f, xmin, xmax, ymin, ymax, 0.1, "      ");
% f''
xf = 1.35;
yf = polyval(d2f, xf);
printf("      %% f''\n");
printf("      \\node[right] at (%.3f, %.3f) {$f''$};\n", xf, yf);
printf("      %% x0\n");
printf("      \\draw (1.500, 2pt) -- (1.500, -2pt) node[below] {$x_0$};\n");
printf("    \\end{scope}\n");
printf("  \\end{tikzpicture}\n", scale);
printf("\\end{center}\n");
printf("\n");
printf("%% ------------------------------------------------------------------------------ \\end{document}\n");
printf("\\end{document}\n");
printf("%% ------------------------------------------------------------------------------\n");

