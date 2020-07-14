clear all;

addpath 'Octave/';

seitenlaenge = 18;
umfang       = 1.6;
anzahl       = (seitenlaenge / (umfang / 4))^2;

ins_seitenlaenge = sprintf("%d",   seitenlaenge);
ins_umfang       = sprintf("%.2f", umfang);
ins_anzahl       = sprintf("%d",   anzahl);

printf("\\begin{exercise}\n");
printf("      {ID-151c06b50154648b81e094133878376275a711b3}\n");
printf("      {Pausenhalle}\n");
printf("  \\ifproblem\\problem\n");
printf("    Der Boden einer quadratischen Pausenhalle von \\simeter{%s} Seitenlänge soll\n", ins_seitenlaenge);
printf("    mit quadratischen Platten belegt werden, von denen jede einen Umfang von\n");
printf("    \\simeter{%s} hat. Wie viele Platten werden benötigt?\n", ins_umfang);
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\n");
printf("    Es werden insgesamt \\num{%s} Platten benötigt.\n", ins_anzahl);
printf("  \\fi\n");
printf("\\end{exercise}\n");

