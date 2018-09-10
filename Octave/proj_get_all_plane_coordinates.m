function local = proj_get_all_plane_coordinates(view, up, vertices)
%
% view:     [x y z]
% up:       [x y z]
% vertices: { ID, x, y, z; ID, ...}
% local:    { ID, u, v; ID ...}
%

  % get plane of projection
  plane = proj_get_plane(view, view);

  % project the 'up' direction onto the projection plane
  % and get its displacement vector to the viewer's position
  ylocal = proj_get_point_of_intersection(up, view, plane) - view;

  % get a vector that is orthogonal to both view and ylocal vectors
  % and that leads to right-handed coordinates
  xlocal = cross(-view, ylocal);

  % get vectors of length 1
  xlocal = xlocal / norm(xlocal);
  ylocal = ylocal / norm(ylocal);

  % get all local coordinates
  for (i = 1:size(vertices, 1))

    % get single vertex
    vertex = [vertices{i, [2 3 4]}];

    % get intersection point
    insec = proj_get_point_of_intersection(vertex, view, plane);

    % get local coordinates
    uv = proj_get_plane_coordinates(insec, view, xlocal, ylocal);

    % append row
    local{i, 1} = vertices{i, 1};
    local{i, 2} = uv(1);
    local{i, 3} = uv(2);

  endfor

endfunction

