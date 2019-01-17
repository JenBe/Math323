%%secant function used in programming hw1 problem 3 to find a root of a function. Input: function(f),
%%interval (x0,x1), max iteration (M), machine tolerance (Tol). Output:
%%root (x), value at f (fx), and number of iteration (ite)
function [x, fx, ite] = secant(f,x0,x1,M,Tol)
ite = 0;
f0= f(x0);
f1= f(x1);
while ite <=M
    x= x1-f1*(x1-x0)/(f1-f0);
    if abs(x-x1)<Tol %end alg.
        fx =f(x);
        break;
    else
        ite=ite+1; %ite++
        x0 = x1; f0=f(x0); %make x1 to new start pt
        x1 = x; f1= f(x1); %x becomes new end pt
    end
end
if ite > M %say something if not done in given max ite
    fprintf('Method failed.')
end
