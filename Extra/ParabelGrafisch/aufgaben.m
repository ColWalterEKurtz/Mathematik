clear all;

addpath '../../Octave/';

% number of exercises to show
exnum = 4;

% possible zeros
z = [-4:4];

% number of zeros
zn = max(size(z));

row = 0;

% calculate all different polynoms
for i = 1:zn

  for j = 1:zn

    % assert two different zeros
    if (i == j) continue endif

    % get zeros
    n1 = z(i);
    n2 = z(j);

    % {1; 2; 3}
    a = floor(rand * 3) + 1;

    % change sign
    if (rand < 0.5) a = -a; endif

    % second and third coefficient
    b = -a * (n1 + n2);
    c =  a *  n1 * n2;

    row = row + 1;

    A(row, 1) = a;
    A(row, 2) = b;
    A(row, 3) = c;
    A(row, 4) = n1;
    A(row, 5) = n2;

  endfor

endfor

% shuffle indices
ii = randperm(row);

printf("\\begin{alignat*}{3}\n");

for i = 1:exnum

  % random index
  ri = ii(i);
  
  a  = A(ri, 1);
  b  = A(ri, 2);
  c  = A(ri, 3);
  n1 = A(ri, 4);
  n2 = A(ri, 5);

  % show polynom
  printf('  f(x)&=%s & \\qquad\\qquad x_1&=%g & \\qquad x_2&=%g', polystr([a b c], 'x'), n1, n2);

  % add LaTeX line break
  if (i < exnum)

    printf(' \\\\');

  endif

  % add line break
  printf('\n');

endfor

printf("\\end{alignat*}\n");

rmpath '../../Octave/';

