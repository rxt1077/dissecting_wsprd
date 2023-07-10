set terminal svg
set output "reference.svg"

set datafile separator ','
set key autotitle columnhead
set title "Reference Signal"
set xlabel "i"
set ylabel "refi[i] (real value)"
plot [0:256] "wsprd/reference.csv" using 1:2 with lines
