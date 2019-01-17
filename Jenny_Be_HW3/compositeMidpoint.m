%%Composite Midpoint method for integrals
%%Input: f (function), a (lower limit), b (upper limit), n (even integer)
%%Output: l (approx value)
function [l]=compositeMidpoint(f,a,b,n)
h=(b-a)/(n+2);
fx=0;
for i=0:(n/2)
x=a+(2*i+1)*h;
fx=fx+f(x);
end
l=2*h*fx;