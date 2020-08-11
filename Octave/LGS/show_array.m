function show_array(A, b, T)

  % nxn matrix expected
  n = max(size(A));

  % some roman numerals
  roman = { "\\small I" "\\small II" "\\small III" "\\small IV" "\\small V" "\\small VI" "\\small VII" "\\small VIII" "\\small IX" "\\small X" };

  % remove output array from memory
  clear out;

  % create output array
  for i = 1:n

    cout = 1;

    % roman numerals
    out{i, cout++} = sprintf("\\text{%s }", roman{i});
    out{i, cout++} = "&\\;";

    empty = true;

    % matrix
    for j = 1:n

      co = A(i, j);
      op = "+";

      % first column
      if (j == 1)

        if (epsequal(co, 0))

          out{i, cout++} = "";

        elseif (epsequal(co, -1))

          out{i, cout++} = sprintf("-%s_{%d}", "x", j);

          empty = false;

        elseif (epsequal(co, 1))

          out{i, cout++} = sprintf("%s_{%d}", "x", j);

          empty = false;

        else

          out{i, cout++} = sprintf("%d%s_{%d}", co, "x", j);

          empty = false;

        endif

      % further columns
      else

        % output line is still empty
        if (empty)

          % add empty operator
          out{i, cout++} = "&";
          out{i, cout++} = "";
          out{i, cout++} = "&";

          if (epsequal(co, 0))

            out{i, cout++} = "";

          elseif (epsequal(co, -1))

            out{i, cout++} = sprintf("-%s_{%d}", "x", j);

            empty = false;

          elseif (epsequal(co, 1))

            out{i, cout++} = sprintf("%s_{%d}", "x", j);

            empty = false;

          else

            out{i, cout++} = sprintf("%d%s_{%d}", co, "x", j);

            empty = false;

          endif

        % append next element
        else

          if (epsequal(co, 0))

            op = "";

          elseif (co < 0)

            co = -co;
            op = "-";

          endif

          out{i, cout++} = "&";
          out{i, cout++} = op;
          out{i, cout++} = "&";

          if (epsequal(co, 0))

            out{i, cout++} = "";

          elseif (epsequal(co, 1))

            out{i, cout++} = sprintf("%s_{%d}", "x", j);

          else

            out{i, cout++} = sprintf("%d%s_{%d}", co, "x", j);

          endif

        endif

      endif

    endfor

    out{i, cout++} = "&";
    out{i, cout++} = "=";
    out{i, cout++} = "&";
    out{i, cout++} = sprintf("%d", b(i));

    operation = "";

    % don't modify current row
    if (T(i, i) == 0)

      for j = 1:n

        if (j == i)

          continue

        endif

        if (epsequal(T(i, j), 1))

          operation = sprintf("\\leftarrow\\text{%s}", roman{j});

          break

        endif

      endfor

    % modify current row
    else

      % multiply current row
      if ( !epsequal(T(i, i), 1) )

        if ( isint(T(i, i)) )

          if (T(i, i) < 0)

            operation = sprintf("\\cdot(%g)", T(i, i));

          else

            operation = sprintf("\\cdot%g", T(i, i));

          endif

        else

          [num den] = rat(T(i, i));

          if (num == 1)

            operation = sprintf(":%g", den);

          elseif (num == -1)

            operation = sprintf(":(-%g)", den);

          else

            if (T(i, i) < 0)

              operation = sprintf("\\cdot(%g)", T(i, i));

            else

              operation = sprintf("\\cdot%g", T(i, i));

            endif

          endif

        endif

      endif

      % add other rows
      for j = 1:n

        if (j == i)

          continue

        endif

        if (epsequal(T(i, j), 0))

          continue

        endif

        if (T(i, j) < 0)

          if (epsequal(T(i, j), -1))

            operation = strcat(operation, sprintf("-\\text{%s}", roman{j}));

          else

            operation = strcat(operation, sprintf("-%g\\cdot\\text{%s}", -T(i, j), roman{j}));

          endif

        else

          if (epsequal(T(i, j), 1))

            operation = strcat(operation, sprintf("+\\text{%s}", roman{j}));

          else

            operation = strcat(operation, sprintf("+%g\\cdot\\text{%s}", T(i, j), roman{j}));

          endif

        endif

      endfor

    endif

    if (length(operation) > 0)

      operation = strcat(" \\quad|", operation);

    endif

    out{i, cout++} = "&";
    out{i, cout++} = operation;

    if ((i + 1) > n)

      out{i, cout++} = "";

    else

      out{i, cout++} = "\\\\";

    endif

  endfor

  nrows = size(out, 1);
  ncols = size(out, 2);

  % detect maximum width for each column
  for j = 1:ncols

    maxw = 0;

    for i = 1:nrows

      if (length(out{i, j}) > maxw)

        maxw = length(out{i, j});

      endif

    endfor

    if (j == 1)

      maxw = maxw + 1;

    endif

    % operation column
    if (j == (ncols - 1))

      colfmt{j} = sprintf("%%-%ds", maxw);

    else

      colfmt{j} = sprintf("%%%ds", maxw + 1);

    endif

  endfor

  % build format string
  arrayformat = "r|";

  for i = 1:n

    arrayformat = strcat(arrayformat, "rc");

  endfor

  arrayformat = strcat(arrayformat, "rl");

  % start array
  printf("\\setlength{\\arraycolsep}{1pt}\n");
  printf("\\begin{array}{%s}\n", arrayformat);

  % print output array
  for i = 1:nrows

    for j = 1:ncols

      printf(colfmt{j}, out{i, j})

    endfor

    printf("\n")

  endfor

  % finish array
  printf("\\end{array}\n");

endfunction

