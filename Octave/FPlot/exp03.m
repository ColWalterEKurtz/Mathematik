clear all;

% ------------------------------------------------------------------------------

% bounding box
xmin = -7;
xmax =  3;
ymin = -2;
ymax =  6;

% tikzpicture scale factor
scale = 0.7;

% values at axis
xone = 1;
yone = 1;

% ------------------------------------------------------------------------------

% x increment
dx = 0.1;

% ------------------------------------------------------------------------------

feq = 'f(x)=\pi x^2e^x';

function y = f(x)

  y = pi * x^2 * exp(x);

endfunction

% ------------------------------------------------------------------------------

% array index
i = 0;

% calculate sampling point values
for x = xmin:dx:xmax

  % call function
  y = f(x);

  if (y < (ymin - 1))

    y = ymin - 1;

  elseif (y > (ymax + 1))

    y = ymax + 1;

  endif
  
  % step index
  i += 1;

  % append values
  xi(i) = x;
  yi(i) = y;

endfor

% ------------------------------------------------------------------------------

printf("\\begin{tikzpicture}[scale=%g]\n", scale);
printf("  %% grid\n");
printf("  \\draw[draw=black!50!white] (%.3f, %.3f) grid[step=0.5] (%.3f, %.3f);\n", xmin, ymin, xmax, ymax);
printf("  %% x-axis\n");
printf("  \\draw[line width=0.6pt, ->, >=stealth] (%.3f, 0) -- (%.3f, 0) node[below left] {\\small$x$};\n", xmin, xmax);
printf("  %% x scale\n");
printf("  \\draw[line width=0.6pt] (1, 0.1) -- (1, -0.1) node[below] {\\small%g};\n", xone);
printf("  %% y-axis\n");
printf("  \\draw[line width=0.6pt, ->, >=stealth] (0, %.3f) -- (0, %.3f) node[below left] {\\small$y$};\n", ymin, ymax);
printf("  %% y scale\n");
printf("  \\draw[line width=0.6pt] (0.1, 1) -- (-0.1, 1) node[left] {\\small%g};\n", yone);
printf("  %% function\n");
printf("  \\begin{scope}\n");
printf("    \\clip (%.3f, %.3f) rectangle (%.3f, %.3f);\n", xmin, ymin, xmax, ymax);
printf("    \\draw plot[smooth] coordinates\n");
printf("    {");
for i = 1:max(size(xi))
  if (mod(i, 3) == 1)
    printf("\n      ");
  else
    printf(" ");
  endif
  printf("(%7.3f, %7.3f)", xi(i), yi(i));
endfor
printf("\n");
printf("    };\n");
printf("  \\end{scope}\n");
if (length(feq) > 0)
  printf("  \\node[below] at (%.3f, %.3f)\n", xmin + (xmax - xmin) / 2, ymin);
  printf("  {%%\n");
  printf("    \\rule[-1.1\\baselineskip]{0pt}{2.2\\baselineskip}%%\n");
  printf("    \\begin{minipage}{%.3fcm}%%\n", (xmax - xmin) * scale);
  printf("      \\begin{equation*}%%\n");
  printf("        %s\n", feq);
  printf("      \\end{equation*}%%\n");
  printf("    \\end{minipage}%%\n");
  printf("  };\n");
endif
printf("\\end{tikzpicture}\n");

