% -2pi ... 2pi
x = transpose((-2 * pi):0.01:(2 * pi));

% sin und cos
sx = sin(x);
cx = cos(x);

% sin exportieren
fid = fopen("sin.x", "w");
for i = 1:size(x, 1)
  fprintf(fid, "%10.6f %10.6f\n", x(i), sx(i))
endfor
fclose(fid);

% cos exportieren
fid = fopen("cos.x", "w");
for i = 1:size(x, 1)
  fprintf(fid, "%10.6f %10.6f\n", x(i), cx(i))
endfor
fclose(fid);

