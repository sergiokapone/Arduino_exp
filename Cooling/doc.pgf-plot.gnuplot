set table "doc.pgf-plot.table"; set format "%.5f"
set format "%.7e";; A = 90; C = 23; B = 0.1; a = 0.045; alpha = 1; f(x) = (A - C) * exp(-a * x ** alpha) + C; fit f(x) 'data.txt' u ($0 * 5 / 60):1 via A,C,a,alpha; plot [x=0:45] f(x); 
