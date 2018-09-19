% reset
close all
clear all

% x values
xsym = [-8:0.01:8];
xrad = [-2:0.01:2];
xpos = [eps:0.01:8];

% calculate y values
ab = absval(xsym);
p1 = poly1(xsym);
p2 = poly2(xsym) .- 2;
p3 = poly3(xsym .+ 1);
p4 = poly4(xsym) .* 3 .- 1;
s2 = sqr2(xpos);
s3 = sqr3(xsym);
h1 = hyp1(xsym);
h2 = hyp2(xsym);
pl = pol2(xsym);
va = valley(xsym .* 0.5) .* 2;
ep = exppos(xsym);
en = expneg(xsym);
eq = expquad(xsym) .* 3;
sg = sig(xsym) .* 3;
lb = logbig(xpos);
ls = logsmall(xpos);
sn = sinus(xsym);
cn = cosinus(xsym);
tn = tangens(xsym);
sc = circ(xrad);
cs = cardsin(xsym) .* 4;

% save calculated values
export("absval",   "xy", xsym, ab, -10, 10);
export("poly1",    "xy", xsym, p1, -10, 10);
export("poly2",    "xy", xsym, p2, -10, 10);
export("poly3",    "xy", xsym, p3, -10, 10);
export("poly4",    "xy", xsym, p4, -10, 10);
export("sqr2",     "xy", xpos, s2, -10, 10);
export("sqr3",     "xy", xsym, s3, -10, 10);
export("hyp1",     "xy", xsym, h1, -10, 10);
export("hyp2",     "xy", xsym, h2, -10, 10);
export("pol2",     "xy", xsym, pl, -10, 10);
export("valley",   "xy", xsym, va, -10, 10);
export("exppos",   "xy", xsym, ep, -10, 10);
export("expneg",   "xy", xsym, en, -10, 10);
export("expquad",  "xy", xsym, eq, -10, 10);
export("sig",      "xy", xsym, sg, -10, 10);
export("logbig",   "xy", xpos, lb, -10, 10);
export("logsmall", "xy", xpos, ls, -10, 10);
export("sinus",    "xy", xsym, sn, -10, 10);
export("cosinus",  "xy", xsym, cn, -10, 10);
export("tangens",  "xy", xsym, tn, -10, 10);
export("circ",     "xy", xrad, sc, -10, 10);
export("cardsin",  "xy", xsym, cs, -10, 10);

% show functions
figure
plot(xsym, va)
axis "equal"
set( gca(), "xlim", [-5, 5], "ylim", [-5, 5] );

return

figure
plot(xsym, p1)
axis "equal"
set( gca(), "xlim", [-5, 5], "ylim", [-5, 5] );

figure
plot(xsym, p2)
axis "equal"
set( gca(), "xlim", [-5, 5], "ylim", [-5, 5] );

figure
plot(xsym, p3)
axis "equal"
set( gca(), "xlim", [-5, 5], "ylim", [-5, 5] );

figure
plot(xsym, p4)
axis "equal"
set( gca(), "xlim", [-5, 5], "ylim", [-5, 5] );

figure
plot(xpos, s2)
axis "equal"
set( gca(), "xlim", [-5, 5], "ylim", [-5, 5] );

figure
plot(xsym, s3)
axis "equal"
set( gca(), "xlim", [-5, 5], "ylim", [-5, 5] );

figure
plot(xsym, h1)
axis "equal"
set( gca(), "xlim", [-5, 5], "ylim", [-5, 5] );

figure
plot(xsym, h2)
axis "equal"
set( gca(), "xlim", [-5, 5], "ylim", [-5, 5] );

figure
plot(xsym, ep)
axis "equal"
set( gca(), "xlim", [-5, 5], "ylim", [-5, 5] );

figure
plot(xsym, en)
axis "equal"
set( gca(), "xlim", [-5, 5], "ylim", [-5, 5] );

figure
plot(xsym, eq)
axis "equal"
set( gca(), "xlim", [-5, 5], "ylim", [-5, 5] );

figure
plot(xpos, ln)
axis "equal"
set( gca(), "xlim", [-5, 5], "ylim", [-5, 5] );

figure
plot(xpos, lh)
axis "equal"
set( gca(), "xlim", [-5, 5], "ylim", [-5, 5] );

figure
plot(xsym, sn)
axis "equal"
set( gca(), "xlim", [-5, 5], "ylim", [-5, 5] );

figure
plot(xsym, cn)
axis "equal"
set( gca(), "xlim", [-5, 5], "ylim", [-5, 5] );

figure
plot(xsym, tn)
axis "equal"
set( gca(), "xlim", [-5, 5], "ylim", [-5, 5] );

figure
plot(xrad, sc)
axis "equal"
set( gca(), "xlim", [-5, 5], "ylim", [-5, 5] );

figure
plot(xsym, cs)
axis "equal"
set( gca(), "xlim", [-5, 5], "ylim", [-5, 5] );

