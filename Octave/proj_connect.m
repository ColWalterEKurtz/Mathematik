function proj_connect(names, style, cycle)
%
% names: ["A B C ..."]
% style: {0 = solid|1 = dashed|2 = dotted|3 = measurement}
% cycle: {true|false}
%

  % split string
  splitted = strsplit(names);

  % select style
  switch style

    case 1

      styletag = "line width=0.6pt, style=dashed";

    case 2

      styletag = "line width=0.6pt, style=dotted";

    case 3

      styletag = "line width=0.4pt, style=solid, <->, >=latex";

    otherwise

      styletag = "line width=0.6pt, style=solid, join=bevel";

  endswitch

  % start path
  printf("\\draw[%s] (%s)", styletag, splitted{1});

  % connect all further points
  for (i = 2:size(splitted, 2))

    printf(" -- (%s)", splitted{i});

  endfor

  % close path
  if cycle

    printf(" -- cycle");

  endif

  % end path
  printf(";\n");

endfunction

