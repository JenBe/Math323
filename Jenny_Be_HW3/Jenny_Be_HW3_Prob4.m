f= @(x) x.*log(x+1);
a=-0.5;
b=0.5;
n=200;
l=compositeMidpoint(f,a,b,n)