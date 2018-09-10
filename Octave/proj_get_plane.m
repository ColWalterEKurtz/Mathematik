function plane = proj_get_plane(point, normal)
%
% point:  [x y z]
% normal: [x y z]
%
% plane:  [a b c d]  =>  ax + by + cz - d = 0
%

  d = point * normal';

  plane = [normal d];

endfunction

