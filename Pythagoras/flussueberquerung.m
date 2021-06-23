clear all;

addpath 'Octave/';

breite    = 180; % [m]
stroemung = 0.8; % [m/s]
ueberqmin = 5;   % [min]
versatz   = ueberqmin * 60 * stroemung;
strecke   = sqrt(breite^2 + versatz^2);

ins_breite    = sprintf("%d", breite);
ins_stroemung = sprintf("%d", stroemung);
ins_ueberqmin = sprintf("%d", ueberqmin);
ins_versatz   = sprintf("%d", versatz);
ins_strecke   = sprintf("%d", strecke);

printf("\\begin{exercise}\n");
printf("      {ID-fd325e2fe6b847b6ef5b134491116b8315221c14}\n");
printf("      {Flussüberquerung}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Ein Fluss ist \\simeter{%s} breit und hat eine Strömungsgeschwindigkeit\n", ins_breite);
printf("    $v=\\sims{%s}$. Um ihn zu überqueren braucht ein Schwimmer \\num{%s} Minuten.\n", ins_stroemung, ins_ueberqmin);
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item Um wie viel Meter wird der Schwimmer dabei seitlich abgetrieben?\n");
printf("      \\item Wie viel Meter hat der Schwimmer bei der Überquerung zurückgelegt?\n");
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item In \\num{%s} Minuten wird ein Schwimmer um \\simeter{%s} seitlich abgetrieben.\n", ins_ueberqmin, ins_versatz);
printf("      \\item Insgesammt legt der Schwimmer eine Strecke von \\simeter{%s} zurück.\n", ins_strecke);
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

