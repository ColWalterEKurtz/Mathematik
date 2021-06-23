clear all;

addpath 'Octave/';

breite  = 1.2;
flaeche = 8.1;
laenge  = flaeche / breite;

ins_breite  = sprintf("%.2f", breite);
ins_flaeche = sprintf("%.1f", flaeche);
ins_laenge  = sprintf("%.2f", laenge);

printf("\\begin{exercise}\n");
printf("      {ID-d848d92104626e00eca4d41c34ad16ae7126df90}\n");
printf("      {Blumenbeet}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Neben einem Weg befindet sich ein \\simeter{%s} breiter Wiesenstreifen. Darauf\n", ins_breite);
printf("    soll ein Blumenbeet mit einer Gesamtfläche von \\simm{%s} angelegt werden.\n", ins_flaeche);
printf("    Wie lang wird das Beet?\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    Um die geplante Gesamtfläche von \\simm{%s} zu erreichen, muss\n", ins_flaeche);
printf("    das Blumenbeet eine Länge von \\simeter{%s} bekommen.\n", ins_laenge);
printf("  \\fi\n");
printf("\\end{exercise}\n");

