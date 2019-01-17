%%Newton's method in finding roots. Input: function(f), function
%%prime(fprime), initial estimate (0), max number of iteration (ite),
%%machine tolerance (Tol). Output: root (x), value at root (fx), number of
%%iteration (ite).
function [x,fx,ite]=newton(f,fprime,x0,M,Tol)
ite = 0;

while ite <=M
    f1 =f(x0);
    f2 =fprime(x0);
    x = x0-(f1/f2);
    if abs(x-x0) <= Tol %found x, and ends algorithm
        fx=f(x);
        break;
    end
    ite = ite+1;
    x0=x;
end

if ite > M %say something if not done in given max ite
    fprintf('Method failed.')
end

