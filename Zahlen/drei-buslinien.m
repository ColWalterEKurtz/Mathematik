clear all;

addpath 'Octave/';

% -------------
% get_time_list
% -------------
%
% start  start time (minutes of day)
% stop   stop time (minutes of day)
% span   timespan in minutes
%
function list = get_time_list(start, stop, span)

  list = "";
  sep = "";

  n = 0;
  while ((start * 60 + n * span) < (stop * 60))

    if (n > 0)

      if ((start * 60 + (n + 1) * span) < (stop * 60))

        sep = ", ";

      else

        sep = " und ";

      endif

    endif

    nextmin = start * 60 + n * span;

    list = sprintf("%s%s%02d:%02d Uhr", list, sep, (nextmin / 60), mod(nextmin, 60));

    n += 1;

  endwhile

endfunction

bus1h  = 1;
bus1m  = 30;
bus2h  = 1;
bus2m  = 50;
bus3h  = 1;
bus3m  = 10;
pause  = 10;
start  = 6;
ende   = 22;
% Minuten total
bus1tm = bus1h * 60 + bus1m + pause;
bus2tm = bus2h * 60 + bus2m + pause;
bus3tm = bus3h * 60 + bus3m + pause;
% KgV
bus12  = lcm(bus1tm, bus2tm);
bus23  = lcm(bus2tm, bus3tm);
bus123 = lcm(bus12, bus23);

ins_bus1h = sprintf("%d", bus1h);
ins_bus1m = sprintf("%d", bus1m);
ins_bus2h = sprintf("%d", bus2h);
ins_bus2m = sprintf("%d", bus2m);
ins_bus3h = sprintf("%d", bus3h);
ins_bus3m = sprintf("%d", bus3m);
ins_pause = sprintf("%d", pause);
ins_start = sprintf("%d", start);
ins_ende = sprintf("%d", ende);
ins_bus1tm = sprintf("%d", bus1tm);
ins_bus2tm = sprintf("%d", bus2tm);
ins_bus3tm = sprintf("%d", bus3tm);
ins_bus12 = sprintf("%d", bus12);
ins_bus23 = sprintf("%d", bus23);
ins_bus123 = sprintf("%d", bus123);
ins_bus12uhr  = get_time_list(start, ende, bus12);
ins_bus23uhr  = get_time_list(start, ende, bus23);
ins_bus123uhr = get_time_list(start, ende, bus123);

printf("\\begin{exercise}\n");
printf("      {ID-c5b39ea16827187dcc3c7a2fdcc009495a327bff}\n");
printf("      {Drei Buslinien}\n");
printf("  \\ifproblem\\problem\\par\n");
printf("    Um 6 Uhr morgens starten drei Busse gleichzeitig vom Bahnhof einer Stadt.\n");
printf("    Sie fahren bis spätestens 22 Uhr abends.\\par\n");
printf("    Für eine Runde benötigt\n");
printf("    der  erste   Bus %s Stunde und %s Minuten,\n", ins_bus1h, ins_bus1m);
printf("    der  zweite  Bus %s Stunde und %s Minuten und\n", ins_bus2h, ins_bus2m);
printf("    der  dritte  Bus %s Stunde und %s Minuten.\n", ins_bus3h, ins_bus3m);
printf("    Nach jeder Runde machen sie %s Minuten Pause.\n", ins_pause);
printf("    Wann starten\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\squeeze\n");
printf("      \\item der erste und der zweite Bus\n");
printf("      \\item der zweite und der dritte Bus\n");
printf("      \\item alle drei Busse\n");
printf("    \\end{enumerate}\n");
printf("    wieder gleichzeitig vom Bahnhof?\n");
printf("  \\fi\n");
printf("  \\ifoutline\\outline\\par\n");
printf("    Bestimme die gemeinsamen Vielfache der jeweiligen Fahrzeiten.\n");
printf("  \\fi\n");
printf("  \\ifoutcome\\outcome\\par\n");
printf("    Wenn man die Fahrzeiten in Minuten umrechnet, und die Pausen berücksichtigt,\n");
printf("    starten die drei Busse in folgenden Abständen jeweils wieder vom Bahnhof:\n");
printf("    \\begin{itemize}\n");
printf("      \\squeeze\n");
printf("      \\item der erste Bus: %s Minuten\n", ins_bus1tm);
printf("      \\item der zweite Bus: %s Minuten\n", ins_bus2tm);
printf("      \\item der dritte Bus: %s Minuten\n", ins_bus3tm);
printf("    \\end{itemize}\n");
printf("    Die gemeinsamen Vielfache der jeweiligen Zeitspannen geben an,\n");
printf("    wann die Busse (wieder) geichzeitig vom Bahnhof starten:\n");
printf("    \\begin{equation*}\n");
printf("      \\begin{split}\n");
printf("        \\text{a) }&\\operatorname{kgV}(100, 120)=%s\\\\\n", ins_bus12);
printf("        \\text{b) }&\\operatorname{kgV}(120, 80)=%s\\\\\n", ins_bus23);
printf("        \\text{c) }&\\operatorname{kgV}(80, 100, 120)=%s\n", ins_bus123);
printf("      \\end{split}\n");
printf("    \\end{equation*}\n");
printf("    Umgerechnet in Uhrzeiten ergeben sich folgende gemeinsame Startzeitpunkte:\n");
printf("    \\begin{enumerate}[a)]\n");
printf("      \\item \\makebox[7em][l]{Bus 1 und 2:} %s\n", ins_bus12uhr);
printf("      \\item \\makebox[7em][l]{Bus 2 und 3:} %s\n", ins_bus23uhr);
printf("      \\item \\makebox[7em][l]{Bus 1, 2 und 3:} %s\n", ins_bus123uhr);
printf("    \\end{enumerate}\n");
printf("  \\fi\n");
printf("\\end{exercise}\n");

rmpath 'Octave/';

