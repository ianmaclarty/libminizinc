% RUNS ON mzn20_fd
% RUNS ON mzn20_fd_linear

% Test for bug #337 but with mod rather than div.

array[1..2] of var bool: x;
var 0..0: y;
constraint not(x[1 mod y]);
solve satisfy;
output [
    "x = array1d(1..2, ", show(x), ";\n",
    "y = ", show(y), ";\n"
];
