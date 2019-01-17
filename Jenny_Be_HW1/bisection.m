%%This function is used for programming project 1 problem 1. Input:
%%function f, interval (a,b), number of iteration, machine zero. Output:
%%solution (p), f(p), and number of iterations.

function [p, fp, ite] = bisection(f, a, b, M, Tol)
ite = 0;
while ite <= M
    p = a + ((b-a)/2); %midpoint of a&b
    fp = f(p);
    fa = f(a);
    if abs(b-a) < Tol %p is the solution
        break; %ends algorithm
    else
        if sign(fp) == sign(fa) % solution is not in (a,p)
            a = p;
        else  % solution is in (a,p)
            b = p;
        end
    ite = ite +1; %ite++
    end
end

if ite > M %say something if not done in given max ite
    fprintf('Method failed.')
end

        