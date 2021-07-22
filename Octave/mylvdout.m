% --------
% mylvdout
% --------
%
% labels  string array of labels
% values  string array of values
% dimens  string array of dimensions
% indent  indent of each line
%
% example:
% l = { "d"  "A"   "m"   "v"    };
% v = { "1"  "2.3" "4/5" "678"  };
% d = { "cm" "m^2" "kg"  "km/h" };
% mylvdout(l, v, d, "  %% ");
%
function mylvdout(labels, values, dimens = {}, indent = "")
  % create column arrays
  if (size(labels, 1) == 1) labels = labels'; endif
  if (size(values, 1) == 1) values = values'; endif
  if (size(dimens, 1) == 1) dimens = dimens'; endif
  % get number of rows
  n = size(labels, 1);
  % maximum width per column
  lw = 0;
  vw = 0;
  dw = 0;
  % get maximum width per column
  for i = 1:n
    if (i <= size(dimens, 1))
      dimens{i, 1} = sprintf("[%s]", dimens{i, 1});
    else
      dimens{i, 1} = "";
    endif
    l = labels{i, 1};
    v = values{i, 1};
    d = dimens{i, 1};
    if lw < length(l) lw = length(l); endif
    if vw < length(v) vw = length(v); endif
    if dw < length(d) dw = length(d); endif
  endfor
  % create format strings
  fmt = sprintf("%s%%%ds = %%-%ds %%-%ds\n", indent, lw, vw, dw);
  % show data
  for i = 1:n
    l = labels{i, 1};
    v = values{i, 1};
    d = dimens{i, 1};
    printf(fmt, l, v, d);
  endfor
endfunction

