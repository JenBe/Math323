%%Method of false position function used to find root of a function in programming project 1 prob 4.
%%Input: function(f), interval (a,b), max iteration (M), machine tolerance
%%(Tol). Output: root (x), f(x) (fx), number of iteration (ite).
function [x,fx,ite] = falsePosition(f,a,b,M,Tol)
ite = 0;
fa = f(a);
fb = f(b);
while ite <= M
    x = b-((fb*(b-a))/(fb-fa));
    if abs(x-b) < Tol 
        break %end alg.
    end
    ite = ite+1; %ite++
    fx = f(x); %finds f(x)
    if sign(fx)~=sign(fb) %if the signs of f(x) & f(b) are different make a=b
        a=b;
        fa=fb;
    end
    b=x; %make x to be the new end point of interval
    fb=fx;
end
if ite > M %say something if not done in given max ite
    fprintf('Method failed.')
end
