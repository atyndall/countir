set tmargin 0
set bmargin 2
set lmargin 3
set rmargin 3

set term tikz monochrome dashed size 5in,7.5in font ",9"
set style func linespoints
set style data lines

# line styles
set style line 1 lt 1 lc rgb '#1B9E77' # dark teal
set style line 2 lt 1 lc rgb '#D95F02' # dark orange
set style line 3 lt 1 lc rgb '#7570B3' # dark lilac
set style line 4 lt 1 lc rgb '#E7298A' # dark magenta
set style line 5 lt 1 lc rgb '#66A61E' # dark lime green
set style line 6 lt 1 lc rgb '#E6AB02' # dark banana
set style line 7 lt 1 lc rgb '#A6761D' # dark tan
set style line 8 lt 1 lc rgb '#666666' # dark gray

# palette
set palette maxcolors 8
set palette defined ( 0 '#1B9E77',\
    	    	      1 '#D95F02',\
		      2 '#7570B3',\
		      3 '#E7298A',\
		      4 '#66A61E',\
		      5 '#E6AB02',\
		      6 '#A6761D',\
		      7 '#666666' )


set style line 102 lc rgb'#808080' lt 0 lw 1
set grid back ls 102

unset xtics
unset ytics

set multiplot layout 5,1 font ",12"

set key autotitle column nobox samplen 1 noenhanced
unset title
set style data boxes


set datafile separator ","
set xrange[2:50]
set yrange[26:36]
set y2range[26:36]


set ylabel "0.5 Hz"
set tics scale 0 font ",8"
set format y ""
set y2tics nomirror

plot 'noise-graph-05.csv' using 1:2 notitle with lines ls 5, \
	'' using 1:3 notitle  with lines ls 4

set ylabel ""
set y2label "1 Hz"
set tics scale 0 font ",8"
set format y "%.0f"
unset y2tics

plot 'noise-graph-1.csv' using 1:2 notitle with lines ls 5, \
	'' using 1:3 notitle  with lines ls 4

set ylabel "2 Hz"
set y2label ""
set tics scale 0 font ",8"
set format y ""
set y2tics nomirror

plot 'noise-graph-2.csv' using 1:2 notitle with lines ls 5, \
	'' using 1:3 notitle  with lines ls 4

set ylabel ""
set y2label "4 Hz"
set tics scale 0 font ",8"
set format y "%.0f"
unset y2tics

plot 'noise-graph-4.csv' using 1:2 notitle with lines ls 5, \
	'' using 1:3 notitle  with lines ls 4

set ylabel "8 Hz"
set y2label ""
set tics scale 0 font ",8"
set format y ""
set y2tics nomirror
set format x ""

plot 'noise-graph-8.csv' using 1:2 notitle with lines ls 5, \
	'' using 1:3 notitle  with lines ls 4


unset multiplot