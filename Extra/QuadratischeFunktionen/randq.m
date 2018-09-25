clear all;

addpath('../../Octave/');

exmax = 500;
exnum = 0;

fractions = [[1/2:1/2:5] [1/3:1/3:5] [1/4:1/4:5] [1/5:1/5:5] [1/6:1/6:5] [1/9:1/9:5]];

for i = 1:exmax

  % shuffle fractions
  shuffle = fractions( randperm(numel(fractions)) );

  % get random numbers
  r1 = shuffle(1); if (rand < 0.5) r1 = -r1; endif
  r2 = shuffle(2); if (rand < 0.5) r2 = -r2; endif
  r3 = shuffle(3); if (rand < 0.5) r3 = -r3; endif

  % get coefficients
  para = getparabolaZZV(r1, r2, r3);

  % coefficients
  a = para(1);
  b = para(2);
  c = para(3);

  % check values
  if (isnan(a)) continue endif
  if (isnan(b)) continue endif
  if (isnan(c)) continue endif

  % calculate vertex and zeros
  [dg vx vy zn z1 z2] = parabola(a, b, c);

  % no parabola
  if (dg < 2) continue endif

  exnum += 1;

  abc(exnum, 1) = a;
  abc(exnum, 2) = b;
  abc(exnum, 3) = c;

endfor

printf('\\paragraph{Rationale Koeffizienten und Lösungen}\n');
printf('\\setvstrut{$\\displaystyle(\\frac{0}{1})$}%%\n');
showalignat(abc);

rmpath('../../Octave/');

