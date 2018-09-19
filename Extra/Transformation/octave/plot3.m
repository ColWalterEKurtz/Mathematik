function plot3(x, y1, y2, y3, xmin, xmax, ymin, ymax)

  figure;

  plot(x, y1, x, y2, x, y3);

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

