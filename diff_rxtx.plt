#!/usr/bin/gnuplot --persist
set format y "%3.1s%c"
set logscale x
now = strftime("%s", time(0))
set xtics ("1s" 1, "5s" 5, "1min" 60, "5min" 300, "30min" 1800, "1h" 3600, "2h" 7200)
set xrange [7200:1]
set yrange [0:]
plot '/tmp/rxtx.dat' using (now-$1):3 with lines title "upload speed", \
     '/tmp/rxtx.dat' using (now-$1):2 with lines title "download speed"
pause 1
reread
