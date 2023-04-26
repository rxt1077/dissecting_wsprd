set terminal svg
set output "candidates.svg"

set datafile separator ','
set key off
set title "Candidates"
set xlabel "Frequency (Hz)"
set ylabel "SNR"

set label "0: 2.93 Hz, -1.0 dB" at 2.929688,340
set label "1: -10.99 Hz, -5.9 dB" at -10.986328,110
set label "2: -53.47 Hz, -8.5 dB" at -53.466797,65
set label "3: 86.43 Hz, -10.66 dB" at 86.425781 - 40,50

# index=0 freq=2.929688 snr=-1.020897
# index=1 freq=-10.986328 snr=-5.870845
# index=2 freq=-53.466797 snr=-8.514095
# index=3 freq=86.425781 snr=-10.655240
# index=4 freq=-39.550781 snr=-14.824939
# index=5 freq=30.029297 snr=-18.309950
# index=6 freq=17.578125 snr=-20.642868
# index=7 freq=94.482422 snr=-25.315132
# index=8 freq=-99.609375 snr=-33.305218
# index=9 freq=-95.947266 snr=-33.418915

plot [-100:100] "wsprd/smspec-snr-0.csv" using 1:2 with lines
