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

printf("\\begin{exercise}\n");
printf("      {ID-a73d8600ba60329bc9f19f3d89589618a1cb2e30}\n");
printf("      {Oberflächentemperatur}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    %% <PROBLEM>\n");
printf("    An einem Tag im Frühherbst wird die\n");
printf("    Oberflächentemperatur eines Sees gemessen.\n");
printf("    Der Temperaturverlauf kann annähernd durch\n");
printf("    die Funktion $O$ mit\n");
printf("    \\begin{equation*}\n");
printf("    O(t)=-\\frac{1}{300}t^3+\\num{0.12}t^2-\\num{1.08}t+\\num{19}\n");
printf("    \\qquad\n");
printf("    0\\leq t\\leq24\\text{ in \\si{\\hour}, $O(t)$ in \\si{\\celsius}}\n");
printf("    \\end{equation*}\n");
printf("    modelliert werden. Die folgende Abbildung zeigt den zugehörigen\n");
printf("    Graphen:\n");
printf("    \\begin{center}\n");
printf("    %%<OCTAVE>\n");
printf("    \\begin{tikzpicture}[scale=0.400]\n");
printf("      %% grid\n");
printf("      \\draw[draw=black!50!white] (0.000, 0.000) grid[step=0.5] (24.000, 24.000);\n");
printf("      %% x-axis\n");
printf("      \\draw[line width=0.6pt, ->, >=stealth] (0.000, 0) -- (24.000, 0) node[below left] {\\small$t$};\n");
printf("      %% x-axis scale\n");
printf("      \\draw ( 1, 5pt) -- ( 1, -5pt) node[below]{1};\n");
printf("      \\draw ( 2, 5pt) -- ( 2, -5pt) node[below]{2};\n");
printf("      \\draw ( 3, 5pt) -- ( 3, -5pt) node[below]{3};\n");
printf("      \\draw ( 4, 5pt) -- ( 4, -5pt);\n");
printf("      \\draw ( 5, 5pt) -- ( 5, -5pt);\n");
printf("      \\draw ( 6, 5pt) -- ( 6, -5pt) node[below]{6};\n");
printf("      \\draw ( 7, 5pt) -- ( 7, -5pt);\n");
printf("      \\draw ( 8, 5pt) -- ( 8, -5pt);\n");
printf("      \\draw ( 9, 5pt) -- ( 9, -5pt);\n");
printf("      \\draw (10, 5pt) -- (10, -5pt);\n");
printf("      \\draw (11, 5pt) -- (11, -5pt);\n");
printf("      \\draw (12, 5pt) -- (12, -5pt) node[below]{12};\n");
printf("      \\draw (13, 5pt) -- (13, -5pt);\n");
printf("      \\draw (14, 5pt) -- (14, -5pt);\n");
printf("      \\draw (15, 5pt) -- (15, -5pt);\n");
printf("      \\draw (16, 5pt) -- (16, -5pt);\n");
printf("      \\draw (17, 5pt) -- (17, -5pt);\n");
printf("      \\draw (18, 5pt) -- (18, -5pt) node[below]{18};\n");
printf("      \\draw (19, 5pt) -- (19, -5pt);\n");
printf("      \\draw (20, 5pt) -- (20, -5pt);\n");
printf("      \\draw (21, 5pt) -- (21, -5pt);\n");
printf("      \\draw (22, 5pt) -- (22, -5pt);\n");
printf("      \\draw (23, 5pt) -- (23, -5pt);\n");
printf("      %% y-axis\n");
printf("      \\draw[line width=0.6pt, ->, >=stealth] (0, 0.000) -- (0, 24.000) node[below left] {\\small${}^\\circ C$};\n");
printf("      %% y-axis scale\n");
printf("      \\draw (5pt,  1) -- (-5pt,  1) node[left]{1};\n");
printf("      \\draw (5pt,  2) -- (-5pt,  2) node[left]{2};\n");
printf("      \\draw (5pt,  3) -- (-5pt,  3) node[left]{3};\n");
printf("      \\draw (5pt,  4) -- (-5pt,  4);\n");
printf("      \\draw (5pt,  5) -- (-5pt,  5) node[left]{5};\n");
printf("      \\draw (5pt,  6) -- (-5pt,  6);\n");
printf("      \\draw (5pt,  7) -- (-5pt,  7);\n");
printf("      \\draw (5pt,  8) -- (-5pt,  8);\n");
printf("      \\draw (5pt,  9) -- (-5pt,  9);\n");
printf("      \\draw (5pt, 10) -- (-5pt, 10) node[left]{10};\n");
printf("      \\draw (5pt, 11) -- (-5pt, 11);\n");
printf("      \\draw (5pt, 12) -- (-5pt, 12);\n");
printf("      \\draw (5pt, 13) -- (-5pt, 13);\n");
printf("      \\draw (5pt, 14) -- (-5pt, 14);\n");
printf("      \\draw (5pt, 15) -- (-5pt, 15) node[left]{15};\n");
printf("      \\draw (5pt, 16) -- (-5pt, 16);\n");
printf("      \\draw (5pt, 17) -- (-5pt, 17);\n");
printf("      \\draw (5pt, 18) -- (-5pt, 18);\n");
printf("      \\draw (5pt, 19) -- (-5pt, 19);\n");
printf("      \\draw (5pt, 20) -- (-5pt, 20) node[left]{20};\n");
printf("      \\draw (5pt, 21) -- (-5pt, 21);\n");
printf("      \\draw (5pt, 22) -- (-5pt, 22);\n");
printf("      \\draw (5pt, 23) -- (-5pt, 23);\n");
printf("      %% function: f(x)=-\\num{0.0033333}x^{3}+\\num{0.12}x^{2}-\\num{1.08}x+\\num{19}\n");
printf("      \\begin{scope}[line width=0.7pt]\n");
printf("        \\clip (0.000, 0.000) rectangle (24.000, 24.000);\n");
printf("        \\draw plot[smooth] coordinates\n");
printf("        {\n");
printf("          (  0.000,  19.000) (  0.100,  18.893) (  0.200,  18.789)\n");
printf("          (  0.300,  18.687) (  0.400,  18.587) (  0.500,  18.490)\n");
printf("          (  0.600,  18.394) (  0.700,  18.302) (  0.800,  18.211)\n");
printf("          (  0.900,  18.123) (  1.000,  18.037) (  1.100,  17.953)\n");
printf("          (  1.200,  17.871) (  1.300,  17.791) (  1.400,  17.714)\n");
printf("          (  1.500,  17.639) (  1.600,  17.566) (  1.700,  17.494)\n");
printf("          (  1.800,  17.425) (  1.900,  17.358) (  2.000,  17.293)\n");
printf("          (  2.100,  17.230) (  2.200,  17.169) (  2.300,  17.110)\n");
printf("          (  2.400,  17.053) (  2.500,  16.998) (  2.600,  16.945)\n");
printf("          (  2.700,  16.893) (  2.800,  16.844) (  2.900,  16.796)\n");
printf("          (  3.000,  16.750) (  3.100,  16.706) (  3.200,  16.664)\n");
printf("          (  3.300,  16.623) (  3.400,  16.584) (  3.500,  16.547)\n");
printf("          (  3.600,  16.512) (  3.700,  16.478) (  3.800,  16.446)\n");
printf("          (  3.900,  16.415) (  4.000,  16.387) (  4.100,  16.359)\n");
printf("          (  4.200,  16.334) (  4.300,  16.310) (  4.400,  16.287)\n");
printf("          (  4.500,  16.266) (  4.600,  16.247) (  4.700,  16.229)\n");
printf("          (  4.800,  16.212) (  4.900,  16.197) (  5.000,  16.183)\n");
printf("          (  5.100,  16.171) (  5.200,  16.160) (  5.300,  16.151)\n");
printf("          (  5.400,  16.142) (  5.500,  16.135) (  5.600,  16.130)\n");
printf("          (  5.700,  16.125) (  5.800,  16.122) (  5.900,  16.121)\n");
printf("          (  6.000,  16.120) (  6.100,  16.121) (  6.200,  16.122)\n");
printf("          (  6.300,  16.125) (  6.400,  16.129) (  6.500,  16.135)\n");
printf("          (  6.600,  16.141) (  6.700,  16.148) (  6.800,  16.157)\n");
printf("          (  6.900,  16.166) (  7.000,  16.177) (  7.100,  16.188)\n");
printf("          (  7.200,  16.201) (  7.300,  16.214) (  7.400,  16.228)\n");
printf("          (  7.500,  16.244) (  7.600,  16.260) (  7.700,  16.277)\n");
printf("          (  7.800,  16.295) (  7.900,  16.314) (  8.000,  16.333)\n");
printf("          (  8.100,  16.354) (  8.200,  16.375) (  8.300,  16.397)\n");
printf("          (  8.400,  16.420) (  8.500,  16.443) (  8.600,  16.467)\n");
printf("          (  8.700,  16.492) (  8.800,  16.517) (  8.900,  16.543)\n");
printf("          (  9.000,  16.570) (  9.100,  16.597) (  9.200,  16.625)\n");
printf("          (  9.300,  16.654) (  9.400,  16.683) (  9.500,  16.712)\n");
printf("          (  9.600,  16.742) (  9.700,  16.773) (  9.800,  16.803)\n");
printf("          (  9.900,  16.835) ( 10.000,  16.867) ( 10.100,  16.899)\n");
printf("          ( 10.200,  16.931) ( 10.300,  16.964) ( 10.400,  16.998)\n");
printf("          ( 10.500,  17.031) ( 10.600,  17.065) ( 10.700,  17.099)\n");
printf("          ( 10.800,  17.134) ( 10.900,  17.168) ( 11.000,  17.203)\n");
printf("          ( 11.100,  17.238) ( 11.200,  17.274) ( 11.300,  17.309)\n");
printf("          ( 11.400,  17.345) ( 11.500,  17.380) ( 11.600,  17.416)\n");
printf("          ( 11.700,  17.452) ( 11.800,  17.488) ( 11.900,  17.524)\n");
printf("          ( 12.000,  17.560) ( 12.100,  17.596) ( 12.200,  17.632)\n");
printf("          ( 12.300,  17.668) ( 12.400,  17.704) ( 12.500,  17.740)\n");
printf("          ( 12.600,  17.775) ( 12.700,  17.811) ( 12.800,  17.846)\n");
printf("          ( 12.900,  17.882) ( 13.000,  17.917) ( 13.100,  17.952)\n");
printf("          ( 13.200,  17.986) ( 13.300,  18.021) ( 13.400,  18.055)\n");
printf("          ( 13.500,  18.089) ( 13.600,  18.122) ( 13.700,  18.156)\n");
printf("          ( 13.800,  18.189) ( 13.900,  18.221) ( 14.000,  18.253)\n");
printf("          ( 14.100,  18.285) ( 14.200,  18.317) ( 14.300,  18.347)\n");
printf("          ( 14.400,  18.378) ( 14.500,  18.408) ( 14.600,  18.437)\n");
printf("          ( 14.700,  18.466) ( 14.800,  18.495) ( 14.900,  18.523)\n");
printf("          ( 15.000,  18.550) ( 15.100,  18.577) ( 15.200,  18.603)\n");
printf("          ( 15.300,  18.628) ( 15.400,  18.653) ( 15.500,  18.677)\n");
printf("          ( 15.600,  18.700) ( 15.700,  18.723) ( 15.800,  18.745)\n");
printf("          ( 15.900,  18.766) ( 16.000,  18.787) ( 16.100,  18.806)\n");
printf("          ( 16.200,  18.825) ( 16.300,  18.843) ( 16.400,  18.860)\n");
printf("          ( 16.500,  18.876) ( 16.600,  18.892) ( 16.700,  18.906)\n");
printf("          ( 16.800,  18.919) ( 16.900,  18.932) ( 17.000,  18.943)\n");
printf("          ( 17.100,  18.954) ( 17.200,  18.963) ( 17.300,  18.972)\n");
printf("          ( 17.400,  18.979) ( 17.500,  18.985) ( 17.600,  18.991)\n");
printf("          ( 17.700,  18.995) ( 17.800,  18.998) ( 17.900,  18.999)\n");
printf("          ( 18.000,  19.000) ( 18.100,  18.999) ( 18.200,  18.998)\n");
printf("          ( 18.300,  18.995) ( 18.400,  18.990) ( 18.500,  18.985)\n");
printf("          ( 18.600,  18.978) ( 18.700,  18.969) ( 18.800,  18.960)\n");
printf("          ( 18.900,  18.949) ( 19.000,  18.937) ( 19.100,  18.923)\n");
printf("          ( 19.200,  18.908) ( 19.300,  18.891) ( 19.400,  18.873)\n");
printf("          ( 19.500,  18.854) ( 19.600,  18.833) ( 19.700,  18.810)\n");
printf("          ( 19.800,  18.786) ( 19.900,  18.761) ( 20.000,  18.733)\n");
printf("          ( 20.100,  18.705) ( 20.200,  18.674) ( 20.300,  18.642)\n");
printf("          ( 20.400,  18.608) ( 20.500,  18.573) ( 20.600,  18.536)\n");
printf("          ( 20.700,  18.497) ( 20.800,  18.456) ( 20.900,  18.414)\n");
printf("          ( 21.000,  18.370) ( 21.100,  18.324) ( 21.200,  18.276)\n");
printf("          ( 21.300,  18.227) ( 21.400,  18.175) ( 21.500,  18.122)\n");
printf("          ( 21.600,  18.067) ( 21.700,  18.010) ( 21.800,  17.951)\n");
printf("          ( 21.900,  17.890) ( 22.000,  17.827) ( 22.100,  17.762)\n");
printf("          ( 22.200,  17.695) ( 22.300,  17.626) ( 22.400,  17.554)\n");
printf("          ( 22.500,  17.481) ( 22.600,  17.406) ( 22.700,  17.329)\n");
printf("          ( 22.800,  17.249) ( 22.900,  17.167) ( 23.000,  17.083)\n");
printf("          ( 23.100,  16.997) ( 23.200,  16.909) ( 23.300,  16.818)\n");
printf("          ( 23.400,  16.726) ( 23.500,  16.630) ( 23.600,  16.533)\n");
printf("          ( 23.700,  16.433) ( 23.800,  16.331) ( 23.900,  16.227)\n");
printf("          ( 24.000,  16.120)\n");
printf("        };\n");
printf("      \\end{scope}\n");
printf("    \\end{tikzpicture}\n");
printf("    %%</OCTAVE>\n");
printf("    %%f = [-1/300 0.12 -1.08 19];\n");
printf("    %%mypolyplot(f, 0, 24, 0, 24);\n");
printf("    \\end{center}\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Berechnen Sie die Oberflächentemperatur des Sees\n");
printf("            zu Beginn und am Ende des Beobachtungszeitraums.\n");
printf("      \\item Berechnen Sie\n");
printf("            \\begin{equation*}\n");
printf("              O(12)-O(0)\n");
printf("              \\qquad\n");
printf("              \\frac{O(12)-O(0)}{12-0}\n");
printf("              \\qquad\n");
printf("              \\text{sowie}\n");
printf("              \\qquad\n");
printf("              O'(12)\n");
printf("            \\end{equation*}\n");
printf("            und deuten Sie diese Ausdrüche im gegebenen\n");
printf("            Sachkontext.\n");
printf("      \\item Ermitteln Sie den Zeitpunkt der maximalen Temperatur\n");
printf("            sowie die maximale Temperatur selbst.\n");
printf("      \\item Berechnen Sie die Zeitpunkte, zu denen die Temperatur\n");
printf("            des Sees am stärksten ansteigt bzw. am stärksten fällt.\n");
printf("      \\item Begründen Sie, weshalb sich die Funktion $O$ nicht eignet,\n");
printf("            um die Temperaturentwicklung der Oberfläche des Sees am\n");
printf("            folgenden Tag zu beschreiben.\n");
printf("    \\end{enumerate}\n");
printf("    %% </PROBLEM>\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("    %% <OUTLINE>\n");
printf("    %%</OUTLINE>\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome%%\\par\n");
printf("    %% <OUTCOME>\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Die Temperatur ergibt sich durch das\n");
printf("            Einsetzen der Zeitpunkte in die\n");
printf("            Funktion $O$:\n");
printf("            \\begin{equation*}\n");
printf("              %%<OCTAVE>\n");
printf("              O(0)=\\num{19}\\,{}^\\circ C\n");
printf("              \\qquad\n");
printf("              O(24)=\\num{16.12}\\,{}^\\circ C\n");
printf("              %%</OCTAVE>\n");
printf("              %%f = [-1/300 0.12 -1.08 19];\n");
printf("              %%printf(\"O(0)=%%s\\\\,{}^\\\\circ C\\n\", myn2s(polyval(f, 0), 7,0,0,0,1));\n");
printf("              %%printf(\"\\\\qquad\\n\");\n");
printf("              %%printf(\"O(24)=%%s\\\\,{}^\\\\circ C\\n\", myn2s(polyval(f, 24), 7,0,0,0,1));\n");
printf("            \\end{equation*}\n");
printf("      \\item Der Ausdruck\n");
printf("            \\begin{equation*}\n");
printf("              %%<OCTAVE>\n");
printf("              O(\\num{12})-O(\\num{0})=\\num{17.56}\\si{\\celsius}-\\num{19}\\si{\\celsius}=-\\num{1.44}\\si{\\celsius}\n");
printf("              %%</OCTAVE>\n");
printf("              %%f   = [-1/300 0.12 -1.08 19];\n");
printf("              %%t1  = 0;\n");
printf("              %%t2  = 12;\n");
printf("              %%c1  = polyval(f, t1);\n");
printf("              %%c2  = polyval(f, t2);\n");
printf("              %%dc  = c2 - c1;\n");
printf("              %%t1s = myn2s(t1, 7,0,0,0,1);\n");
printf("              %%t2s = myn2s(t2, 7,0,0,0,1);\n");
printf("              %%c1s = myn2s(c1, 7,0,0,0,1);\n");
printf("              %%c2s = myn2s(c2, 7,0,0,0,1);\n");
printf("              %%dcs = myn2s(dc, 7,0,0,0,1);\n");
printf("              %%dim = \"\\\\si{\\\\celsius}\";\n");
printf("              %%printf(\"O(%%s)-O(%%s)=%%s%%s-%%s%%s=%%s%%s\\n\", ...\n");
printf("              %%       t2s, ...\n");
printf("              %%       t1s, ...\n");
printf("              %%       c2s, ...\n");
printf("              %%       dim, ...\n");
printf("              %%       c1s, ...\n");
printf("              %%       dim, ...\n");
printf("              %%       dcs, ...\n");
printf("              %%       dim);\n");
printf("            \\end{equation*}\n");
printf("            beschreibt die absolute Temperaturänderung\n");
printf("            der Oberfläche des Sees von 0:00\\,Uhr bis\n");
printf("            12:00\\,Uhr in ${}^\\circ{C}$.\n");
printf("            \\par\n");
printf("            Der Ausdruck\n");
printf("            \\begin{equation*}\n");
printf("              %%<OCTAVE>\n");
printf("              \\frac{O(\\num{12})-O(\\num{0})}{\\num{12}-\\num{0}}=\n");
printf("              \\frac{\\num{17.56}\\si{\\celsius}-\\num{19}\\si{\\celsius}}{\\num{12}\\si{\\hour}-\\num{0}\\si{\\hour}}=\n");
printf("              \\frac{-\\num{1.44}\\si{\\celsius}}{\\num{12}\\si{\\hour}}=\n");
printf("              -\\num{0.12}\\si[per-mode=symbol]{\\celsius\\per\\hour}\n");
printf("              %%</OCTAVE>\n");
printf("              %%f    = [-1/300 0.12 -1.08 19];\n");
printf("              %%t1   = 0;\n");
printf("              %%t2   = 12;\n");
printf("              %%c1   = polyval(f, t1);\n");
printf("              %%c2   = polyval(f, t2);\n");
printf("              %%dt   = t2 - t1;\n");
printf("              %%dc   = c2 - c1;\n");
printf("              %%res  = (c2 - c1) / (t2 - t1);\n");
printf("              %%t1s  = myn2s(t1, 7,0,0,0,1);\n");
printf("              %%t2s  = myn2s(t2, 7,0,0,0,1);\n");
printf("              %%c1s  = myn2s(c1, 7,0,0,0,1);\n");
printf("              %%c2s  = myn2s(c2, 7,0,0,0,1);\n");
printf("              %%dts  = myn2s(dt, 7,0,0,0,1);\n");
printf("              %%dcs  = myn2s(dc, 7,0,0,0,1);\n");
printf("              %%ress = myn2s(res, 7,0,0,0,1);\n");
printf("              %%dimc = \"\\\\si{\\\\celsius}\";\n");
printf("              %%dimt = \"\\\\si{\\\\hour}\";\n");
printf("              %%dimr = \"\\\\si[per-mode=symbol]{\\\\celsius\\\\per\\\\hour}\";\n");
printf("              %%printf(\"\\\\frac{O(%%s)-O(%%s)}{%%s-%%s}=\\n\", ...\n");
printf("              %%       t2s,  ...\n");
printf("              %%       t1s,  ...\n");
printf("              %%       t2s,  ...\n");
printf("              %%       t1s);\n");
printf("              %%printf(\"\\\\frac{%%s%%s-%%s%%s}{%%s%%s-%%s%%s}=\\n\", ...\n");
printf("              %%       c2s,  ...\n");
printf("              %%       dimc, ...\n");
printf("              %%       c1s,  ...\n");
printf("              %%       dimc, ...\n");
printf("              %%       t2s,  ...\n");
printf("              %%       dimt, ...\n");
printf("              %%       t1s,  ...\n");
printf("              %%       dimt);\n");
printf("              %%printf(\"\\\\frac{%%s%%s}{%%s%%s}=\\n\", ...\n");
printf("              %%       dcs,  ...\n");
printf("              %%       dimc, ...\n");
printf("              %%       dts,  ...\n");
printf("              %%       dimt);\n");
printf("              %%printf(\"%%s%%s\\n\", ...\n");
printf("              %%       ress, ...\n");
printf("              %%       dimr);\n");
printf("            \\end{equation*}\n");
printf("            beschreibt im Intervall von 0:00 Uhr bis\n");
printf("            12:00 Uhr die durchschnittliche\n");
printf("            Temperaturänderung der Oberfläche des\n");
printf("            Sees in \\si{\\celsius} pro Stunde.\n");
printf("            \\par\n");
printf("            Der Ausdruck\n");
printf("            \\begin{equation*}\n");
printf("              %%<OCTAVE>\n");
printf("              O'(\\num{12})=-\\num{0.01}\\cdot\\num{12}^{2}+\\num{0.24}\\cdot\\num{12}-\\num{1.08}=\n");
printf("              \\num{0.36}\\si[per-mode=symbol]{\\celsius\\per\\hour}\n");
printf("              %%</OCTAVE>\n");
printf("              %%f    = [-1/300 0.12 -1.08 19];\n");
printf("              %%df   = polyder(f);\n");
printf("              %%t    = 12;\n");
printf("              %%c    = polyval(df, t);\n");
printf("              %%ts   = myn2s(t, 7,0,0,0,1);\n");
printf("              %%cs   = myn2s(c, 7,0,0,0,1);\n");
printf("              %%xs   = myn2s(t, 7,0,0,0,1);\n");
printf("              %%dfxs = mypolystr(df, xs, [7,0,0,0,1]);\n");
printf("              %%dim  = \"\\\\si[per-mode=symbol]{\\\\celsius\\\\per\\\\hour}\";\n");
printf("              %%printf(\"O'(%%s)=%%s=\\n\", ts, dfxs);\n");
printf("              %%printf(\"%%s%%s\", cs, dim);\n");
printf("            \\end{equation*}\n");
printf("            beschreibt die momentane Temperaturänderung\n");
printf("            der Oberfläche des Sees um 12:00 Uhr in\n");
printf("            \\si{\\celsius} pro Stunde.\n");
printf("      \\item Um die maximale Temperatur innerhalb\n");
printf("            des gegebenen Intervalls zu finden,\n");
printf("            wird zunächst die erste Ableitung\n");
printf("            benötigt:\n");
printf("            \\begin{equation*}\n");
printf("              %%<OCTAVE>\n");
printf("              O'(t)=-\\num{0.01}t^{2}+\\num{0.24}t-\\num{1.08}\n");
printf("              %%</OCTAVE>\n");
printf("              %%f  = [-1/300 0.12 -1.08 19];\n");
printf("              %%df = polyder(f);\n");
printf("              %%printf(\"O'(t)=%%s\\n\", mypolystr(df, \"t\", [7,0,0,0,1]));\n");
printf("            \\end{equation*}\n");
printf("            In den Extrempunkten von $O$ innerhalb des\n");
printf("            Intervalls sind die Tangenten horizontal,\n");
printf("            also müssen jetzt die Nullstellen von $O'$\n");
printf("            gesucht werden:\n");
printf("            \\begin{alignat*}{3}\n");
printf("              \\relax&\\quad\n");
printf("              &\n");
printf("              0&=-\\num{0.01}t^{2}+\\num{0.24}t-\\num{1.08}\n");
printf("              &\n");
printf("              \\quad&|\\cdot(-100)\n");
printf("              \\\\\n");
printf("              \\Leftrightarrow&\\quad\n");
printf("              &\n");
printf("              0&=t^{2}-24t+108\n");
printf("              &\n");
printf("              \\quad&|\\;\\text{$pq$-Formel}\n");
printf("              \\\\\n");
printf("              \\Leftrightarrow&\\quad\n");
printf("              &\n");
printf("              t_{1,2}&=-\\frac{-24}{2}\\pm\\sqrt{\\left(\\frac{-24}{2}\\right)^2-108}\n");
printf("              &\n");
printf("              \\quad&\\relax\n");
printf("              \\\\\n");
printf("              \\relax&\\quad\n");
printf("              &\n");
printf("              &=12\\pm\\sqrt{144-108}\n");
printf("              &\n");
printf("              \\quad&\\relax\n");
printf("              \\\\\n");
printf("              \\relax&\\quad\n");
printf("              &\n");
printf("              &=12\\pm\\sqrt{36}=12\\pm6\n");
printf("              &\n");
printf("              \\quad&\\relax\n");
printf("              \\\\\n");
printf("              \\Leftrightarrow&\\quad\n");
printf("              &\n");
printf("              t&=6\\;\\lor\\;t=18\n");
printf("              &\n");
printf("              \\quad&\\relax\n");
printf("            \\end{alignat*}\n");
printf("            Wenn an einer Nullstelle der Ableitung das\n");
printf("            Vorzeichen von $+$ nach $-$ wechselt, dann\n");
printf("            besitzt die abgeleitete Funktion an dieser\n");
printf("            Stelle ein Maximum.\n");
printf("            \\begin{equation*}\n");
printf("              %%<OCTAVE>\n");
printf("              O'(\\num{0})=-\\num{1.08}\n");
printf("              \\qquad\n");
printf("              O'(\\num{12})=\\num{0.36}\n");
printf("              \\qquad\n");
printf("              O'(\\num{24})=-\\num{1.08}\n");
printf("              %%</OCTAVE>\n");
printf("              %%f   = [-1/300 0.12 -1.08 19];\n");
printf("              %%df  = polyder(f);\n");
printf("              %%t1  = 0;\n");
printf("              %%t2  = 12;\n");
printf("              %%t3  = 24;\n");
printf("              %%y1  = polyval(df, t1);\n");
printf("              %%y2  = polyval(df, t2);\n");
printf("              %%y3  = polyval(df, t3);\n");
printf("              %%t1s = myn2s(t1, 7,0,0,0,1);\n");
printf("              %%t2s = myn2s(t2, 7,0,0,0,1);\n");
printf("              %%t3s = myn2s(t3, 7,0,0,0,1);\n");
printf("              %%y1s = myn2s(y1, 7,0,0,0,1);\n");
printf("              %%y2s = myn2s(y2, 7,0,0,0,1);\n");
printf("              %%y3s = myn2s(y3, 7,0,0,0,1);\n");
printf("              %%printf(\"O'(%%s)=%%s\\n\", t1s, y1s);\n");
printf("              %%printf(\"\\\\qquad\\n\");\n");
printf("              %%printf(\"O'(%%s)=%%s\\n\", t2s, y2s);\n");
printf("              %%printf(\"\\\\qquad\\n\");\n");
printf("              %%printf(\"O'(%%s)=%%s\\n\", t3s, y3s);\n");
printf("            \\end{equation*}\n");
printf("            Offensichtlich wechselt das Vorzeichen\n");
printf("            zwischen $t=12$ und $t=24$ (also bei\n");
printf("            $t=18$) vom positiven in den negativen\n");
printf("            Bereich. Das Maximum innerhalb des\n");
printf("            vorgegebenen Intervalls liegt also\n");
printf("            bei $t=18$.\n");
printf("            Die Temperatur zu diesem Zeitpunkt\n");
printf("            beträgt $O(18)=\\SI{19}{\\celsius}$.\n");
printf("            %%f = [-1/300 0.12 -1.08 19];\n");
printf("            %%polyval(f, 18)\n");
printf("            \\par\n");
printf("            Da der Definitionsbereich dieser\n");
printf("            Aufgabe aus einem abgeschlossenen\n");
printf("            Intervall besteht, können Extremwerte\n");
printf("            auch an den Rändern dieses Intervalls\n");
printf("            auftreten, ohne dass das notwendige\n");
printf("            Kriterium für lokale Extrema dort\n");
printf("            erfüllt sein muss.\n");
printf("            Deshalb ist es erforderlich, die\n");
printf("            Randwerte zusätzlich zu berechnen\n");
printf("            und zu prüfen.\n");
printf("            In Aufgabenteil a) sind die Randwerte\n");
printf("            ja bereits berechnet worden:\n");
printf("            \\begin{equation*}\n");
printf("              O(0)=\\num{19}\\,{}^\\circ C\n");
printf("              \\qquad\n");
printf("              O(24)=\\num{16.12}\\,{}^\\circ C\n");
printf("            \\end{equation*}\n");
printf("            Die Oberfläche des Sees erreicht also um\n");
printf("            0:00 Uhr und um 18:00 Uhr eine\n");
printf("            Maximaltemperatur von \\SI{19}{\\celsius}.\n");
printf("      \\item Gesucht sind in diesem Aufgabenteil\n");
printf("            die Extrempunkte der ersten Ableitung\n");
printf("            $O'$. Auch hier müssen wieder die\n");
printf("            Randwerte des Intervalls berücksichtigt\n");
printf("            werden.\n");
printf("            Die zweite Ableitung lautet:\n");
printf("            \\begin{equation*}\n");
printf("              %%<OCTAVE>\n");
printf("              O''(t)=-\\num{0.02}t+\\num{0.24}\n");
printf("              %%</OCTAVE>\n");
printf("              %%f   = [-1/300 0.12 -1.08 19];\n");
printf("              %%df  = polyder(f);\n");
printf("              %%d2f = polyder(df);\n");
printf("              %%printf(\"O''(t)=%%s\\n\", mypolystr(d2f, \"t\", [7,0,0,0,1]));\n");
printf("            \\end{equation*}\n");
printf("            Die einzige Nullstelle dieser linearen\n");
printf("            Funktion erhält man durch einfache\n");
printf("            Äquivalenzumformungen:\n");
printf("            \\begin{alignat*}{3}\n");
printf("              \\relax&\\quad\n");
printf("              &\n");
printf("              0&=-\\num{0.02}t+\\num{0.24}\n");
printf("              &\n");
printf("              \\quad&|+\\num{0.02}t\n");
printf("              \\\\\n");
printf("              \\Leftrightarrow&\\quad\n");
printf("              &\n");
printf("              \\num{0.02}t&=\\num{0.24}\n");
printf("              &\n");
printf("              \\quad&|\\cdot100\n");
printf("              \\\\\n");
printf("              \\Leftrightarrow&\\quad\n");
printf("              &\n");
printf("              \\num{2}t&=\\num{24}\n");
printf("              &\n");
printf("              \\quad&|:2\n");
printf("              \\\\\n");
printf("              \\Leftrightarrow&\\quad\n");
printf("              &\n");
printf("              t&=12\n");
printf("              &\n");
printf("              \\quad&\\relax\n");
printf("            \\end{alignat*}\n");
printf("            Da die Gerade eine negative Steigung\n");
printf("            besitzt, wechselt das Vorzeichen\n");
printf("            von $O''$ an der Stelle $t=12$ von\n");
printf("            \\textit{positiv} nach \\textit{negativ}.\n");
printf("            Die Funktion $O'$ besitzt also an\n");
printf("            dieser Stelle ein lokales Maximum.\n");
printf("            \\par\n");
printf("            Zusammen mit den beiden Randwerten müssen also\n");
printf("            folgende lokale Änderungsraten miteiander\n");
printf("            verglichen werden:\n");
printf("            \\begin{equation*}\n");
printf("              %%<OCTAVE>\n");
printf("              O'(\\num{0})=-\\num{1.08}\n");
printf("              \\qquad\n");
printf("              O'(\\num{12})=\\num{0.36}\n");
printf("              \\qquad\n");
printf("              O'(\\num{24})=-\\num{1.08}\n");
printf("              %%</OCTAVE>\n");
printf("              %%f   = [-1/300 0.12 -1.08 19];\n");
printf("              %%df  = polyder(f);\n");
printf("              %%t1  = 0;\n");
printf("              %%t2  = 12;\n");
printf("              %%t3  = 24;\n");
printf("              %%y1  = polyval(df, t1);\n");
printf("              %%y2  = polyval(df, t2);\n");
printf("              %%y3  = polyval(df, t3);\n");
printf("              %%t1s = myn2s(t1, 7,0,0,0,1);\n");
printf("              %%t2s = myn2s(t2, 7,0,0,0,1);\n");
printf("              %%t3s = myn2s(t3, 7,0,0,0,1);\n");
printf("              %%y1s = myn2s(y1, 7,0,0,0,1);\n");
printf("              %%y2s = myn2s(y2, 7,0,0,0,1);\n");
printf("              %%y3s = myn2s(y3, 7,0,0,0,1);\n");
printf("              %%printf(\"O'(%%s)=%%s\\n\", t1s, y1s);\n");
printf("              %%printf(\"\\\\qquad\\n\");\n");
printf("              %%printf(\"O'(%%s)=%%s\\n\", t2s, y2s);\n");
printf("              %%printf(\"\\\\qquad\\n\");\n");
printf("              %%printf(\"O'(%%s)=%%s\\n\", t3s, y3s);\n");
printf("            \\end{equation*}\n");
printf("            Im Beobachtungszeitraum steigt die\n");
printf("            Oberflächentemperatur des Sees also\n");
printf("            um 12:00 Uhr am stärksten an, und\n");
printf("            sowohl um 0:00 Uhr am Anfang und am\n");
printf("            Ende des Tages fällt sie am stärksten ab.\n");
printf("      \\item Vermutlich wird sich die Temperatur\n");
printf("            des Sees am folgenden Tag in ähnlicher\n");
printf("            Weise entwickeln, wie am Tag der\n");
printf("            Beobachtung selbst.\n");
printf("            Allerdings liefert $O'$ nach $t=18$\n");
printf("            ausschließlich negative Werte, d.\\,h.\n");
printf("            die Funktion $O$ fällt ab diesem\n");
printf("            Zeitpunkt nur noch.\n");
printf("            Am Ende des zweiten Tages würde die\n");
printf("            Oberflächentemperatur des Sees bei\n");
printf("            $O(48)=\\SI{-125}{\\celsius}$ liegen.\n");
printf("            %%f = [-1/300 0.12 -1.08 19];\n");
printf("            %%polyval(f, 48)\n");
printf("    \\end{enumerate}\n");
printf("    %% </OUTCOME>\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

%%% rmpath 'Octave/';

