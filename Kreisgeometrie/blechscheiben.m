clear all;

addpath 'Octave/';

% --
% sd
% --
%
% string decimal
%
% x       number to convert
% opt(1)  maxdcp
% opt(2)  addbrn
% opt(3)  addbrf
% opt(4)  addsgn
% opt(5)  addtex
%
function str = sd(x, opt = [7 0 0 0 1])
  str = myn2s(x, opt(1), opt(2), opt(3), opt(4), opt(5));
endfunction

% --
% sf
% --
%
% string fraction
%
% x       number to convert
% opt(1)  maxdcp
% opt(2)  addbrn
% opt(3)  addbrf
% opt(4)  addsgn
% opt(5)  addtex
%
function str = sf(x, opt = [0 0 0 0 1])
  str = myn2s(x, opt(1), opt(2), opt(3), opt(4), opt(5));
endfunction

%%% NO CALCULATIONS YET %%%

printf("%% 2022-01-11\n");
printf("\\begin{exercise}\n");
printf("      {ID-353b0e64416d957af46cdd7376c4676a5104c57c}\n");
printf("      {Blechscheiben}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    Aus einem quadratischen Stück Blech mit einer\n");
printf("    Seitenlänge von \\SI{24}{\\centi\\metre} werden\n");
printf("    kreisförmige Scheiben ausgestanzt. In welchem\n");
printf("    Fall ist der Abfall am geringsten?\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}[line width=0.6pt]\n");
printf("        %% some default colors\n");
printf("        \\newcommand{\\cola}{Black!35!White};%%\n");
printf("        \\newcommand{\\cole}{Black!55!White};%%\n");
printf("        \\begin{scope}\n");
printf("          \\filldraw[fill=\\cola] (0, 0) rectangle (24mm, 24mm);\n");
printf("          \\filldraw[fill=white] (12mm, 12mm) circle[radius=12mm];\n");
printf("        \\end{scope}\n");
printf("        \\begin{scope}[xshift=30mm]\n");
printf("          \\filldraw[fill=\\cola] (0, 0) rectangle (24mm, 24mm);\n");
printf("          \\filldraw[fill=white] (6mm, 6mm) circle[radius=6mm];\n");
printf("          \\filldraw[fill=white] (18mm, 6mm) circle[radius=6mm];\n");
printf("          \\filldraw[fill=white] (6mm, 18mm) circle[radius=6mm];\n");
printf("          \\filldraw[fill=white] (18mm, 18mm) circle[radius=6mm];\n");
printf("        \\end{scope}\n");
printf("        \\begin{scope}[xshift=60mm]\n");
printf("          \\filldraw[fill=\\cola] (0, 0) rectangle (24mm, 24mm);\n");
printf("          \\filldraw[fill=white] ( 4mm,  4mm) circle[radius=4mm];\n");
printf("          \\filldraw[fill=white] (12mm,  4mm) circle[radius=4mm];\n");
printf("          \\filldraw[fill=white] (20mm,  4mm) circle[radius=4mm];\n");
printf("          \\filldraw[fill=white] ( 4mm, 12mm) circle[radius=4mm];\n");
printf("          \\filldraw[fill=white] (12mm, 12mm) circle[radius=4mm];\n");
printf("          \\filldraw[fill=white] (20mm, 12mm) circle[radius=4mm];\n");
printf("          \\filldraw[fill=white] ( 4mm, 20mm) circle[radius=4mm];\n");
printf("          \\filldraw[fill=white] (12mm, 20mm) circle[radius=4mm];\n");
printf("          \\filldraw[fill=white] (20mm, 20mm) circle[radius=4mm];\n");
printf("        \\end{scope}\n");
printf("        \\begin{scope}[xshift=90mm]\n");
printf("          \\filldraw[fill=\\cola] (0, 0) rectangle (24mm, 24mm);\n");
printf("          \\filldraw[fill=white] ( 3mm,  3mm) circle[radius=3mm];\n");
printf("          \\filldraw[fill=white] ( 9mm,  3mm) circle[radius=3mm];\n");
printf("          \\filldraw[fill=white] (15mm,  3mm) circle[radius=3mm];\n");
printf("          \\filldraw[fill=white] (21mm,  3mm) circle[radius=3mm];\n");
printf("          \\filldraw[fill=white] ( 3mm,  9mm) circle[radius=3mm];\n");
printf("          \\filldraw[fill=white] ( 9mm,  9mm) circle[radius=3mm];\n");
printf("          \\filldraw[fill=white] (15mm,  9mm) circle[radius=3mm];\n");
printf("          \\filldraw[fill=white] (21mm,  9mm) circle[radius=3mm];\n");
printf("          \\filldraw[fill=white] ( 3mm, 15mm) circle[radius=3mm];\n");
printf("          \\filldraw[fill=white] ( 9mm, 15mm) circle[radius=3mm];\n");
printf("          \\filldraw[fill=white] (15mm, 15mm) circle[radius=3mm];\n");
printf("          \\filldraw[fill=white] (21mm, 15mm) circle[radius=3mm];\n");
printf("          \\filldraw[fill=white] ( 3mm, 21mm) circle[radius=3mm];\n");
printf("          \\filldraw[fill=white] ( 9mm, 21mm) circle[radius=3mm];\n");
printf("          \\filldraw[fill=white] (15mm, 21mm) circle[radius=3mm];\n");
printf("          \\filldraw[fill=white] (21mm, 21mm) circle[radius=3mm];\n");
printf("        \\end{scope}\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    %% </OUTLINE>\n");
printf("  %%\\fi\n");
printf("  %%\\ifoutcome\\outcome\\par\n");
printf("    %% <OUTCOME>\n");
printf("    %% </OUTCOME>\n");
printf("  %%\\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

