clear all;

addpath 'Octave/';

laenge  = 15;
breite  = 8;
abstand = 2;
band    = 2 * (laenge + 2 * abstand) + 2 * (breite + 2 * abstand);

ins_laenge  = sprintf("%d", laenge);
ins_breite  = sprintf("%d", breite);
ins_abstand = sprintf("%d", abstand);
ins_band    = sprintf("%d", band);

printf("\\begin{exercise}\n");
printf("      {ID-593c7b82d074b6d6c8944ec01e45f107162e029f}\n");
printf("      {Absperrband}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Ein Bauherr soll seine Baugrube von \\simeter{%s} Länge und \\simeter{%s} Breite\n", ins_laenge, ins_breite);
printf("    durch ein Band absichern. Wie viel Meter Band braucht er, wenn er es im\n");
printf("    Abstand von \\simeter{%s} zur Grube anbringen will?\n", ins_abstand);
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    Wenn das Absperrband in einem Abstand von \\simeter{%s} zur Baugrube angebracht\n", ins_abstand);
printf("    werden soll, dann muss es \\simeter{%s} lang sein.\n", ins_band);
printf("  \\fi\n");
printf("\\end{exercise}\n");

