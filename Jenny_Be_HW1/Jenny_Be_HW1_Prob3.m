f= @(x) 600*x^4 - 550*x^3 + 200*x^2 - 20*x -1;
x0 = 0.1;
x1 = 1;
M = 30;
Tol = 10^(-8);
[x, fx, ite]=secant(f,x0,x1,M,Tol);
fprintf('[%9.8f, %3.2e, %d]', x, fx, ite)