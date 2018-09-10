function proj_connect_with_arrows(from, to, label)
%
% from:  string
% to:    string
% label: string
%

  % draw arrow
  printf("\\draw[line width=0.4pt, style=solid, <->, >=latex] (%s) -- (%s);\n", from, to);

  % add label
  printf("\\node at ($(%s)!0.5!(%s)!2mm!270:(%s)$) {{\\small\\rule[-0.5ex]{0pt}{2.2ex}%s}};\n", from, to, to, label);

endfunction

