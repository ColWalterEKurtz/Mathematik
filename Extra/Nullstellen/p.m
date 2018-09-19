clear all;

addpath '../../Octave/';

% f(x) = (x - n1) * (x - n2) * (x - n3)
% 1. Polynomdivision

% Aufgabe a)
an1 = -1;
an2 = -4;
an3 =  7;
az  = sort([an1 an2 an3]);
ap  = polymul(polymul([1 -an1], [1 -an2]), [1 -an3]);

% Aufgabe b)
bn1 =  2;
bn2 = 10;
bn3 = -3;
bz  = sort([bn1 bn2 bn3]);
bp  = polymul(polymul([1 -bn1], [1 -bn2]), [1 -bn3]);

% Aufgabe c)
cn1 =  4.5;
cn2 =  0.5;
cn3 = -1.75;
cz  = sort([cn1 cn2 cn3]);
cp  = polymul(polymul(polymul([1 -cn1], [1 -cn2]), [1 -cn3]), [-2]);

% Ausgabeformat
fmtp = '      \\text{%s}\\quad f(x)&=%s \\colgap %s&\\text{ ist eine Nullstelle}';
fmtc = '      \\text{%s}\\quad f(x)&=%s \\colgap \\text{NST}&=\\left\\{%s; %s; %s\\right\\}';

printf("\\begin{exercise}\n");
printf("      {ID-1efa64e28656dc77ca166967befad745ca0296a0}\n");
printf("      {Polynomdivision}\n");
printf("  \\ifproblem\\problem\n");
printf("    \\begingroup\n");
printf("    \\sbox{\\dummy}{$\\displaystyle\\frac{b}{a}$}%%\n");
printf("    \\setlength{\\ruled}{\\dp\\dummy}%%\n");
printf("    \\setlength{\\rulet}{\\ruled}%%\n");
printf("    \\addtolength{\\rulet}{\\ht\\dummy}%%\n");
printf("    \\newcommand{\\colgap}{\\qquad&\\rule[-\\ruled]{0pt}{\\rulet}\\qquad}%%\n");
printf("    Bestimme die restlichen Nullstellen:\n");
printf("    %% use multiple pages if neccessary\n");
printf("    \\allowdisplaybreaks\n");
printf("    \\begin{alignat*}{3}\n");

printf(fmtp, 'a)', polystr(ap, 'x'), texnum(an3));
printf(' \\\\\n');

printf(fmtp, 'b)', polystr(bp, 'x'), texnum(bn3));
printf(' \\\\\n');

printf(fmtp, 'c)', polystr(cp, 'x'), texnum(cn3));
printf('\n');

printf("    \\end{alignat*}\n");
printf("    \\endgroup\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    \\begingroup\n");
printf("    \\sbox{\\dummy}{$\\displaystyle\\frac{b}{a}$}%%\n");
printf("    \\setlength{\\ruled}{\\dp\\dummy}%%\n");
printf("    \\setlength{\\rulet}{\\ruled}%%\n");
printf("    \\addtolength{\\rulet}{\\ht\\dummy}%%\n");
printf("    \\newcommand{\\colgap}{\\qquad&\\rule[-\\ruled]{0pt}{\\rulet}\\qquad}%%\n");
printf("    Bestimme die restlichen Nullstellen:\n");
printf("    %% use multiple pages if neccessary\n");
printf("    \\allowdisplaybreaks\n");
printf("    \\begin{alignat*}{3}\n");

printf(fmtc, 'a)', polystr(ap, 'x'), texnum(az(1)), texnum(az(2)), texnum(az(3)));
printf(' \\\\\n');

printf(fmtc, 'b)', polystr(bp, 'x'), texnum(bz(1)), texnum(bz(2)), texnum(bz(3)));
printf(' \\\\\n');

printf(fmtc, 'c)', polystr(cp, 'x'), texnum(cz(1)), texnum(cz(2)), texnum(cz(3)));
printf('\n');

printf("    \\end{alignat*}\n");
printf("    \\endgroup\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath '../../Octave/';

