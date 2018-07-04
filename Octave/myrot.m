function S = myrot(P, R, phi)

  phirad = phi * pi / 180;

  A = [ cos(phirad) -sin(phirad)
        sin(phirad)  cos(phirad) ];

  S = A * (P - R) + R;

endfunction

