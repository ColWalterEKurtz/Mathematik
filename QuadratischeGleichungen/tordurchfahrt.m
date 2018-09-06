clear all;

addpath 'Octave/';

% Tor
tbreite = 4;
thoehe  = 6;

% Fahrzeug
fbreite = 3;
fhoehe  = 2.20;

% Nullstellen
x1 = -tbreite / 2;
x2 =  tbreite / 2;

% Streckfaktor in y-Richtung
sfak = thoehe / x1^2;

% Koeffizienten
a = -sfak;
b = 0;
c = thoehe;

% Wertetabelle (Spaltenvektoren)
x = [x1:0.1:x2]';
y = a.*x.^2 + b.*x .+ c;

% Hoehe des Torbogens auf Fahrzeugbreite
h = a * (fbreite / 2)^2 + b * (fbreite / 2) + c;

if (fhoehe < h)

  % das Fahrzeug past hindurch
  ins_durch = 'hindurch';

else

  % das Fahrzeug past nicht hindurch
  ins_durch = 'nicht hindurch';

endif

ins_tbreite = sprintf( "%d",   tbreite );
ins_thoehe  = sprintf( "%d",   thoehe  );
ins_fbreite = sprintf( "%d",   fbreite );
ins_fhoehe  = sprintf( "%.2f", fhoehe  );
ins_x1      = sprintf( "%g",   x1      );
ins_sfak    = sprintf( "%g",   sfak    );
ins_x2      = sprintf( "%g",   x2      );
ins_h       = sprintf( "%g",   h       );

printf("\\begin{exercise}\n");
printf("      {ID-b14c48fd1aee3a34bcf3ba27579a9e6f9de1b7a2}\n");
printf("      {Tordurchfahrt}\n");
printf("  \\ifproblem\\problem\n");
printf("    Eine Tordurchfahrt hat die Form einer Parabel. Sie ist \\simeter{%s} hoch\n", ins_thoehe);
printf("    und \\simeter{%s} breit. Ein Fahrzeug ist \\simeter{%s} breit und \\simeter{%s}\n", ins_tbreite, ins_fbreite, ins_fhoehe);
printf("    hoch. Kann dieses Fahrzeug die Tordurchfahrt passieren?\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\n");
printf("    \\begin{minipage}{3.5cm}\n");
printf("      \\begin{tikzpicture}[scale=0.5]\n");
printf("        %% Fahrzeug\n");
printf("        \\filldraw[fill=black!25!white] (-%.3f, 0) rectangle (%.3f, %.3f);\n", (fbreite / 2), (fbreite / 2), fhoehe);
printf("        %% x-Achse\n");
printf("        \\draw[->, >=stealth, line width=0.6pt] (%.3f, 0) -- (%.3f, 0);\n", (-tbreite / 2 - 1), (tbreite / 2 + 1));
printf("        %% y-Achse\n");
printf("        \\draw[->, >=stealth, line width=0.6pt] (0, -1) -- (0, %.3f);\n", (thoehe + 1));
printf("        %% Parabel\n");
printf("        \\draw[line width=0.5pt] plot[smooth] coordinates\n");
printf("        {\n");
printf("          (%7.3f, %7.3f)\n", [x y]')
printf("        };\n");
printf("        %% Beschriftung\n");
printf("        \\draw (%.3f,  0.2) -- (%.3f, -0.2) node[below]{{\\small\\num{%s}\\hphantom{ --}}};\n", x1, x1, ins_x1);
printf("        \\draw (%.3f,  0.2) -- (%.3f, -0.2) node[below]{{\\small\\num{%s}}};\n", x2, x2, ins_x2);
printf("        \\draw ( 0.2, %.3f) -- (-0.2, %.3f) node[left=0.25em]{{\\small\\num{%s}}};\n", c, c, ins_thoehe);
printf("      \\end{tikzpicture}\n");
printf("    \\end{minipage}%%\n");
printf("    \\hspace*{\\fill}%%\n");
printf("    \\begin{minipage}{11cm}\n");
printf("      Eine nach unten geöffnete Parabel mit dem Nullstellen \\num{%s} und \\num{%s} hat die Form:\n", ins_x1, ins_x2);
printf("      \\begin{equation*}\n");
printf("        f(x)=-(x+%s)(x-%s)=-(x^2-%g)=-x^2+%g\n", ins_x2, ins_x2, (x2^2), (x2^2));
printf("      \\end{equation*}\n");
printf("\n");
printf("      Um den Scheitelpunkt $(0\\mid%s)$ zu erreichen muss die Parabel noch um den Faktor \\num{%s}\n", ins_thoehe, ins_sfak);
printf("      gestreckt werden:\n");
printf("      \\begin{equation*}\n");
printf("        f(x)=-\\num{%s}\\cdot(x^2-%g)=-\\num{%s}x^2+%s\n", ins_sfak, (x1^2), ins_sfak, ins_thoehe);
printf("      \\end{equation*}\n");
printf("    \\end{minipage}%%\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    \\begin{equation*}\n");
printf("      f(\\num{%g})=-\\num{%s}\\cdot\\num{%g}^2+%s=\\num{%s}\n", (fbreite / 2), ins_sfak, (fbreite / 2), ins_thoehe, ins_h);
printf("    \\end{equation*}\n");
printf("    Die Höhe des Torbogens \\simeter{%.2f} links und rechts der Mitte beträgt\n", (fbreite / 2));
printf("    \\simeter{%s}, d.\\,h. das \\simeter{%s} hohe Fahrzeug passt %s.\n", ins_h, ins_fhoehe, ins_durch);
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

