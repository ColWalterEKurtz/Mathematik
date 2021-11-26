clear all;

addpath('../../Octave/');

exmax = 500;
exnum = 0;

for i = 1:exmax

  % 1 <= x <= 10
  a = floor(rand * 10) + 1;

  % 0 <= x <= 10
  m = floor(rand * 11);
  n = floor(rand * 11);

  if (rand < 0.5) a = -a; endif
  if (rand < 0.5) m = -m; endif
  if (rand < 0.5) n = -n; endif

  b = 2 * n * a;
  c = (n * n - m * m) * a;

  [dg vx vy zn z1 z2] = parabola(a, b, c);

  % no parabola
  if (dg < 2) continue endif

  if (abs(a)  > 50) continue endif
  if (abs(b)  > 50) continue endif
  if (abs(c)  > 50) continue endif
  if (abs(vx) > 50) continue endif
  if (abs(vy) > 50) continue endif

  exnum += 1;

  abc(exnum, 1) = a;
  abc(exnum, 2) = b;
  abc(exnum, 3) = c;

endfor

printf('\\paragraph{Ganzzahlige Koeffizienten und Lösungen}\n');
printf('\\setvstrut{$\\displaystyle(0)$}%%\n');
showalignat(abc);

rmpath('../../Octave/');

