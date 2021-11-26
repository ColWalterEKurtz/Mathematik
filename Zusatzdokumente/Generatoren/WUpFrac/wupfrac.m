#!/usr/bin/octave

clear all;

% --------------------------
% generate_coprime_fractions
% --------------------------
%
% nmax  largest numerator
% dmax  largest denominator
%
% n  list of all numerators
% d  list of all denominators
% such that n(i) / d(i) is a coprime fraction
%
function [n d] = generate_coprime_fractions(nmax, dmax)

  A = zeros(nmax, dmax);

  % create matrix
  for p = 1:nmax

    for q = 2:dmax

      % skip integer values
      if (mod(p, q) == 0) continue endif

      % cancel fraction
      r = gcd(p, q);
      i = p / r;
      j = q / r;

      % mark position
      A(i, j) = 1;

    endfor

  endfor

  index = 0;

  % create vectors
  for i = 1:nmax

    for j = 2:dmax

      % add fraction
      if (A(i, j) == 1)
        index += 1;
        n(index) = i;
        d(index) = j;
      endif

    endfor

  endfor

endfunction

% ---------------------------
% generate_expanded_fractions
% ---------------------------
%
% nums  list of numerators to use
% dens  list of denominators to use
% imax  largest allowed integer
%
function [n d] = generate_expanded_fractions(nums, dens, imax)

  index = 0;

  for i = 1:max(size(nums))

    index += 1;

    % add native faction
    n(index) = nums(i);
    d(index) = dens(i);

    nfac = floor(imax / nums(i));
    dfac = floor(imax / dens(i));

    if (nfac < dfac)
      maxfac = nfac;
    else
      maxfac = dfac;
    endif

    % add all possible expanded factions
    for fac = 2:maxfac

      index += 1;

      n(index) = nums(i) * fac;
      d(index) = dens(i) * fac;

    endfor

  endfor

endfunction

% ------------------
% generate_fractions
% ------------------
%
% cmax  largest integer allowed in a coprime fraction
% imax  largest integer allowed in each fraction
%
function [n d] = generate_fractions(cmax, imax)

  [p q] = generate_coprime_fractions(cmax, cmax);
  [n d] = generate_expanded_fractions(p, q, imax);

endfunction

% -------
% choose3
% -------
%
% nums  list of all numerators to consider
% dens  list of all denominators to consider
%
function [n d] = choose3(nums, dens)

  while true

    % get three random indices
    index = 1 + floor(rand(1, 3) * max(size(nums)));

    % get related numerators and denominators
    n = [nums(index(1)) nums(index(2)) nums(index(3))];
    d = [dens(index(1)) dens(index(2)) dens(index(3))];

    % don't choose equal fractions
    if (n(1) * d(2) == n(2) * d(1)) continue endif
    if (n(1) * d(3) == n(3) * d(1)) continue endif
    if (n(2) * d(3) == n(3) * d(2)) continue endif

    break

  endwhile

endfunction

% ----
% min3
% ----
%
% nums  list of 3 numerators
% dens  list of 3 denominators
%
function index = min3(nums, dens)

  index = 1;

  if (nums(2) * dens(index) < nums(index) * dens(2)) index = 2; endif
  if (nums(3) * dens(index) < nums(index) * dens(3)) index = 3; endif

endfunction

% ----
% max3
% ----
%
% nums  list of 3 numerators
% dens  list of 3 denominators
%
function index = max3(nums, dens)

  index = 1;

  if (nums(2) * dens(index) > nums(index) * dens(2)) index = 2; endif
  if (nums(3) * dens(index) > nums(index) * dens(3)) index = 3; endif

endfunction

% -----
% sort3
% -----
%
% nums  list of 3 numerators
% dens  list of 3 denominators
%
function order = sort3(nums, dens)

  imin = min3(nums, dens);
  imax = max3(nums, dens);
  irem = [1 2 3];
  irem(imin) = 0;
  irem(imax) = 0;
  imed = max(irem);

  order = [imin imed imax];

endfunction

% ------
% cancel
% ------
%
% N  numerator
% D  denominator
%
function [n d] = cancel(N, D)

  g = gcd(N, D);
  n = N / g;
  d = D / g;

endfunction

% ----------
% calculateA
% ----------
%
% nums3  list of 3 numerators
% dens3  list of 3 denominators
%
function A = calculateA(nums3, dens3)

  aindex = 0;

  % group A
  a1 = nums3(1);
  a2 = dens3(1);
  a3 = nums3(2);
  a4 = dens3(2);
  a5 = nums3(3);
  a6 = dens3(3);

  % group B
  [b1 b2] = cancel(a1, a2);
  [b3 b4] = cancel(a3, a4);
  [b5 b6] = cancel(a5, a6);

  % group C
  m = lcm(b2, b4, b6);
  c1 = b1 * (m / b2);
  c2 = m;
  c3 = b3 * (m / b4);
  c4 = m;
  c5 = b5 * (m / b6);
  c6 = m;

  % group D
  m = lcm(b1, b3, b5);
  d1 = m;
  d2 = b2 * (m / b1);
  d3 = m;
  d4 = b4 * (m / b3);
  d5 = m;
  d6 = b6 * (m / b5);

  % group E
  i = sort3(nums3, dens3);
  e1 = nums3(i(3));
  e2 = dens3(i(3));
  e3 = nums3(i(1));
  e4 = dens3(i(1));
  e5 = nums3(i(2));
  e6 = dens3(i(2));

  % group F
  [f1 f2] = cancel(e1, e2);
  [f3 f4] = cancel(e3, e4);
  [f5 f6] = cancel(e5, e6);

  % group G
  m = lcm(f2, f4);
  g1 = f1 * (m / f2);
  g2 = m;
  g3 = f3 * (m / f4);
  g4 = m;
  g5 = f5;
  g6 = f6;

  % group H
  h1 = g1 + g3;
  h2 = g2;
  h3 = g5;
  h4 = g6;

  % group I
  [i1 i2] = cancel(h1, h2);
  [i3 i4] = cancel(h3, h4);
  [i1 i4] = cancel(i1, i4);
  [i2 i3] = cancel(i2, i3);

  % group J
  j1 = i1 * i3;
  j2 = i2 * i4;

  % create return value
  aindex = 0;
  % group A
  A(++aindex) = a1;
  A(++aindex) = a2;
  A(++aindex) = a3;
  A(++aindex) = a4;
  A(++aindex) = a5;
  A(++aindex) = a6;
  % group B
  A(++aindex) = b1;
  A(++aindex) = b2;
  A(++aindex) = b3;
  A(++aindex) = b4;
  A(++aindex) = b5;
  A(++aindex) = b6;
  % group C
  A(++aindex) = c1;
  A(++aindex) = c2;
  A(++aindex) = c3;
  A(++aindex) = c4;
  A(++aindex) = c5;
  A(++aindex) = c6;
  % group D
  A(++aindex) = d1;
  A(++aindex) = d2;
  A(++aindex) = d3;
  A(++aindex) = d4;
  A(++aindex) = d5;
  A(++aindex) = d6;
  % group E
  A(++aindex) = e1;
  A(++aindex) = e2;
  A(++aindex) = e3;
  A(++aindex) = e4;
  A(++aindex) = e5;
  A(++aindex) = e6;
  % group F
  A(++aindex) = f1;
  A(++aindex) = f2;
  A(++aindex) = f3;
  A(++aindex) = f4;
  A(++aindex) = f5;
  A(++aindex) = f6;
  % group G
  A(++aindex) = g1;
  A(++aindex) = g2;
  A(++aindex) = g3;
  A(++aindex) = g4;
  A(++aindex) = g5;
  A(++aindex) = g6;
  % group H
  A(++aindex) = h1;
  A(++aindex) = h2;
  A(++aindex) = h3;
  A(++aindex) = h4;
  % group I
  A(++aindex) = i1;
  A(++aindex) = i2;
  A(++aindex) = i3;
  A(++aindex) = i4;
  % group J
  A(++aindex) = j1;
  A(++aindex) = j2;

endfunction

% ----------
% calculateB
% ----------
%
% nums3  list of 3 numerators
% dens3  list of 3 denominators
%
function B = calculateB(nums3, dens3)

  aindex = 0;

  % group A
  a1 = nums3(1);
  a2 = dens3(1);
  a3 = nums3(2);
  a4 = dens3(2);
  a5 = nums3(3);
  a6 = dens3(3);

  % group B
  [b1 b2] = cancel(a1, a2);
  [b3 b4] = cancel(a3, a4);
  [b5 b6] = cancel(a5, a6);

  % group C
  m = lcm(b2, b4, b6);
  c1 = b1 * (m / b2);
  c2 = m;
  c3 = b3 * (m / b4);
  c4 = m;
  c5 = b5 * (m / b6);
  c6 = m;

  % group D
  m = lcm(b1, b3, b5);
  d1 = m;
  d2 = b2 * (m / b1);
  d3 = m;
  d4 = b4 * (m / b3);
  d5 = m;
  d6 = b6 * (m / b5);

  % group E
  i = sort3(nums3, dens3);
  e1 = nums3(i(3));
  e2 = dens3(i(3));
  e3 = nums3(i(1));
  e4 = dens3(i(1));
  e5 = nums3(i(2));
  e6 = dens3(i(2));

  % group F
  [f1 f2] = cancel(e1, e2);
  [f3 f4] = cancel(e3, e4);
  [f5 f6] = cancel(e5, e6);

  % group G
  m = lcm(f2, f4);
  g1 = f1 * (m / f2);
  g2 = m;
  g3 = f3 * (m / f4);
  g4 = m;
  g5 = f5;
  g6 = f6;

  % group H
  h1 = g1 - g3;
  h2 = g2;
  h3 = g6;
  h4 = g5;

  % group I
  [i1 i2] = cancel(h1, h2);
  [i3 i4] = cancel(h3, h4);
  [i1 i4] = cancel(i1, i4);
  [i2 i3] = cancel(i2, i3);

  % group J
  j1 = i1 * i3;
  j2 = i2 * i4;

  % create return value
  bindex = 0;
  % group A
  B(++bindex) = a1;
  B(++bindex) = a2;
  B(++bindex) = a3;
  B(++bindex) = a4;
  B(++bindex) = a5;
  B(++bindex) = a6;
  % group B
  B(++bindex) = b1;
  B(++bindex) = b2;
  B(++bindex) = b3;
  B(++bindex) = b4;
  B(++bindex) = b5;
  B(++bindex) = b6;
  % group C
  B(++bindex) = c1;
  B(++bindex) = c2;
  B(++bindex) = c3;
  B(++bindex) = c4;
  B(++bindex) = c5;
  B(++bindex) = c6;
  % group D
  B(++bindex) = d1;
  B(++bindex) = d2;
  B(++bindex) = d3;
  B(++bindex) = d4;
  B(++bindex) = d5;
  B(++bindex) = d6;
  % group E
  B(++bindex) = e1;
  B(++bindex) = e2;
  B(++bindex) = e3;
  B(++bindex) = e4;
  B(++bindex) = e5;
  B(++bindex) = e6;
  % group F
  B(++bindex) = f1;
  B(++bindex) = f2;
  B(++bindex) = f3;
  B(++bindex) = f4;
  B(++bindex) = f5;
  B(++bindex) = f6;
  % group G
  B(++bindex) = g1;
  B(++bindex) = g2;
  B(++bindex) = g3;
  B(++bindex) = g4;
  B(++bindex) = g5;
  B(++bindex) = g6;
  % group H
  B(++bindex) = h1;
  B(++bindex) = h2;
  B(++bindex) = h3;
  B(++bindex) = h4;
  % group I
  B(++bindex) = i1;
  B(++bindex) = i2;
  B(++bindex) = i3;
  B(++bindex) = i4;
  % group J
  B(++bindex) = j1;
  B(++bindex) = j2;

endfunction

% -------------------
% start_exercise_file
% -------------------
%
% FID
%
function start_exercise_file(FID)

  fprintf(FID, "\\documentclass\n");
  fprintf(FID, "[\n");
  fprintf(FID, "  draft    = true,\n");
  fprintf(FID, "  fontsize = 11pt,\n");
  fprintf(FID, "  parskip  = half-,\n");
  fprintf(FID, "  ngerman\n");
  fprintf(FID, "]\n");
  fprintf(FID, "{scrartcl}\n");
  fprintf(FID, "\n");
  fprintf(FID, "%% own geometry settings\n");
  fprintf(FID, "\\usepackage\n");
  fprintf(FID, "[\n");
  fprintf(FID, "  paperwidth  = 210mm,\n");
  fprintf(FID, "  paperheight = 297mm,\n");
  fprintf(FID, "  top         = 0pt,\n");
  fprintf(FID, "  left        = 0pt,\n");
  fprintf(FID, "  right       = 0pt,\n");
  fprintf(FID, "  bottom      = 0pt\n");
  fprintf(FID, "]\n");
  fprintf(FID, "{geometry}\n");
  fprintf(FID, "\n");
  fprintf(FID, "%% default packages\n");
  fprintf(FID, "\\usepackage[utf8]{inputenc}\n");
  fprintf(FID, "\\usepackage[T1]{fontenc}\n");
  fprintf(FID, "\\usepackage{lmodern}\n");
  fprintf(FID, "\\usepackage{babel}\n");
  fprintf(FID, "%% extra packages\n");
  fprintf(FID, "\\usepackage{amsmath}\n");
  fprintf(FID, "\\usepackage{amssymb}\n");
  fprintf(FID, "\\usepackage{enumerate}\n");
  fprintf(FID, "\\usepackage{tikz}\n");
  fprintf(FID, "%% libraries\n");
  fprintf(FID, "\\usetikzlibrary{calc}\n");
  fprintf(FID, "\n");
  fprintf(FID, "\\pagestyle{empty}\n");
  fprintf(FID, "\n");
  fprintf(FID, "\\newenvironment{grid}%%\n");
  fprintf(FID, "{%%\n");
  fprintf(FID, "  \\begin{tikzpicture}%%\n");
  fprintf(FID, "    \\clip (0, 0) rectangle (\\paperwidth, \\paperheight);\n");
  fprintf(FID, "    %% vertical separator\n");
  fprintf(FID, "    \\draw (105mm, 5mm) -- (105mm, 292mm);\n");
  fprintf(FID, "    %% horizontal separators\n");
  fprintf(FID, "    \\draw (5mm, 198mm) -- (205mm, 198mm);\n");
  fprintf(FID, "    \\draw (5mm,  99mm) -- (205mm,  99mm);\n");
  fprintf(FID, "    %% center points\n");
  fprintf(FID, "    \\coordinate (A) at ( 52.5mm, 247.5mm);\n");
  fprintf(FID, "    \\coordinate (B) at (157.5mm, 247.5mm);\n");
  fprintf(FID, "    \\coordinate (C) at ( 52.5mm, 148.5mm);\n");
  fprintf(FID, "    \\coordinate (D) at (157.5mm, 148.5mm);\n");
  fprintf(FID, "    \\coordinate (E) at ( 52.5mm,  49.5mm);\n");
  fprintf(FID, "    \\coordinate (F) at (157.5mm,  49.5mm);\n");
  fprintf(FID, "}%%\n");
  fprintf(FID, "{%%\n");
  fprintf(FID, "  \\end{tikzpicture}%%\n");
  fprintf(FID, "}%%\n");
  fprintf(FID, "\n");
  fprintf(FID, "%% ------------------------------------------------------------------------------\n");
  fprintf(FID, "\\begin{document}\n");
  fprintf(FID, "%% ------------------------------------------------------------------------------\n");
  fprintf(FID, "\\begin{grid}%%\n");

endfunction

% --------------
% show_exerciseA
% --------------
%
% A  the return value of calculateA
%
function show_exerciseA(FID, A)

  fprintf(FID, "        \\item Addiere den kleinsten zum größten Bruch und multipliziere\n");
  fprintf(FID, "              das Ergebnis mit dem verbleibenden.\n");
  fprintf(FID, "              Kürze so weit wie möglich.\n");
  fprintf(FID, "              \\begin{equation*}\n");
  fprintf(FID, "                \\frac{%d}{%d},\\frac{%d}{%d},\\frac{%d}{%d}\n", A(1), A(2), A(3), A(4), A(5), A(6));
  fprintf(FID, "              \\end{equation*}\n");

endfunction

% --------------
% show_exerciseB
% --------------
%
% B  the return value of calculateB
%
function show_exerciseB(FID, B)

  fprintf(FID, "        \\item Subtrahiere den kleinsten vom größten Bruch und dividiere\n");
  fprintf(FID, "              das Ergebnis durch den verbleibenden.\n");
  fprintf(FID, "              Kürze so weit wie möglich.\n");
  fprintf(FID, "              \\begin{equation*}\n");
  fprintf(FID, "                \\frac{%d}{%d},\\frac{%d}{%d},\\frac{%d}{%d}\n", B(1), B(2), B(3), B(4), B(5), B(6));
  fprintf(FID, "              \\end{equation*}\n");

endfunction

% -------------
% show_exercise
% -------------
%
% A       the return value of calculateA
% B       the return value of calculateB
% number  the number of this exercise
% node    the TikZ node name ("A".."F")
%
function show_exercise(FID, A, B, number, node)

  fprintf(FID, "  \\node at (%s)\n", node);
  fprintf(FID, "  {%%\n");
  fprintf(FID, "    \\begin{minipage}{85mm}%%\n");
  fprintf(FID, "      \\paragraph{Aufgabe %d}\\textit{(Bruchrechnung)}\n", number);
  fprintf(FID, "      \\begin{enumerate}[a)]\n");
  show_exerciseA(FID, A);
  show_exerciseB(FID, B);
  fprintf(FID,"      \\end{enumerate}\n");
  fprintf(FID,"    \\end{minipage}%%\n");
  fprintf(FID,"  };\n");

endfunction

% --------------------
% finish_exercise_file
% --------------------
%
% FID
%
function finish_exercise_file(FID)

  fprintf(FID, "\\end{grid}%%\n");
  fprintf(FID, "%% ------------------------------------------------------------------------------\n");
  fprintf(FID, "\\end{document}\n");
  fprintf(FID, "%% ------------------------------------------------------------------------------\n");

endfunction

% -------------------
% start_solution_file
% -------------------
%
% FID
%
function start_solution_file(FID)

  fprintf(FID, "\\documentclass\n");
  fprintf(FID, "[\n");
  fprintf(FID, "  draft    = true,\n");
  fprintf(FID, "  fontsize = 11pt,\n");
  fprintf(FID, "  parskip  = half-,\n");
  fprintf(FID, "  BCOR     = 0pt,\n");
  fprintf(FID, "  DIV      = 11,\n");
  fprintf(FID, "  ngerman\n");
  fprintf(FID, "]\n");
  fprintf(FID, "{scrartcl}\n");
  fprintf(FID, "\n");
  fprintf(FID, "%% default packages\n");
  fprintf(FID, "\\usepackage[utf8]{inputenc}\n");
  fprintf(FID, "\\usepackage[T1]{fontenc}\n");
  fprintf(FID, "\\usepackage{lmodern}\n");
  fprintf(FID, "\\usepackage{babel}\n");
  fprintf(FID, "%% extra packages\n");
  fprintf(FID, "\\usepackage{amsmath}\n");
  fprintf(FID, "\\usepackage{amssymb}\n");
  fprintf(FID, "\n");
  fprintf(FID, "%% ------------------------------------------------------------------------------\n");
  fprintf(FID, "\\begin{document}\n");
  fprintf(FID, "%% ------------------------------------------------------------------------------\n");

endfunction

% --------------
% show_solutionA
% --------------
%
% A  the return value of calculateA
%
function show_solutionA(FID, A)

  aindex = 0;

  fprintf(FID, "\\begin{equation*}\n");

  % group A
  a1 = A(++aindex);
  b1 = A(++aindex);
  c1 = A(++aindex);
  d1 = A(++aindex);
  e1 = A(++aindex);
  f1 = A(++aindex);
  fprintf(FID, "  \\left\\{\\frac{%d}{%d},\\frac{%d}{%d},\\frac{%d}{%d}\\right\\}\n", a1, b1, c1, d1, e1, f1);

  % group B
  a2 = A(++aindex);
  b2 = A(++aindex);
  c2 = A(++aindex);
  d2 = A(++aindex);
  e2 = A(++aindex);
  f2 = A(++aindex);
  show = false;
  if (a1 != a2) show = true; endif
  if (b1 != b2) show = true; endif
  if (c1 != c2) show = true; endif
  if (d1 != d2) show = true; endif
  if (e1 != e2) show = true; endif
  if (f1 != f2) show = true; endif
  if (show)
    fprintf(FID, "  =\\left\\{\\frac{%d}{%d},\\frac{%d}{%d},\\frac{%d}{%d}\\right\\}\n", a2, b2, c2, d2, e2, f2);
  endif

  % group C
  a1 = A(++aindex);
  b1 = A(++aindex);
  c1 = A(++aindex);
  d1 = A(++aindex);
  e1 = A(++aindex);
  f1 = A(++aindex);
  show = false;
  if (a1 != a2) show = true; endif
  if (b1 != b2) show = true; endif
  if (c1 != c2) show = true; endif
  if (d1 != d2) show = true; endif
  if (e1 != e2) show = true; endif
  if (f1 != f2) show = true; endif
  if (show)
    fprintf(FID, "  =\\left\\{\\frac{%d}{%d},\\frac{%d}{%d},\\frac{%d}{%d}\\right\\}\n", a1, b1, c1, d1, e1, f1);
  endif

  % group D
  a2 = A(++aindex);
  b2 = A(++aindex);
  c2 = A(++aindex);
  d2 = A(++aindex);
  e2 = A(++aindex);
  f2 = A(++aindex);
  show = false;
  if (a1 != a2) show = true; endif
  if (b1 != b2) show = true; endif
  if (c1 != c2) show = true; endif
  if (d1 != d2) show = true; endif
  if (e1 != e2) show = true; endif
  if (f1 != f2) show = true; endif
  if (show)
    fprintf(FID, "  =\\left\\{\\frac{%d}{%d},\\frac{%d}{%d},\\frac{%d}{%d}\\right\\}\n", a2, b2, c2, d2, e2, f2);
  endif

  fprintf(FID, "\\end{equation*}\n");
  fprintf(FID, "\\begin{equation*}\n");

  % group E
  a1 = A(++aindex);
  b1 = A(++aindex);
  c1 = A(++aindex);
  d1 = A(++aindex);
  e1 = A(++aindex);
  f1 = A(++aindex);
  fprintf(FID, "  \\left(\\frac{%d}{%d}+\\frac{%d}{%d}\\right)\\cdot\\frac{%d}{%d}\n", a1, b1, c1, d1, e1, f1);

  % group F
  a2 = A(++aindex);
  b2 = A(++aindex);
  c2 = A(++aindex);
  d2 = A(++aindex);
  e2 = A(++aindex);
  f2 = A(++aindex);
  show = false;
  if (a1 != a2) show = true; endif
  if (b1 != b2) show = true; endif
  if (c1 != c2) show = true; endif
  if (d1 != d2) show = true; endif
  if (e1 != e2) show = true; endif
  if (f1 != f2) show = true; endif
  if (show)
    fprintf(FID, "  =\\left(\\frac{%d}{%d}+\\frac{%d}{%d}\\right)\\cdot\\frac{%d}{%d}\n", a2, b2, c2, d2, e2, f2);
  endif

  % group G
  a1 = A(++aindex);
  b1 = A(++aindex);
  c1 = A(++aindex);
  d1 = A(++aindex);
  e1 = A(++aindex);
  f1 = A(++aindex);
  show = false;
  if (a1 != a2) show = true; endif
  if (b1 != b2) show = true; endif
  if (c1 != c2) show = true; endif
  if (d1 != d2) show = true; endif
  if (e1 != e2) show = true; endif
  if (f1 != f2) show = true; endif
  if (show)
    fprintf(FID, "  =\\left(\\frac{%d}{%d}+\\frac{%d}{%d}\\right)\\cdot\\frac{%d}{%d}\n", a1, b1, c1, d1, e1, f1);
  endif

  % group H
  a1 = A(++aindex);
  b1 = A(++aindex);
  c1 = A(++aindex);
  d1 = A(++aindex);
  fprintf(FID, "  =\\frac{%d}{%d}\\cdot\\frac{%d}{%d}\n", a1, b1, c1, d1);

  % group I
  a2 = A(++aindex);
  b2 = A(++aindex);
  c2 = A(++aindex);
  d2 = A(++aindex);
  show = false;
  if (a1 != a2) show = true; endif
  if (b1 != b2) show = true; endif
  if (c1 != c2) show = true; endif
  if (d1 != d2) show = true; endif
  if (show)
    fprintf(FID, "  =\\frac{%d}{%d}\\cdot\\frac{%d}{%d}\n", a2, b2, c2, d2);
  endif

  % group J
  a1 = A(++aindex);
  b1 = A(++aindex);
  if (b1 == 1)
    fprintf(FID, "  =%d\n", a1);
  else
    fprintf(FID, "  =\\frac{%d}{%d}\n", a1, b1);
  endif

  fprintf(FID, "\\end{equation*}\n");

endfunction

% --------------
% show_solutionB
% --------------
%
% B  the return value of calculateB
%
function show_solutionB(FID, B)

  bindex = 0;

  fprintf(FID, "\\begin{equation*}\n");

  % group A
  a1 = B(++bindex);
  b1 = B(++bindex);
  c1 = B(++bindex);
  d1 = B(++bindex);
  e1 = B(++bindex);
  f1 = B(++bindex);
  fprintf(FID, "  \\left\\{\\frac{%d}{%d},\\frac{%d}{%d},\\frac{%d}{%d}\\right\\}\n", a1, b1, c1, d1, e1, f1);

  % group B
  a2 = B(++bindex);
  b2 = B(++bindex);
  c2 = B(++bindex);
  d2 = B(++bindex);
  e2 = B(++bindex);
  f2 = B(++bindex);
  show = false;
  if (a1 != a2) show = true; endif
  if (b1 != b2) show = true; endif
  if (c1 != c2) show = true; endif
  if (d1 != d2) show = true; endif
  if (e1 != e2) show = true; endif
  if (f1 != f2) show = true; endif
  if (show)
    fprintf(FID, "  =\\left\\{\\frac{%d}{%d},\\frac{%d}{%d},\\frac{%d}{%d}\\right\\}\n", a2, b2, c2, d2, e2, f2);
  endif

  % group C
  a1 = B(++bindex);
  b1 = B(++bindex);
  c1 = B(++bindex);
  d1 = B(++bindex);
  e1 = B(++bindex);
  f1 = B(++bindex);
  show = false;
  if (a1 != a2) show = true; endif
  if (b1 != b2) show = true; endif
  if (c1 != c2) show = true; endif
  if (d1 != d2) show = true; endif
  if (e1 != e2) show = true; endif
  if (f1 != f2) show = true; endif
  if (show)
    fprintf(FID, "  =\\left\\{\\frac{%d}{%d},\\frac{%d}{%d},\\frac{%d}{%d}\\right\\}\n", a1, b1, c1, d1, e1, f1);
  endif

  % group D
  a2 = B(++bindex);
  b2 = B(++bindex);
  c2 = B(++bindex);
  d2 = B(++bindex);
  e2 = B(++bindex);
  f2 = B(++bindex);
  show = false;
  if (a1 != a2) show = true; endif
  if (b1 != b2) show = true; endif
  if (c1 != c2) show = true; endif
  if (d1 != d2) show = true; endif
  if (e1 != e2) show = true; endif
  if (f1 != f2) show = true; endif
  if (show)
    fprintf(FID, "  =\\left\\{\\frac{%d}{%d},\\frac{%d}{%d},\\frac{%d}{%d}\\right\\}\n", a2, b2, c2, d2, e2, f2);
  endif

  fprintf(FID, "\\end{equation*}\n");
  fprintf(FID, "\\begin{equation*}\n");

  % group E
  a1 = B(++bindex);
  b1 = B(++bindex);
  c1 = B(++bindex);
  d1 = B(++bindex);
  e1 = B(++bindex);
  f1 = B(++bindex);
  fprintf(FID, "  \\left(\\frac{%d}{%d}-\\frac{%d}{%d}\\right):\\frac{%d}{%d}\n", a1, b1, c1, d1, e1, f1);

  % group F
  a2 = B(++bindex);
  b2 = B(++bindex);
  c2 = B(++bindex);
  d2 = B(++bindex);
  e2 = B(++bindex);
  f2 = B(++bindex);
  show = false;
  if (a1 != a2) show = true; endif
  if (b1 != b2) show = true; endif
  if (c1 != c2) show = true; endif
  if (d1 != d2) show = true; endif
  if (e1 != e2) show = true; endif
  if (f1 != f2) show = true; endif
  if (show)
    fprintf(FID, "  =\\left(\\frac{%d}{%d}-\\frac{%d}{%d}\\right):\\frac{%d}{%d}\n", a2, b2, c2, d2, e2, f2);
  endif

  % group G
  a1 = B(++bindex);
  b1 = B(++bindex);
  c1 = B(++bindex);
  d1 = B(++bindex);
  e1 = B(++bindex);
  f1 = B(++bindex);
  show = false;
  if (a1 != a2) show = true; endif
  if (b1 != b2) show = true; endif
  if (c1 != c2) show = true; endif
  if (d1 != d2) show = true; endif
  if (e1 != e2) show = true; endif
  if (f1 != f2) show = true; endif
  if (show)
    fprintf(FID, "  =\\left(\\frac{%d}{%d}-\\frac{%d}{%d}\\right):\\frac{%d}{%d}\n", a1, b1, c1, d1, e1, f1);
  endif

  % group H
  a1 = B(++bindex);
  b1 = B(++bindex);
  c1 = B(++bindex);
  d1 = B(++bindex);
  fprintf(FID, "  =\\frac{%d}{%d}\\cdot\\frac{%d}{%d}\n", a1, b1, c1, d1);

  % group I
  a2 = B(++bindex);
  b2 = B(++bindex);
  c2 = B(++bindex);
  d2 = B(++bindex);
  show = false;
  if (a1 != a2) show = true; endif
  if (b1 != b2) show = true; endif
  if (c1 != c2) show = true; endif
  if (d1 != d2) show = true; endif
  if (show)
    fprintf(FID, "  =\\frac{%d}{%d}\\cdot\\frac{%d}{%d}\n", a2, b2, c2, d2);
  endif

  % group J
  a1 = B(++bindex);
  b1 = B(++bindex);
  if (b1 == 1)
    fprintf(FID, "  =%d\n", a1);
  else
    fprintf(FID, "  =\\frac{%d}{%d}\n", a1, b1);
  endif

  fprintf(FID, "\\end{equation*}\n");

endfunction

% -------------
% show_solution
% -------------
%
% A  the return value of calculateA
% B  the return value of calculateB
%
function show_solution(FID, A, B, number)

  fprintf(FID, "\n");
  fprintf(FID, "\\paragraph{Aufgabe %d\\,a)}\n", number);
  show_solutionA(FID, A);
  fprintf(FID, "\\paragraph{Aufgabe %d\\,b)}\n", number);
  show_solutionB(FID, B);

endfunction

% --------------------
% finish_solution_file
% --------------------
%
% FID
%
function finish_solution_file(FID)

  fprintf(FID, "\n");
  fprintf(FID, "%% ------------------------------------------------------------------------------\n");
  fprintf(FID, "\\end{document}\n");
  fprintf(FID, "%% ------------------------------------------------------------------------------\n");

endfunction

% ------------------------------------------------------------------------------
% commands                                                              commands
% ------------------------------------------------------------------------------

% number of exercises to create
total = 600;

% show progress
printf("generating %d exercises: 0", total);

% generate all fractions to use
[nums dens] = generate_fractions(20, 99);

% TikZ node names
nodes = { "A"; "B"; "C"; "D"; "E"; "F" };
ntile = 0;

% set filenames (x=exercises, s=solutions)
xfilename = "wupfracx.tex";
sfilename = "wupfracs.tex";

% open tex files for writing
xfile = fopen(xfilename, "w");
sfile = fopen(sfilename, "w");

% write initial tex code
start_exercise_file(xfile);
start_solution_file(sfile);

% generate exercises
for exnum = 1:total

  % show progress
  if (mod(exnum, 25) == 0)
    if (mod(exnum, 100) == 0)
      printf("%d", exnum);
    else
      printf(".");
    endif
  endif

  % get three random fractions for exercise a)
  while true
    [an ad] = choose3(nums, dens);
    A = calculateA(an, ad);
    if (A(51) > 99) continue endif
    if (A(52) > 99) continue endif
    break
  endwhile

  % get three random fractions for exercise b)
  while true
    [bn bd] = choose3(nums, dens);
    B = calculateB(bn, bd);
    if (B(51) > 99) continue endif
    if (B(52) > 99) continue endif
    break
  endwhile

  % next tile
  ntile += 1;

  % next page needed
  if (ntile == 7)

    % start next page
    fprintf(xfile, "\\end{grid}%%\n");
    fprintf(xfile, "\\clearpage\n");
    fprintf(xfile, "\\begin{grid}%%\n");

    % start on first tile
    ntile = 1;

  endif

  show_exercise(xfile, A, B, exnum, nodes{ntile});
  show_solution(sfile, A, B, exnum);

endfor

% write trailing tex code
finish_exercise_file(xfile);
finish_solution_file(sfile);

% close tex files
fclose(sfile);
fclose(xfile);

% show filenames
printf("\n");
printf("file created: %s\n", xfilename);
printf("file created: %s\n", sfilename);

