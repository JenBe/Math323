f = @(x) exp(x)-x.^2+3.*x-2;
a = 0;
b = 1;
M = 500;
Tol = 10^(-8);
[p, fp, ite]=bisection(f,a,b,M,Tol);
fprintf('[%9.8f,%3.2e, %d]', p, fp, ite)