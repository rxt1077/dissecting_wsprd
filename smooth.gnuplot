set terminal svg
set output "smooth.svg"

set datafile separator ','
set key autotitle columnhead
set title "Smoothing the Power Spectrum"
set xlabel "i"
set ylabel "psavg"
set y2tics
set ytics nomirror
set y2label "smspec"
plot [0:512] "wsprd/psavg-0.csv" using 1:2 with lines, \
             "wsprd/smspec-0.csv" using ($1+50.5):2 with lines axis x1y2
