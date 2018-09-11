function proj_show_tikz_coordinates(vertices, maxwidth, maxheight, showpoints, indent = '')
%
% vertices:   {ID, u, v; ID ...}
% maxwidth:   scalar > 0
% maxheight:  scalar > 0
% showpoints: {true|false}
% indent:     string
%

  % get second and third column as matrix
  uv = cell2mat( vertices(:,[2 3]) );

  % get minimum from first column
  umin = min( uv(:,1) );
  umax = max( uv(:,1) );

  % get minimum from second column
  vmin = min( uv(:,2) );
  vmax = max( uv(:,2) );

  % get scale factors for each column
  uscale = maxwidth / (umax - umin);
  vscale = maxheight / (vmax - vmin);

  % get minimum scale factor
  scale = min(uscale, vscale);

  % scale all uv coordinates
  scaled = uv .* scale;

  % show point definitions
  for (i = 1:size(scaled, 1))

    % show tex code
    printf("%s\\coordinate (%s) at (%8.4f, %8.4f);\n", indent, vertices{i, 1}, scaled(i, 1), scaled(i, 2));

  endfor

  % markup vertices
  if showpoints

    % show points
    for (i = 1:size(scaled, 1))

      % show tex code
      printf("%s\\fill (%s) circle[radius=1.25pt] node{{\\small$%s$}};\n", indent, vertices{i, 1}, vertices{i, 1});

    endfor

  endif

endfunction

