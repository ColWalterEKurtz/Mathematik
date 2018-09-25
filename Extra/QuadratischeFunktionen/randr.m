clear all;

addpath('../../Octave/');

exmax = 10000;
exnum = 0;

fracmin = -9;
fracmax =  9;

fractions = unique( sqrt([[fracmin:1/8:fracmax] [fracmin:1/9:fracmax]]) );

for i = 1:exmax

  % shuffle fractions
  shuffle = fractions( randperm(numel(fractions)) );

  % get random numbers
  r1 = shuffle(1);
  r2 = shuffle(2);
  r3 = shuffle(3);

  % change sign
  if (rand < 0.5) r1 = -r1; endif
  if (rand < 0.5) r2 = -r2; endif
  if (rand < 0.5) r3 = -r3; endif

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

  if (zn == 0)

    a = -a;

    % calculate vertex and zeros
    [dg vx vy zn z1 z2] = parabola(a, b, c);

  endif

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

