clear all;

addpath 'Octave/';

% h(a)
function h = h_von_a(a)
  h = sqrt(3) / 2 * a;
endfunction

% a(h)
function a = a_von_h(h)
  a = 2 * h / sqrt(3);
endfunction

% a(U)
function a = a_von_U(U)
  a = U / 3;
endfunction

% a(A)
function a = a_von_A(A)
  a = 2 / 3 * nthroot(3 * A^2, 4);
endfunction

% A(U)
function A = A_von_U(U)
  A = a_von_U(U) * h_von_a(a_von_U(U)) / 2;
endfunction

% A(h)
function A = A_von_h(h)
  A = a_von_h(h) * h / 2;
endfunction

% U(A)
function U = U_von_A(A)
  U = 3 * a_von_A(A);
endfunction

% U(h)
function U = U_von_h(h)
  U = 3 * a_von_h(h);
endfunction

A1 = A_von_U(1);
A2 = A_von_h(1);
U1 = U_von_A(1);
U2 = U_von_h(1);

ins_A1 = sprintf("%.3f", A1);
ins_A2 = sprintf("%.3f", A2);
ins_U1 = sprintf("%.2f", U1);
ins_U2 = sprintf("%.2f", U2);

printf("\\begin{exercise}\n");
printf("      {ID-20e4e01973a96bf9d1952025ddd54429c85a324e}\n");
printf("      {Gleichseitig}\n");
printf("  \\ifproblem\\problem\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\squeeze\n");
printf("      \\item Welchen Flächeninhalt hat ein gleichseitiges Dreieck mit dem Umfang \\simeter{1}?\n");
printf("      \\item Welchen Flächeninhalt hat ein gleichseitiges Dreieck mit der Höhe \\simeter{1}?\n");
printf("      \\item Welchen Umfang hat ein gleichseitiges Dreieck mit Flächeninhalt \\simm{1}?\n");
printf("      \\item Welchen Umfang hat ein gleichseitiges Dreieck mit der Höhe \\simeter{1}?\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\n");
printf("    In einem gleichseitigen Dreieck halbiert jede Höhe $h$ die jeweilige\n");
printf("    Grundseite $a$ und es gilt nach dem Satz des Pythagoras folgende Gleichung:\n");
printf("    \\begin{equation*}\n");
printf("      a^2=h^2+\\left(\\frac{a}{2}\\right)^2\n");
printf("    \\end{equation*}\n");
printf("    Damit gelten auch die Zusammenhänge\n");
printf("    \\begin{equation*}\n");
printf("      h(a)=\\frac{\\sqrt{3}}{2}\\cdot a\n");
printf("      \\quad,\\quad\n");
printf("      a(h)=\\frac{2h}{\\sqrt{3}}\n");
printf("      \\quad,\\quad\n");
printf("      a(U)=\\frac{U}{3}\n");
printf("      \\quad\\text{und}\\quad\n");
printf("      a(A)=\\frac{2}{3}\\cdot\\sqrt[4]{3A^2}\n");
printf("    \\end{equation*}\n");
printf("    aus denen sich sich dann die gefragten Größen zusammensetzen lassen.\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Für den Flächeninhalt in Abhängigkeit vom Umfang gilt:\n");
printf("            \\begin{equation*}\n");
printf("              A(U)\n");
printf("              =\n");
printf("              \\frac{gh}{2}\n");
printf("              =\n");
printf("              \\frac{a(U)\\cdot h\\big(a(U)\\big)}{2}\n");
printf("              =\n");
printf("              \\frac{\\frac{U}{3}\\cdot\\frac{\\sqrt{3}}{2}\\cdot\\frac{U}{3}}{2}\n");
printf("              =\n");
printf("              \\frac{\\sqrt{3}}{36}\\cdot U^2\n");
printf("            \\end{equation*}\n");
printf("      \\item Für den Flächeninhalt in Abhängigkeit von der Höhe gilt:\n");
printf("            \\begin{equation*}\n");
printf("              A(h)\n");
printf("              =\n");
printf("              \\frac{gh}{2}\n");
printf("              =\n");
printf("              \\frac{a(h)\\cdot h}{2}\n");
printf("              =\n");
printf("              \\frac{\\frac{2h}{\\sqrt{3}}\\cdot h}{2}\n");
printf("              =\n");
printf("              \\frac{1}{\\sqrt{3}}\\cdot h^2\n");
printf("            \\end{equation*}\n");
printf("      \\item Für den Umfang in Abhängigkeit vom Flächeninhalt gilt:\n");
printf("            \\begin{equation*}\n");
printf("              U(A)\n");
printf("              =\n");
printf("              a+b+c\n");
printf("              =\n");
printf("              3\\cdot a(A)\n");
printf("              =\n");
printf("              2\\cdot\\sqrt[4]{3A^2}\n");
printf("            \\end{equation*}\n");
printf("      \\item Für den Umfang in Abhängigkeit von der Höhe gilt:\n");
printf("            \\begin{equation*}\n");
printf("              U(h)\n");
printf("              =\n");
printf("              a+b+c\n");
printf("              =\n");
printf("              3\\cdot a(h)\n");
printf("              =\n");
printf("              3\\cdot\\frac{2h}{\\sqrt{3}}\n");
printf("              =\n");
printf("              2\\cdot\\sqrt{3}\\cdot h\n");
printf("            \\end{equation*}\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Der Flächeninhalt beträgt $\\frac{\\sqrt{3}}{36}\\approx\\simm{%s}$.\n", ins_A1);
printf("      \\item Der Flächeninhalt beträgt $\\frac{1}{\\sqrt{3}}\\approx\\simm{%s}$.\n", ins_A2);
printf("      \\item Der Umfang beträgt $2\\cdot\\sqrt[4]{3}\\approx\\simeter{%s}$.\n", ins_U1);
printf("      \\item Der Umfang beträgt $2\\cdot\\sqrt{3}\\approx\\simeter{%s}$.\n", ins_U2);
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

