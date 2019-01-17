%%Trapezoidal method in finding area under a curve
%%Input: f (function handle), a (lower limit), b (upper limit)
%%Output: l (approx value of integral)
function [l]=trapezoidal(f,a,b)
h=b-a;
l=((f(a)+f(b))*h)/2;