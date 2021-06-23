clear all;

addpath 'Octave/';

%%% NO CALCULATIONS YET %%%

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
printf("      \\begin{alignat*}{13}\n");
printf("        \\tri{a)}{3}{4}{5}\n");
printf("        \\quad&\\quad\n");
printf("        \\tri{d)}{29}{21}{20}\n");
printf("        \\\\\n");
printf("        \\tri{b)}{6}{7}{8}\n");
printf("        \\quad&\\quad\n");
printf("        \\tri{e)}{6.5}{9.7}{7.2}\n");
printf("        \\\\\n");
printf("        \\tri{c)}{8}{17}{15}\n");
printf("        \\quad&\\quad\n");
printf("        \\tri{f)}{5.3}{2.8}{4.6}\n");
printf("      \\end{alignat*}\n");
printf("    \\endgroup\n");
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

rmpath 'Octave/';

