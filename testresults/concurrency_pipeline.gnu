reset
set title "Benchmark of concurrency 100, 1000, 5000 (pipelining)"
set boxwidth 1.8
set datafile separator ","
set style data histogram
set style histogram clustered gap 2
set style fill solid 0.7 border
set border lw 0.8

set ylabel "requests / second"
set xtics nomirror rotate by -45
set ytics nomirror

set border 1+2 back 
set boxwidth -2

set grid

set term pngcairo font "Times Roman,14"  enhanced size 1024,600 background rgb "gray80"
set output "../concurrency-pipeline.png"

plot 't_concurrency-pipeline.csv' using 2:xticlabels(1) title columnheader(2), '' using 3:xticlabels(1) title columnheader(3), '' using 4:xticlabels(1) title columnheader(4)
