%%Composite Simpson Method in finding area under a curve
%%Input: f (function handle), a (lower limit), b (upper limit), n (even integer)
%%Output: l (approx. value)
function [l]=compositeSimpson(f,a,b,n)
h=(b-a)/n;
fab=f(a)+f(b); %end points
fx1=0;fx2=0;
for i=1:(n/2) %odd index
    x=a+(2*i-1)*h;
    fx1=fx1+f(x);
    end
for j=1:(n/2)-1 %even index
    x=a+(2*j)*h;
    fx2=fx2+f(x);
    end
l=(h/3)*(fab+(4*fx1)+(2*fx2));