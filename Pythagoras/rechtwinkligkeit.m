clear all;

addpath 'Octave/';

% --------
% maxshift
% --------
%
% thhis function shifts the maximum element in v to the last position
%
function V = maxshift(v)
  # get number of elements
  n = length(v);
  % empty vector given
  if (n == 0)
    V = v;
    return
  endif
  % position of the largest element
  m = 1;
  % find position of the largest element
  for i = 2:n
    if (v(i) > v(m))
      m = i;
    endif
  endfor
  % copy head of v
  for i = 1:(m-1)
    V(i) = v(i);
  endfor
  % copy tail of v
  for i = (m+1):n
    V(i-1) = v(i);
  endfor
  % copy largest element
  V(n) = v(m);
endfunction

% ----------------
% show_calculation
% ----------------
%
%
%
function show_calculation(a, b, c)
  eps = 1e-9;
  abc = maxshift([a b c]);
  aa  = abc(1) * abc(1);
  bb  = abc(2) * abc(2);
  cc  = abc(3) * abc(3);
  printf("    \\item ");
  if (abs((aa + bb) - cc) < eps)
    printf("Das Dreieck $ABC$ mit\n");
    printf("    $a=\\SI{%s}{\\centi\\metre}$,\n",    myn2s(a, 3,0,0,0,0));
    printf("    $b=\\SI{%s}{\\centi\\metre}$ und\n", myn2s(b, 3,0,0,0,0));
    printf("    $c=\\SI{%s}{\\centi\\metre}$\n",     myn2s(c, 3,0,0,0,0));
    printf("    besitzt einen rechten Winkel bei ");
    if (abs(a - abc(3)) < eps)
      printf("$\\alpha$, denn:\n");
    elseif (abs(b - abc(3)) < eps)
      printf("$\\beta$, denn:\n");
    elseif (abs(c - abc(3)) < eps)
      printf("$\\gamma$, denn:\n");
    endif
  else
    printf("Das Dreieck $ABC$ mit\n");
    printf("    $a=\\SI{%s}{\\centi\\metre}$,\n",     myn2s(a, 3,0,0,0,0));
    printf("    $b=\\SI{%s}{\\centi\\metre}$ und \n", myn2s(b, 3,0,0,0,0));
    printf("    $c=\\SI{%s}{\\centi\\metre}$\n",      myn2s(c, 3,0,0,0,0));
    printf("    ist nicht rechtwinklig, denn:\n");
  endif
  printf("    \\begin{equation*}\n");
  printf("      %s^2\n", myn2s(abc(1), 3, 1, 1, 0, 1));
  printf("      \\text{\\,\\si{\\square\\centi\\metre}}\n");
  printf("      +\n");
  printf("      %s^2\n", myn2s(abc(2), 3, 1, 1, 0, 1));
  printf("      \\text{\\,\\si{\\square\\centi\\metre}}\n");
  printf("      =\n");
  printf("      \\SI{%s}{\\square\\centi\\metre}\n", myn2s(aa, 3, 0, 0, 0, 0));
  printf("      +\n");
  printf("      \\SI{%s}{\\square\\centi\\metre}\n", myn2s(bb, 3, 0, 0, 0, 0));
  printf("      =\n");
  printf("      \\SI{%s}{\\square\\centi\\metre}\n", myn2s(aa + bb, 3, 0, 0, 0, 0));
  if (abs((aa + bb) - cc) < eps)
    printf("      =\n");
    printf("      %s^2\n", myn2s(abc(3), 3, 1, 1, 0, 1));
    printf("      \\text{\\,\\si{\\square\\centi\\metre}}\n");
  else
    printf("      \\neq\n");
    printf("      %s^2\n", myn2s(abc(3), 3, 1, 1, 0, 1));
    printf("      \\text{\\,\\si{\\square\\centi\\metre}}\n");
    printf("      =\n");
    printf("      \\SI{%s}{\\square\\centi\\metre}\n", myn2s(cc, 3, 0, 0, 0, 0));
  endif
  printf("    \\end{equation*}\n");
endfunction

% Aufgabe 1
a1 = 3;
b1 = 4;
c1 = 5;
% Aufgabe 2
a2 = 6;
b2 = 7;
c2 = 8;
% Aufgabe 3
a3 = 8;
b3 = 17;
c3 = 15;
% Aufgabe 4
a4 = 29;
b4 = 21;
c4 = 20;
% Aufgabe 5
a5 = 6.5;
b5 = 9.7;
c5 = 7.2;
% Aufgabe 6
a6 = 5.3;
b6 = 2.8;
c6 = 4.6;

printf("\\begin{exercise}\n");
printf("      {ID-1da06e859bd46564b9e0c9a2cbe0089b4d613ced}\n");
printf("      {Rechtwinkligkeit}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Prüfe, ob die Dreiecke mit den angegebenen\n");
printf("    Seitenlängen rechtwinklig sind.\n");
printf("    \\begingroup\n");
printf("      \\newcommand{\\tri}[4]\n");
printf("      {%%\n");
printf("        \\text{#1}\\;&\\;\n");
printf("        &\n");
printf("        a&=\\SI{#2}{\\centi\\metre}\n");
printf("        &\n");
printf("        \\;&\\;\n");
printf("        &\n");
printf("        b&=\\SI{#3}{\\centi\\metre}\n");
printf("        &\n");
printf("        \\;&\\;\n");
printf("        &\n");
printf("        c&=\\SI{#4}{\\centi\\metre}\n");
printf("      }%%\n");

function s = n2s(x)
  s = myn2s(x, 3, false, false, false, false);
endfunction

printf("      \\begin{alignat*}{13}\n");
printf("        \\tri{a)}{%s}{%s}{%s}\n", n2s(a1), n2s(b1), n2s(c1));
printf("        \\quad&\\quad\n");
printf("        \\tri{d)}{%s}{%s}{%s}\n", n2s(a4), n2s(b4), n2s(c4));
printf("        \\\\\n");
printf("        \\tri{b)}{%s}{%s}{%s}\n", n2s(a2), n2s(b2), n2s(c2));
printf("        \\quad&\\quad\n");
printf("        \\tri{e)}{%s}{%s}{%s}\n", n2s(a5), n2s(b5), n2s(c5));
printf("        \\\\\n");
printf("        \\tri{c)}{%s}{%s}{%s}\n", n2s(a3), n2s(b3), n2s(c3));
printf("        \\quad&\\quad\n");
printf("        \\tri{f)}{%s}{%s}{%s}\n", n2s(a6), n2s(b6), n2s(c6));
printf("      \\end{alignat*}\n");
printf("    \\endgroup\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    Der Satz des Pythagoras lautet in der\n");
printf("    allgemein bekannten Form:\n");
printf("    \\begin{quote}\n");
printf("      Wenn ein Dreieck einen rechten Winkel besitzt,\n");
printf("      dann sind die beiden Kathetenquadrate zusammen\n");
printf("      so groß wie das Hypotenusenquadrat.\n");
printf("    \\end{quote}\n");
printf("    Aber der Satz des Pythagoras gilt auch in der\n");
printf("    umgekehrten Richtung:\n");
printf("    \\begin{quote}\n");
printf("      Wenn die Quadrate über den beiden kürzeren\n");
printf("      Seiten zusammen so groß sind wie das Quadrat\n");
printf("      über der längsten Seite, dann besitzt das\n");
printf("      Dreieck einen rechten Winkel.\n");
printf("    \\end{quote}\n");
printf("    %% </OUTLINE>\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    %% <OUTCOME>\n");
printf("    \\begin{enumerate}[a)]\n");
show_calculation(a1, b1, c1)
show_calculation(a2, b2, c2)
show_calculation(a3, b3, c3)
show_calculation(a4, b4, c4)
show_calculation(a5, b5, c5)
show_calculation(a6, b6, c6)
printf("    \\end{enumerate}\n");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

