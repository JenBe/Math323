%%function: f(z) = z^4- 10z^3+35z^2-50z+24
A = [1 -10 35 -50 24];
x0= 1;
Tol= 10^(-8);
[roots]=Deflation(A,x0,25,Tol);
roots