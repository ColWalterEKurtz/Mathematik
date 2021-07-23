clear all;

addpath 'Octave/';

% ---------
% polypoint
% ---------
%
%
%
function ps = polypoint(p, x, numopt = [0 0 0 0 1])
  maxdcp = numopt(1);
  addbrn = numopt(2);
  addbrf = numopt(3);
  addsgn = numopt(4);
  addtex = numopt(5);
  bl = "(";
  sp = "|";
  br = ")";
  if addtex
    bl = "\\left(";
    sp = "\\;\\middle|\\;";
    br = "\\right)";
  endif
  xs = myn2s(x, maxdcp, addbrn, addbrf, addsgn, addtex);
  ys = myn2s(polyval(p, x), maxdcp, addbrn, addbrf, addsgn, addtex);
  ps = sprintf("%s%s%s%s%s", bl, xs, sp, ys, br);
endfunction

% ----------------
% show_calculation
% ----------------
%
%
%
function [y, m, b] = show_calculation(p, x, width = "9em", last = "\\hfill")
  y = polyval(p, x);
  d = polyder(p);
  m = polyval(d, x);
  b = y - m * x;
  z = roots([m b]);
  labels = { "f(x)" "x0" "P" "f'(x)" "m" "b" "t(x)" "0" };
  values = ...
  {
    mypolystr(p, "x", [0 0 0 0 0])
    myn2s(x, 0,0,0,0,0)
    polypoint(p, x, [0 0 0 0 0])
    mypolystr(d, "x", [0 0 0 0 0])
    myn2s(m, 0,0,0,0,0)
    myn2s(b, 0,0,0,0,0)
    mypolystr([m b], "x", [0 0 0 0 0])
    sprintf("t(%s)", myn2s(z, 0,0,0,0,0))
  };
  printf("\\begin{minipage}{%s}\n", width);
  printf("\\begin{verbatim}\n");
  mylvdout(labels, values);
  printf("\\end{verbatim}\n");
  printf("\\end{minipage}%s\n", last);
endfunction

% Polynome
p1 = [ -1  0 0 ]; %f(x)=-x^2
p2 = [  2 -1 0 ]; %f(x)=2x^2 - x
p3 = [ -1  0 3 ]; %f(x)=-x^2 + 3
p4 = [  0 -5 3 ]; %f(x)=-5x + 3
% x-Koordinaten der Beruehrpunkte
P1x =  2;
P2x = -3;
P3x =  4;
P4x =  0;

printf("\\begin{exercise}\n");
printf("      {ID-f99dceda24ce3cb1bbfca5d37576481c695e6395}\n");
printf("      {Tangentengleichung}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Bestimmen Sie die Funktionsgleichung der\n");
printf("    Tangente $t$ an den Graphen von $f$ in\n");
printf("    Punkt $P\\left(x_0\\;\\middle|\\;f(x_0)\\right)$.\n");
printf("    Geben Sie anschließend auch den Schnittpunkt\n");
printf("    der Tangente mit der $x$-Achse an.\n");
printf("    \\begin{alignat*}{3}\n");
printf("      \\text{a)}&\\;\\;\n");
printf("      f(x)=%s\n", mypolystr(p1));
printf("      \\quad\n");
xs = myn2s(P1x, 3,0,0,0,1);
printf("      P\\left(%s\\;\\middle|\\;f(%s)\\right)\n", xs, xs);
printf("      \\qquad&\\qquad\n");
printf("      \\text{c)}&\\;\\;\n");
printf("      f(x)=%s\n", mypolystr(p3));
printf("      \\quad\n");
xs = myn2s(P3x, 3,0,0,0,1);
printf("      P\\left(%s\\;\\middle|\\;f(%s)\\right)\n", xs, xs);
printf("      \\\\[1ex]\n");
printf("      \\text{b)}&\\;\\;\n");
printf("      f(x)=%s\n", mypolystr(p2));
printf("      \\quad\n");
xs = myn2s(P2x, 3,0,0,0,1);
printf("      P\\left(%s\\;\\middle|\\;f(%s)\\right)\n", xs, xs);
printf("      \\qquad&\\qquad\n");
printf("      \\text{d)}&\\;\\;\n");
printf("      f(x)=%s\n", mypolystr(p4));
printf("      \\quad\n");
xs = myn2s(P4x, 3,0,0,0,1);
printf("      P\\left(%s\\;\\middle|\\;f(%s)\\right)\n", xs, xs);
printf("    \\end{alignat*}\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    %% </OUTLINE>\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    %% <OUTCOME>\n");
show_calculation(p1, P1x, "9em", "\\hfill");
show_calculation(p2, P2x, "9em", "\\hfill");
show_calculation(p3, P3x, "9em", "\\hfill");
show_calculation(p4, P4x, "9em", "\\par");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

