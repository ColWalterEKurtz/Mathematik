clear all;

% ------------------------------------------------------------------------------
% functions                                                            functions
% ------------------------------------------------------------------------------

% -----------
% write_intro
% -----------
%
%
%
function write_intro()
  printf("\\documentclass\n");
  printf("[\n");
  printf("  draft    = true,\n");
  printf("  fontsize = 11pt,\n");
  printf("  parskip  = half-,\n");
  printf("  BCOR     = 0pt,\n");
  printf("  DIV      = 11,\n");
  printf("  ngerman\n");
  printf("]\n");
  printf("{scrartcl}\n");
  printf("\n");
  printf("%% set text area\n");
  printf("\\usepackage\n");
  printf("[\n");
  printf("  top         = 12mm,\n");
  printf("  left        = 15mm,\n");
  printf("  right       = 15mm,\n");
  printf("  bottom      = 12mm,\n");
  printf("  paperwidth  = 210mm,\n");
  printf("  paperheight = 297mm\n");
  printf("]\n");
  printf("{geometry}\n");
  printf("%% default packages\n");
  printf("\\usepackage[utf8]{inputenc}\n");
  printf("\\usepackage[T1]{fontenc}\n");
  printf("\\usepackage{babel}\n");
  printf("\\usepackage{lmodern}\n");
  printf("%% extra packages\n");
  printf("\\usepackage{amsmath}\n");
  printf("\\usepackage{amssymb}\n");
  printf("\n");
  printf("%% no headers no footers\n");
  printf("\\pagestyle{empty}\n");
  printf("\n");
  printf("%% ---------\n");
  printf("%% calctable\n");
  printf("%% ---------\n");
  printf("%%\n");
  printf("%%\n");
  printf("%%\n");
  printf("\\newenvironment{calctable}\n");
  printf("{%%\n");
  printf("  %% row 1\n");
  printf("  \\newcommand{\\xaa}{\\boldmath$\\cdot$\\unboldmath}%%\n");
  printf("  \\newcommand{\\xab}{\\relax}%%\n");
  printf("  \\newcommand{\\xac}{\\relax}%%\n");
  printf("  \\newcommand{\\xad}{\\relax}%%\n");
  printf("  \\newcommand{\\xae}{\\relax}%%\n");
  printf("  \\newcommand{\\xaf}{\\boldmath$+$\\unboldmath}%%\n");
  printf("  %% row 2\n");
  printf("  \\newcommand{\\xba}{\\relax}%%\n");
  printf("  \\newcommand{\\xbb}{\\relax}%%\n");
  printf("  \\newcommand{\\xbc}{\\relax}%%\n");
  printf("  \\newcommand{\\xbd}{\\relax}%%\n");
  printf("  \\newcommand{\\xbe}{\\relax}%%\n");
  printf("  \\newcommand{\\xbf}{\\relax}%%\n");
  printf("  %% row 3\n");
  printf("  \\newcommand{\\xca}{\\relax}%%\n");
  printf("  \\newcommand{\\xcb}{\\relax}%%\n");
  printf("  \\newcommand{\\xcc}{\\relax}%%\n");
  printf("  \\newcommand{\\xcd}{\\relax}%%\n");
  printf("  \\newcommand{\\xce}{\\relax}%%\n");
  printf("  \\newcommand{\\xcf}{\\relax}%%\n");
  printf("  %% row 4\n");
  printf("  \\newcommand{\\xda}{\\relax}%%\n");
  printf("  \\newcommand{\\xdb}{\\relax}%%\n");
  printf("  \\newcommand{\\xdc}{\\relax}%%\n");
  printf("  \\newcommand{\\xdd}{\\relax}%%\n");
  printf("  \\newcommand{\\xde}{\\relax}%%\n");
  printf("  \\newcommand{\\xdf}{\\relax}%%\n");
  printf("  %% row 5\n");
  printf("  \\newcommand{\\xea}{\\relax}%%\n");
  printf("  \\newcommand{\\xeb}{\\relax}%%\n");
  printf("  \\newcommand{\\xec}{\\relax}%%\n");
  printf("  \\newcommand{\\xed}{\\relax}%%\n");
  printf("  \\newcommand{\\xee}{\\relax}%%\n");
  printf("  \\newcommand{\\xef}{\\relax}%%\n");
  printf("  %% row 6\n");
  printf("  \\newcommand{\\xfa}{\\boldmath$\\uparrow$\\unboldmath}%%\n");
  printf("  \\newcommand{\\xfb}{\\relax}%%\n");
  printf("  \\newcommand{\\xfc}{\\relax}%%\n");
  printf("  \\newcommand{\\xfd}{\\relax}%%\n");
  printf("  \\newcommand{\\xfe}{\\relax}%%\n");
  printf("  \\newcommand{\\xff}{\\boldmath$\\cdot$\\unboldmath}%%\n");
  printf("}%%\n");
  printf("{%%\n");
  printf("  \\begingroup\n");
  printf("    \\newcommand{\\bigbox}[1]{\\makebox[1cm][c]{\\rule[-1.6ex]{0pt}{5ex}{\\sffamily\\Large##1}}}%%\n");
  printf("    \\newcommand{\\lowbox}[1]{\\makebox[1cm][c]{\\rule[-1.4ex]{0pt}{4ex}##1}}%%\n");
  printf("    \\newcommand{\\slmbox}[1]{\\makebox[6mm][c]{\\rule[-1.4ex]{0pt}{4ex}##1}}%%\n");
  printf("    \\newcommand{\\edgbox}[1]{\\makebox[6mm][c]{\\rule[-1.4ex]{0pt}{4ex}##1}}%%\n");
  printf("    \\begin{tabular}{|c||c|c|c|c||c|}%%\n");
  printf("      \\hline\n");
  printf("      \\textbf{\\edgbox{\\xaa}} &\n");
  printf("      \\textbf{\\lowbox{\\xab}} &\n");
  printf("      \\textbf{\\lowbox{\\xac}} &\n");
  printf("      \\textbf{\\lowbox{\\xad}} &\n");
  printf("      \\textbf{\\lowbox{\\xae}} &\n");
  printf("      \\textbf{\\edgbox{\\xaf}} \\\\\n");
  printf("      \\hline\n");
  printf("      \\hline\n");
  printf("      \\textbf{\\slmbox{\\xba}} &\n");
  printf("      \\bigbox{\\xbb} &\n");
  printf("      \\bigbox{\\xbc} &\n");
  printf("      \\bigbox{\\xbd} &\n");
  printf("      \\bigbox{\\xbe} &\n");
  printf("      \\textbf{\\slmbox{\\xbf}} \\\\\n");
  printf("      \\hline\n");
  printf("      \\textbf{\\slmbox{\\xca}} &\n");
  printf("      \\bigbox{\\xcb} &\n");
  printf("      \\bigbox{\\xcc} &\n");
  printf("      \\bigbox{\\xcd} &\n");
  printf("      \\bigbox{\\xce} &\n");
  printf("      \\textbf{\\slmbox{\\xcf}} \\\\\n");
  printf("      \\hline\n");
  printf("      \\textbf{\\slmbox{\\xda}} &\n");
  printf("      \\bigbox{\\xdb} &\n");
  printf("      \\bigbox{\\xdc} &\n");
  printf("      \\bigbox{\\xdd} &\n");
  printf("      \\bigbox{\\xde} &\n");
  printf("      \\textbf{\\slmbox{\\xdf}} \\\\\n");
  printf("      \\hline\n");
  printf("      \\textbf{\\slmbox{\\xea}} &\n");
  printf("      \\bigbox{\\xeb} &\n");
  printf("      \\bigbox{\\xec} &\n");
  printf("      \\bigbox{\\xed} &\n");
  printf("      \\bigbox{\\xee} &\n");
  printf("      \\textbf{\\slmbox{\\xef}} \\\\\n");
  printf("      \\hline\n");
  printf("      \\hline\n");
  printf("      \\textbf{\\edgbox{\\xfa}} &\n");
  printf("      \\textbf{\\lowbox{\\xfb}} &\n");
  printf("      \\textbf{\\lowbox{\\xfc}} &\n");
  printf("      \\textbf{\\lowbox{\\xfd}} &\n");
  printf("      \\textbf{\\lowbox{\\xfe}} &\n");
  printf("      \\textbf{\\edgbox{\\xff}} \\\\\n");
  printf("      \\hline\n");
  printf("    \\end{tabular}%%\n");
  printf("  \\endgroup\n");
  printf("}%%\n");
  printf("\n");
  printf("%% ------------------------------------------------------------------------------\n");
  printf("\\begin{document}\n");
  printf("%% ------------------------------------------------------------------------------\n");
endfunction

% -----------
% write_outro
% -----------
%
%
%
function write_outro()
  printf("%% ------------------------------------------------------------------------------\n");
  printf("\\end{document}\n");
  printf("%% ------------------------------------------------------------------------------\n");
endfunction

% -----
% ij2ab
% -----
%
%
%
function tex = ij2ab(i, j)
  tex = sprintf("\\x%s%s", char(96 + i), char(96 + j));
endfunction

% --------------
% write_exercise
% --------------
%
%
%
function write_exercise(number, A, B, C, D)
  if (number > 1)
    printf("\\par\\vfill\n");
  endif
  printf("\\begin{calctable}%%\n");
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(2, 1), A(1));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(3, 1), A(2));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(4, 1), A(3));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(5, 1), A(4));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(1, 2), B(1));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(1, 3), B(2));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(1, 4), B(3));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(1, 5), B(4));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(2, 6), C(1));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(3, 6), C(2));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(4, 6), C(3));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(5, 6), C(4));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(6, 2), D(1));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(6, 3), D(2));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(6, 4), D(3));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(6, 5), D(4));
  printf("\\end{calctable}%%\n");
  printf("\\hfill\n");
  printf("\\begin{calctable}%%\n");
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(2, 1), A(1));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(3, 1), A(2));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(4, 1), A(3));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(5, 1), A(4));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(1, 2), B(1));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(1, 3), B(2));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(1, 4), B(3));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(1, 5), B(4));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(2, 6), C(1));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(3, 6), C(2));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(4, 6), C(3));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(5, 6), C(4));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(6, 2), D(1));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(6, 3), D(2));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(6, 4), D(3));
  printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(6, 5), D(4));
  for i = 2:5
    a = A(i - 1);
    c = C(i - 1);
    for j = 2:5
      b = B(j - 1);
      d = D(j - 1);
      aij = a * b + c * d;
      printf("  \\renewcommand{%s}{%d}%%\n", ij2ab(i, j), aij);
    endfor
  endfor
  printf("\\end{calctable}%%\n");
endfunction

% ----------
% write_page
% ----------
%
%
%
function write_page(number)
  if (number > 1)
    printf("\\clearpage\n");
  endif
  for ex = 1:5
    N = [2:9];
    % get random numbers
    again = true;
    while again
      IAB = randperm(max(size(N)));
      ICD = randperm(max(size(N)));
      for i = 1:4
        A(i) = N(IAB(i));
        B(i) = N(IAB(i + 4));
        C(i) = N(ICD(i));
        D(i) = N(ICD(i + 4));
      endfor
      again = false;
      for i = 1:4
        a = A(i);
        c = C(i);
        for j = 1:4
          b = B(j);
          d = D(j);
          if ((a == c) && (b == d)) ...
          || ((a == d) && (b == c))
            again = true;
          endif
        endfor
      endfor
    endwhile
    % show tex code
    write_exercise(ex, A, B, C, D);
  endfor
endfunction

% ------------------------------------------------------------------------------
% commands                                                              commands
% ------------------------------------------------------------------------------

write_intro()
for p = 1:100
  write_page(p)
endfor
write_outro()

