clear all;

addpath('../../Octave/');

abcz = ...
[
  -10 -20  30
   -9  18  27
   -6  12  18
   -5 -30 -25
   -4  24 -20
   -4  24 -32
   -3  12   0
   -3  12  36
   -3  24 -36
   -3  -6  -3
   -3  -6  45
   -3   6   9
   -2 -12 -10
   -2  12  32
   -2  16 -14
   -2  16  18
   -2 -20 -42
   -2 -20 -50
   -2   8  10
   -1  10  11
   -1  10 -21
   -1 -10 -24
   -1 -12  13
   -1  12 -35
   -1 -14 -48
   -1 -14 -49
   -1 -16 -48
   -1   2  24
   -1   2  35
   -1  -4   5
   -1   6  16
   -1   6  27
   -1  -6  -8
   -1   8  33
    1 -10  24
    1 -12  20
    1  12  35
    1  14   0
    1 -14  33
    1   2  -3
    1  -6   0
    1   8 -20
    1  -8 -20
    1   8   7
    1  -8   7
    1  -8  -9
    2 -12 -14
    2 -12 -32
    2 -16   0
    2  20  48
    2  -4   2
    2   8 -24
    3 -18  24
    3 -24  48
    4 -16  12
    4 -16 -20
    5 -10 -15
    5  30  25
    6 -12 -18
    7  14   0
    9  36   0
   10  40  30
   10  40  40
];

abcq = ...
[
 -39/8   13    -13/2
 -32/3  -32/9   64/27
 -25/4  -15    -35/4
 -19/4  -38/3  -19/3
  -9/16  -9/8   27/16
  -9/4    6     -3
  -9/5   72/5  -27
  -9/8    3/2    3/2
  -9/8   -6    -15/2
  -8/5   36/5  -13/2
  -7/4    7/2   21/4
  -5/12   5/6    5/4
  -5/2  -10      0
  -5/7  -18/7  -32/35
  -4/5   12/5   16/5
  -3     15    -63/4
  -3/16  -7/8  -11/16
  -3/2   -6    -45/8
  -3/4   11/2  -39/4
  -2      3     -1
  -2     -9    -45/8
  -1/12  -1/3    5/12
  -1/2    0      9/2
  -1/2    1     15/2
  -1/2   -1     15/2
  -1/2   -1/2    1
  -1/2   -1/2    3/8
  -1/2   -4/3   -2/3
  -1/4   -1/2   15/4
  -1/4   -5/6   25/12
  -1/4   -9/4   -5
  -1     -5    -21/4
  -1      5/2   -3/2
  -1/6   -7/15  88/75
  -1     -7    -45/4
  -1     -9    -20
   1    -11/2    7
   1    -14/3   40/9 
   1/2    2     -9/8
   1      2      3/4
   1/2    3/4    1/4
   1/4    0     -1/4
   1/4   -1/2   -3/4
   1     -7     12
   1      7     45/4
   1/9    5/9    4/9
   2      8     15/2
   3/16   5/4    7/4
   3/2   -9/2    0
   3/4    9/2    6
   4/9   -2/3   -3/4 
   5      6     -7/5
   5/8  -25/8   45/32
   7/4   -7/2   21/16
   8/15   8/3   32/15
   8     16      6
   9/10  12/5    6/5
   9/20  -3/5  -24/5 
  11/4  -11     33/4
  16/15 -28/5   18/5
  21/25  28/5    7
  25/6   -5/3   -1/2
];

abcr = ...
[
   sqrt(7)       sqrt(112)    sqrt(63)
  -1            -sqrt(3/4)    3/2
   sqrt(3)       4            sqrt(3)
   sqrt(108)    -30           sqrt(432)
  -sqrt(11/128)  sqrt(22)    -sqrt(198)
  -sqrt(1/54)    sqrt(2/3)    sqrt(27/2)
   sqrt(1/162)   sqrt(2/9)   -sqrt(9/2)
  -sqrt(16/27)  sqrt(16/27)   sqrt(64/27)
  -sqrt(1/108)  -sqrt(3)     -sqrt(75/4)
   sqrt(2/9)    -sqrt(8)      sqrt(128/9)
  -sqrt(1/3)    -sqrt(1/3)    sqrt(75/16)
   sqrt(81/5)   -sqrt(36/5)  -sqrt(9/5)
  -sqrt(8/625)   sqrt(72/25) -sqrt(25/2)
  -sqrt(32/9)    sqrt(128/3) -sqrt(18)
  -sqrt(13/6)    sqrt(13/9)   sqrt(104/27)
   sqrt(56/9)    sqrt(448/9)  sqrt(14)
  -sqrt(171/16) -sqrt(114)   -sqrt(171/4)
];

printf("\\documentclass\n");
printf("[\n");
printf("  draft    = true,\n");
printf("  fontsize = 10pt,\n");
printf("  parskip  = half-,\n");
printf("  BCOR     = 0pt,\n");
printf("  DIV      = 14,\n");
printf("  ngerman\n");
printf("]\n");
printf("{scrartcl}\n");
printf("\n");
printf("\\usepackage[utf8]{inputenc}\n");
printf("\\usepackage[T1]{fontenc}\n");
printf("\\usepackage{lmodern}\n");
printf("\\usepackage{babel}\n");
printf("\\usepackage{amsmath}\n");
printf("\\usepackage{siunitx}\n");
printf("\n");
printf("%% use comma as decimal separator\n");
printf("\\sisetup{locale=DE, group-minimum-digits=4}\n");
printf("\n");
printf("\\newsavebox{\\measurebox}\n");
printf("\\newlength{\\measureboxdepth}\n");
printf("\\newlength{\\measureboxtotal}\n");
printf("\\setlength{\\measureboxdepth}{0pt}\n");
printf("\\setlength{\\measureboxtotal}{0pt}\n");
printf("\n");
printf("%% ------\n");
printf("%% vstrut\n");
printf("%% ------\n");
printf("%%\n");
printf("%% #1  width (default: 0pt)\n");
printf("%%\n");
printf("\\newcommand{\\vstrut}[1][0pt]\n");
printf("{%%\n");
printf("  \\rule[-\\measureboxdepth]{#1}{\\measureboxtotal}%%\n");
printf("}\n");
printf("\n");
printf("%% ---------\n");
printf("%% setvstrut\n");
printf("%% ---------\n");
printf("%%\n");
printf("%% #1  text to measure\n");
printf("%%\n");
printf("\\newcommand{\\setvstrut}[1]\n");
printf("{%%\n");
printf("  \\sbox{\\measurebox}{#1}%%\n");
printf("  \\setlength{\\measureboxdepth}{\\dp\\measurebox}%%\n");
printf("  \\setlength{\\measureboxtotal}{\\measureboxdepth}%%\n");
printf("  \\addtolength{\\measureboxtotal}{\\ht\\measurebox}%%\n");
printf("}\n");
printf("\n");
printf("%% ------------------------------------------------------------------------------\n");
printf("\\begin{document}\n");
printf("%% ------------------------------------------------------------------------------\n");
printf("\n");
printf("%% height of a fraction in displaystyle\n");
printf("\\newcommand{\\colgap}{\\qquad&\\vstrut\\qquad}%%\n");
printf("\n");
printf("%% --------------------------------\n");
printf("\\section*{Quadratische Funktionen}\n");
printf("%% --------------------------------\n");
printf("\n");
printf('\\paragraph{Ganzzahlige Koeffizienten und Lösungen}\n');
printf('\\setvstrut{$\\displaystyle(0)$}%%\n');
showalignat(abcz);
printf('\n')
printf('\\paragraph{Rationale Koeffizienten und Lösungen}\n');
printf('\\setvstrut{$\\displaystyle\\left(\\frac{0}{1}\\right)$}%%\n');
showalignat(abcq);
printf('\n')
printf('\\paragraph{Irrationale Koeffizienten und Lösungen}\n');
printf('\\setvstrut{$\\displaystyle\\left(\\sqrt{\\frac{0}{1}}\\right)$}%%\n');
showalignat(abcr);
printf('\n')
printf("%% ------------------------------------------------------------------------------\n");
printf("\\end{document}\n");
printf("%% ------------------------------------------------------------------------------\n");

rmpath('../../Octave/');

