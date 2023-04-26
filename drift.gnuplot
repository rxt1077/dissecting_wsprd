set terminal svg
set output "drift.svg"

set key off
set datafile separator ','
set title "Sync Output vs Drift"
set xlabel "Drift (Hz)"
set ylabel "Sync"
plot "wsprd/drift.csv" using 1:2 with lines
