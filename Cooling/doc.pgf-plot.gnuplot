set table "doc.pgf-plot.table"; set format "%.5f"
set format "%.7e";; A = 90; C = 23; B = 0.1; a = 0.045; b = 0.005; f(x) = (A - C) * exp(-a * x) + C; g(x) = B * exp(-b * x); h(x) = f(x) + g(x); fit f(x) 'data.txt' u ($0 * 5 / 60):1 via A,C,a; plot [x=0:45] f(x); plot [x=0:45] h(x); 
