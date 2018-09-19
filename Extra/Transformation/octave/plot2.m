function plot2(x, y1, y2, xmin, xmax, ymin, ymax)

  figure;

  plot(x, y1, x, y2);

  axis("equal");

  set( gca(), 
       "box",                "off",
       "xlim",               [xmin, xmax],
       "ylim",               [ymin, ymax],
       "xgrid",              "on",
       "ygrid",              "on",
       "gridlinestyle",      ":",
       "minorgridlinestyle", "--",
       "linewidth",          0.5,
       "xaxislocation",      "zero",
       "yaxislocation",      "zero",
       "visible",            "on"
     );

endfunction

