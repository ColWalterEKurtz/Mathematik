clear all;

% first line
A1x = 0;
A1y = 0;
A2x = 3.5;
A2y = 4.5;

% second line
B1x =  0;
B1y =  3.5;
B2x =  4;
B2y = -0.5;

% bounding box
xmin = -0.5;
xmax =  4.5;
ymin = -0.5;
ymax =  4.5;

% ------------------------------------------------------------------------------

% slope
am = ( A2y - A1y ) / ( A2x - A1x );
bm = ( B2y - B1y ) / ( B2x - B1x );

% y-intercept
an = A1y - am * A1x;
bn = B1y - bm * B1x;

% ------------------------------------------------------------------------------

% leftmost point of line A
ALx = xmin;
ALy = am * ALx + an;

if (ALy < ymin)

  ALx = (ymin - an) / am;
  ALy = ymin;

elseif (ALy > ymax)

  ALx = (ymax - an) / am;
  ALy = ymax;

endif

% rightmost point of line A
ARx = xmax;
ARy = am * ARx + an;

if (ARy < ymin)

  ARx = (ymin - an) / am;
  ARy = ymin;

elseif (ARy > ymax)

  ARx = (ymax - an) / am;
  ARy = ymax;

endif

% ------------------------------------------------------------------------------

% leftmost point of line B
BLx = xmin;
BLy = bm * BLx + bn;

if (BLy < ymin)

  BLx = (ymin - bn) / bm;
  BLy = ymin;

elseif (BLy > ymax)

  BLx = (ymax - bn) / bm;
  BLy = ymax;

endif

% rightmost point of line B
BRx = xmax;
BRy = bm * BRx + bn;

if (BRy < ymin)

  BRx = (ymin - bn) / bm;
  BRy = ymin;

elseif (BRy > ymax)

  BRx = (ymax - bn) / bm;
  BRy = ymax;

endif

% ------------------------------------------------------------------------------

% show LaTeX code
printf("\\coordinate (A1) at (%7.3f, %7.3f);\n", ALx, ALy);
printf("\\coordinate (A2) at (%7.3f, %7.3f);\n", ARx, ARy);
printf("\\coordinate (B1) at (%7.3f, %7.3f);\n", BLx, BLy);
printf("\\coordinate (B2) at (%7.3f, %7.3f);\n", BRx, BRy);
printf("\\draw (A1) -- (A2);\n");
printf("\\draw (B1) -- (B2);\n");

