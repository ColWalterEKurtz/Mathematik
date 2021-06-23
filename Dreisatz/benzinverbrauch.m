clear all;

% gegebene Werte
autos = 13;   % aktuelle Anzahl der Autos
liter = 6175; % aktueller monatlicher Benzinverbrauch
mehr  = 2;    % Anzahl der zusaetzlichen Autos

% neuer monatlicher Benzinverbrauch mit den zusaetzlichen Autos
verbrauch = (liter / autos) * (autos + mehr);

% formatierte Werte
ins_autos     = sprintf("%d", autos);
ins_liter     = sprintf("%d", liter);
ins_mehr      = sprintf("%d", mehr);
ins_verbrauch = sprintf("%d", verbrauch);

printf("\\begin{exercise}\n");
printf("      {ID-2480e2de1706107affcb468b45543b806217e030}\n");
printf("      {Benzinverbrauch}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    \\num{%s} Autos verbrauchen monatlich \\sil{%s} Benzin. Es werden \\num{%s} weitere Autos\n", ins_autos, ins_liter, ins_mehr);
printf("    gekauft. Wie hoch ist jetzt der monatliche Benzinverbrauch?\n");
printf("  \\fi\n");
printf("  %%\\ifoutline\\outline\\par\n");
printf("  %%\\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    Insgesamt beträgt der monatliche Benzinverbrauch aller Farzeuge jetzt \\sil{%s}.\n", ins_verbrauch);
printf("  \\fi\n");
printf("\\end{exercise}\n");

