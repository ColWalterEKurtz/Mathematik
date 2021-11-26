function [valid m1 b1 m2 b2 z1 z2 cx cy u f alpha beta gamma] = gudide_calc(P, Q, R, S)

  % ungueltige Werte am Anfang
  valid = false;

  % Reihenfolge der Punkte P und Q festlegen
  if (P(1) < Q(1))

    x1 = P(1);
    y1 = P(2);
    x2 = Q(1);
    y2 = Q(2);

  else

    x1 = Q(1);
    y1 = Q(2);
    x2 = P(1);
    y2 = P(2);

  endif

  % Division durch Null
  if (x1 == x2)

    return

  endif

  % Geardenparameter fuer die Gerade durch P und Q
  m1 = (y2 - y1) / (x2 - x1);
  b1 = y1 - m1 * x1;

  % Reihenfolge der Punkte R und S festlegen
  if (R(1) < S(1))

    x1 = R(1);
    y1 = R(2);
    x2 = S(1);
    y2 = S(2);

  else

    x1 = S(1);
    y1 = S(2);
    x2 = R(1);
    y2 = R(2);

  endif

  % Division durch Null
  if (x1 == x2)

    return

  endif

  % Geardenparameter fuer die Gerade durch R und S
  m2 = (y2 - y1) / (x2 - x1);
  b2 = y1 - m2 * x1;

  % kein Schnittpunkt
  if (m1 == m2)

    return

  endif

  % jetzt sind alle Werte gueltig
  valid = true;

  % Schnittpunkt
  cx = (b2 - b1) / (m1 - m2);
  cy = m1 * cx + b1;
  C = [cx cy];

  % Nullstellen
  z1 = -b1 / m1;
  z2 = -b2 / m2;

  % Reihenfolge der Nullstellen festlegen
  if (z2 < z1)

    zt = z2;
    z2 = z1;
    z1 = zt;

  endif

  % Punkte A und B des Dreiecks
  A = [z1 0];
  B = [z2 0];

  % Umfang
  a = norm(B - C);
  b = norm(A - C);
  c = norm(A - B);
  u = a + b + c;

  % Flaeche
  g = abs(c);
  h = abs(C(2));
  f = g * h / 2;

  % Abschnitte auf Seite c
  q = abs(C(1) - A(1));
  p = abs(B(1) - C(1));

  % Innenwinkel
  alpha = acos(q / b) * 180 / pi;
  beta  = acos(p / a) * 180 / pi;
  gamma = 180 - alpha - beta;

endfunction

