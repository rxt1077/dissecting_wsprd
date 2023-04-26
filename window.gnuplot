set terminal svg
set output "window.svg"

set datafile separator ','
set key autotitle columnhead
set title "Window for FFT"
set xlabel "i"
set ylabel "idat[i] (real value)"
set y2tics
set ytics nomirror
set y2label "w[i] (Hanning window)"
plot [0:512] "wsprd/window-0.csv" using 1:2 with lines, '' using 1:3 with lines axis x1y2, '' using 1:4 with lines
