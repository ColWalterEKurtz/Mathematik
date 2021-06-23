clear all;

addpath 'Octave/';

wohnung       = 86.7;
wohnzimmerb   = 4.6;
wohnzimmerh   = 5.4;
schlafzimmerb = 4.6;
schlafzimmerh = 3.2;
kinderzimmerb = 4.2;
kinderzimmerh = 3.4;
kuecheb       = 4.1;
kuecheh       = 3.2;
rest = wohnung ...
     - wohnzimmerb * wohnzimmerh ...
     - schlafzimmerb * schlafzimmerh ...
     - 2 * kinderzimmerb * kinderzimmerh ...
     - kuecheb * kuecheh;

ins_wohnung       = sprintf("%.2f", wohnung);
ins_wohnzimmerb   = sprintf("%.2f", wohnzimmerb);
ins_wohnzimmerh   = sprintf("%.2f", wohnzimmerh);
ins_schlafzimmerb = sprintf("%.2f", schlafzimmerb);
ins_schlafzimmerh = sprintf("%.2f", schlafzimmerh);
ins_kinderzimmerb = sprintf("%.2f", kinderzimmerb);
ins_kinderzimmerh = sprintf("%.2f", kinderzimmerh);
ins_kuecheb       = sprintf("%.2f", kuecheb);
ins_kuecheh       = sprintf("%.2f", kuecheh);
ins_rest          = sprintf("%.2f", rest);

printf("\\begin{exercise}\n");
printf("      {ID-fc726dfa82169a546f92e23e421d1349fa6eee45}\n");
printf("      {Wohnung}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Die Wohnung im Erdgeschoss eines Hauses ist \\simm{%s} groß.\n", ins_wohnung);
printf("    Das Wohnzimmer hat die Abmessungen \\simeter{%s}$\\times$\\simeter{%s},\n", ins_wohnzimmerb, ins_wohnzimmerh);
printf("    das Schlafzimmer \\simeter{%s}$\\times$\\simeter{%s},\n", ins_schlafzimmerb, ins_schlafzimmerh);
printf("    die beiden Kinderzimmer je \\simeter{%s}$\\times$\\simeter{%s}\n", ins_kinderzimmerb, ins_kinderzimmerh);
printf("    und die Küche \\simeter{%s}$\\times$\\simeter{%s}.\n", ins_kuecheb, ins_kuecheh);
printf("    Der Rest entfällt auf den Flur und einen Abstellraum. Wie groß sind\n");
printf("    diese beiden Räume zusammen?\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    Der Flur und der Abstellraum sind zusammen \\simm{%s} groß.\n", ins_rest);
printf("  \\fi\n");
printf("\\end{exercise}\n");

