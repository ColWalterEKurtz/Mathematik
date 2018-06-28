clear all;

printf("\\begin{exercise}\n");
printf("      {ID-6c8c546cb9648cbc30d8e86ed3e67592bae4782b}\n");
printf("      {Pfahl im See}\n");
printf("  \\ifproblem\\problem\n");
printf("    Ein Pfahl steckt mit \\pc{30} seiner Länge im Grund eines Sees.\n");
printf("    \\pc{40} seiner Länge werden von Wasser umspült. \\sicm{45} schauen aus\n");
printf("    dem Wasser heraus. Wie lang ist der Pfahl?\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\n");
printf("    \\begin{center}\n");
printf("      \\begin{tikzpicture}\n");
printf("        %% Grund des Sees\n");
printf("        \\draw[draw=White,\n");
printf("              pattern=north east lines,\n");
printf("              pattern color=Black] (-15mm, -8mm) rectangle (15mm, 0mm);\n");
printf("        \\draw (-15mm, 0mm) -- (15mm, 0mm);\n");
printf("        %% Pfahl\n");
printf("        \\filldraw[draw= Black, fill=White] (-1mm, -4.5mm) rectangle (1mm, 10.5mm);\n");
printf("        %% Wasseroberfläche\n");
printf("        \\draw[decorate, decoration=bumps] (-15mm, 6mm) -- (15mm, 6mm);\n");
printf("        %% Bechriftung\n");
printf("        \\node[right] at (15mm, 10mm) {{\\small\\sicm{45}}};\n");
printf("        \\node[right] at (15mm,  3mm) {{\\small\\pc{40}}};\n");
printf("        \\node[right] at (15mm, -3mm) {{\\small\\pc{30}}};\n");
printf("      \\end{tikzpicture}\n");
printf("    \\end{center}\n");
printf("  \\fi\n");
printf("  %%\\ifoutcome\\outcome\n");
printf("  %%\\fi\n");
printf("\\end{exercise}\n");

