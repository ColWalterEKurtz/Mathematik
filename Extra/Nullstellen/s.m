clear all;

addpath '../../Octave/';

% f(x) = (x + n1) * (x - n1) * (x + n2) * (x - n2)
% 1. Substitution

% Aufgabe a)
an1 = 1; % + -
an2 = 4; % + -
az  = sort([an1 -an1 an2 -an2]);
ap  = polymul(polymul(polymul([1 an1], [1 -an1]), [1 an2]), [1 -an2]);

% Aufgabe b)
bn1 = 2;
bn2 = 3;
bz  = sort([bn1 -bn1 bn2 -bn2]);
bp  = polymul(polymul(polymul([1 bn1], [1 -bn1]), [1 bn2]), [1 -bn2]);

% Aufgabe c)
cn1 = 0.75;
cn2 = 1.5;
cz  = sort([cn1 -cn1 cn2 -cn2]);
cp  = polymul(polymul(polymul(polymul([1 cn1], [1 -cn1]), [1 cn2]), [1 -cn2]), [-4]);

% Ausgabeformat
fmtp = '      \\text{%s}\\rule[-\\ruled]{0pt}{\\rulet}\\quad f(x)&=%s';
fmtc = '      \\text{%s}\\quad f(x)&=%s \\colgap \\text{NST}&=\\left\\{%s; %s; %s; %s\\right\\}';

printf("\\begin{exercise}\n");
printf("      {ID-623371cb4047f4bb41b9967a5f7bc040dcd5c6e9}\n");
printf("      {Substitution}\n");
printf("  \\ifproblem\\problem\n");
printf("    \\begingroup\n");
printf("    \\sbox{\\dummy}{$\\displaystyle\\frac{b}{a}$}%%\n");
printf("    \\setlength{\\ruled}{\\dp\\dummy}%%\n");
printf("    \\setlength{\\rulet}{\\ruled}%%\n");
printf("    \\addtolength{\\rulet}{\\ht\\dummy}%%\n");
printf("    \\newcommand{\\colgap}{\\qquad&\\rule[-\\ruled]{0pt}{\\rulet}\\qquad}%%\n");
printf("    Bestimme alle reellen Nullstellen:\n");
printf("    %% use multiple pages if neccessary\n");
printf("    \\allowdisplaybreaks\n");
printf("    \\begin{alignat*}{1}\n");

printf(fmtp, 'a)', polystr(ap, 'x'));
printf(' \\\\\n');

printf(fmtp, 'b)', polystr(bp, 'x'));
printf(' \\\\\n');

printf(fmtp, 'c)', polystr(cp, 'x'));
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
printf("    Bestimme alle reellen Nullstellen:\n");
printf("    %% use multiple pages if neccessary\n");
printf("    \\allowdisplaybreaks\n");
printf("    \\begin{alignat*}{3}\n");

printf(fmtc, 'a)', polystr(ap, 'x'), texnum(az(1)), texnum(az(2)), texnum(az(3)), texnum(az(4)));
printf(' \\\\\n');

printf(fmtc, 'b)', polystr(bp, 'x'), texnum(bz(1)), texnum(bz(2)), texnum(bz(3)), texnum(bz(4)));
printf(' \\\\\n');

printf(fmtc, 'c)', polystr(cp, 'x'), texnum(cz(1)), texnum(cz(2)), texnum(cz(3)), texnum(cz(4)));
printf('\n');

printf("    \\end{alignat*}\n");
printf("    \\endgroup\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath '../../Octave/';

