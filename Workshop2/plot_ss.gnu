# gnuplot instructions

# pdf output
set terminal pdf

# plot energy time-series from SD
# file name
set output 'M27_NpT_prod_secStruct.pdf'
# position of figure legend
set key out horiz center top
# title
set title "Secondary Structure Content vs Time"
# specify axis ranges (if desired)
#set xrange [0:1.0]
#set yrange [0:1.0]
# axis labels
set xlabel "Time (ps)"
set ylabel "Occupancy (%)"
# put unlabelled tics on opposite side of plot border
set xtics mirror
set ytics mirror
# set line/point style(ls) 1: colour(lc), type(lt), width(lt), point type(pt) and point size(ps)
set style line 1 lc rgb '#000000' lt 1 lw 2 pt 7 ps 0.5 
set style line 2 lc rgb '#FF0000' lt 1 lw 2 pt 7 ps 0.5
set style line 3 lc rgb '#0000FF' lt 1 lw 2 pt 7 ps 0.5
set style line 4 lc rgb '#00FF00' lt 1 lw 2 pt 7 ps 0.5
set style line 5 lc rgb '#FF00FF' lt 1 lw 2 pt 7 ps 0.5
set style line 6 lc rgb '#00FFFF' lt 1 lw 2 pt 7 ps 0.5
set style line 7 lc rgb '#008000' lt 1 lw 2 pt 7 ps 0.5
# plot data
plot 'helixPercent.dat' with linespoints ls 1 title "alpha-helix", \
     'betaPercent.dat' with linespoints ls 2 title "beta-strand", \
     'extendedPercent.dat' with linespoints ls 3 title "extended", \
     'turnPercent.dat' with linespoints ls 4 title "turn", \
     'coilPercent.dat' with linespoints ls 5 title "coil", \
     'piPercent.dat' with linespoints ls 6 title "pi-helix", \
     '310Percent.dat' with linespoints ls 7 title "3-10 helix"
# make a key
#set key left bottom Left title 'Legend' box 3

