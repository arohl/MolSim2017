# gnuplot instructions

# pdf output
set terminal pdf

# plot energy time-series
# file name
set output 'energy.pdf'
# position of figure legend
set key out horiz center top
# title
set title "Energy vs Timesteps"
# specify axis ranges (if desired)
#set xrange [0:1.0]
#set yrange [0:1.0]
# axis labels
set xlabel "Timestep/100"
set ylabel "Energy"
# put unlabelled tics on opposite side of plot border
set xtics mirror
set ytics mirror
# set line/point style(ls) 1: colour(lc), type(lt), width(lt), point type(pt) and point size(ps)
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.0
# plot data
plot 'energy.dat' with linespoints ls 1

# plot temperature time-series
# file name
set output 'temperature.pdf'
# position of figure legend
set key out horiz center top
# title
set title "Temperature vs Timesteps"
# specify axis ranges (if desired)
#set xrange [0:1.0]
#set yrange [0:1.0]
# axis labels
set xlabel "Timestep/100"
set ylabel "Temperature"
# put unlabelled tics on opposite side of plot border
set xtics mirror
set ytics mirror
# set line/point style(ls) 1: colour(lc), type(lt), width(lt), point type(pt) and point size(ps)
set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.0
# plot data
plot 'temperature.dat' with linespoints ls 1

## reference info for setting line style:
#     set style line <index> default
#     set style line <index> {{linetype  | lt} <line_type> | <colorspec>}
#                            {{linecolor | lc} <colorspec>}
#                            {{linewidth | lw} <line_width>}
#                            {{pointtype | pt} <point_type>}
#                            {{pointsize | ps} <point_size>}
#                            {palette}
