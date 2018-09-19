function nsec = export(filename, extension, x, y, ymin, ymax)

  % inside or outside [ymin, ymax]
  outside = true;

  % create empty vectors
  first = [];
  last  = [];

  % number of y values
  sizex = max(size(x));

  % number of y values
  sizey = max(size(y));

  % check size
  if (sizex != sizey)

    % notify user
    printf("%s: x and y must have the same length (%d != %d)\n", filename, sizex, sizey);

    % no sections written
    nsec = 0;

    % exit function
    return

  endif

  % check all y values
  for i = 1:sizey

    if (outside)

      % switch to 'inside'
      if (y(i) > (ymin - 1e-12)) && (y(i) < (ymax + 1e-12))

        % append current index
        first = [first i];

        % switch flag
        outside = false;

      endif

    else

      % switch back to 'outside'
      if (y(i) < (ymin - 1e-12)) || (y(i) > (ymax + 1e-12))

        % append recent index
        last = [last (i - 1)];

        % switch flag
        outside = true;

      endif

    endif

  endfor

  % check if last section is 'closed'
  if (max(size(last)) < max(size(first)))

    % close last opened section
    last = [last sizey];

  endif

  % number of sections
  nsec = max(size(first));

  % no y values in range
  if (nsec == 0)

    % don't write anything
    return

  % just one continuous section
  elseif (nsec == 1)

    % get section's boundaries
    start = first(1);
    stop  = last(1);

    % create full filename
    if (max(size(extension)) > 0)

      fullname = sprintf("%s.%s", filename, extension);

    else

      fullname = filename;

    endif

    % open file for reading
    file = fopen(fullname, "w");

    % write section
    for i = start:stop

      % write two columns
      fprintf(file, "%12.6f %12.6f\n", x(i), y(i));

    endfor

    % close file
    fclose(file);

  % more than one section
  else

    % export each section
    for sec = 1:nsec

      % get section's boundaries
      start = first(sec);
      stop  = last(sec);

      % create full filename
      if (max(size(extension)) > 0)

        fullname = sprintf("%s-part%02d.%s", filename, sec, extension);

      else

        fullname = sprintf("%s-part%02d", filename, sec);

      endif

      % open file for reading
      file = fopen(fullname, "w");

      % write section
      for i = start:stop

        % write two columns
        fprintf(file, "%12.6f %12.6f\n", x(i), y(i));

      endfor

      % close file
      fclose(file);

    endfor

  endif

endfunction

