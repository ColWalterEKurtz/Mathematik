clear all;

addpath '../../Octave/';

% f(x) = (x + n1) * (x - n1) * (x + n2) * (x - n2) * (x - n3)
% 1. Polynomdivision
% 2. Substitution

% Nullstellen a)
an1 = 1; % + -
an2 = 4; % + -
an3 = 3;
az  = sort([an1 -an1 an2 -an2 an3]);
ap  = polymul(polymul(polymul(polymul([1 an1], [1 -an1]), [1 an2]), [1 -an2]), [1 -an3]);

% Nullstellen b)
bn1 =  2; % + -
bn2 =  3; % + -
bn3 = -5;
bz  = sort([bn1 -bn1 bn2 -bn2 bn3]);
bp  = polymul(polymul(polymul(polymul([1 bn1], [1 -bn1]), [1 bn2]), [1 -bn2]), [1 -bn3]);

% Nullstellen c)
cn1 =  0.5; % + -
cn2 =  1.5; % + -
cn3 = -2.5;
cz  = sort([cn1 -cn1 cn2 -cn2 cn3]);
cp  = polymul(polymul(polymul(polymul([1 cn1], [1 -cn1]), [1 cn2]), [1 -cn2]), [1 -cn3]);

% Ausgabeformat
fmtp = '      \\text{%s}\\quad f(x)&=%s \\colgap %s&\\text{ ist eine Nullstelle}';
fmtc = '      \\text{%s}\\quad f(x)&=%s \\colgap \\text{NST}&=\\left\\{%s; %s; %s; %s; %s\\right\\}';

printf("\\begin{exercise}\n");
printf("      {ID-a5b7fd3b9105421810d6b9a4141a38427a3575e2}\n");
printf("      {Polynomdivision und Substitution}\n");
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

printf(fmtc, 'a)', polystr(ap, 'x'), texnum(az(1)), texnum(az(2)), texnum(az(3)), texnum(az(4)), texnum(az(5)));
printf(' \\\\\n');

printf(fmtc, 'b)', polystr(bp, 'x'), texnum(bz(1)), texnum(bz(2)), texnum(bz(3)), texnum(bz(4)), texnum(bz(5)));
printf(' \\\\\n');

printf(fmtc, 'c)', polystr(cp, 'x'), texnum(cz(1)), texnum(cz(2)), texnum(cz(3)), texnum(cz(4)), texnum(cz(4)));
printf('\n');

printf("    \\end{alignat*}\n");
printf("    \\endgroup\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath '../../Octave/';

