f = @(x) sin(x) + cos(x) -2*x;
fprime = @(x) cos(x) - sin(x) - 2;
x0 = 0.5;
M = 500;
Tol = 10^(-8);
[x, fx, ite]=newton(f,fprime,x0,M,Tol);
fprintf('[%9.8f, %3.2e, %d]', x,fx,ite)