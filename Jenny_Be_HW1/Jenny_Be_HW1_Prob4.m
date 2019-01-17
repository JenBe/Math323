f =@(x) 600.*x.^4 - 550.*x.^3 + 200.*x.^2 - 20.*x -1;
fprime =@(x) 2400.*x.^3 - 1650.*x.^2 + 400.*x -20;
a = 0.1;
b = 1;
M = 500;
Tol = 10^(-8);

fprintf('\t\t\t\t\t\t x*\t f(x*)\t\t# of iterations\n')
%prints bisection method
[p, fp, ite] = bisection(f,a,b,M,Tol);
fprintf('Bisection Method\t\t\t%9.8f\t%3.2e\t\t %d\n', p,fp,ite)
%prints Newton's Method
[x, fx, ite] = newton(f, fprime, (a+b)/2, M, Tol);
fprintf('Newton''s Method\t\t\t\t%9.8f\t%3.2e\t\t %d\n', x,fx,ite)
%prints Secant Method
[x, fx, ite] = secant(f,a,b,M,Tol);
fprintf('Secant Method\t\t\t\t%9.8f\t%3.2e\t\t %d\n', x,fx, ite)
%prints Method of False Position
[x, fx, ite] = falsePosition(f,a,b,M,Tol);
fprintf('Method of False Position\t\t%9.8f\t%3.2e\t\t %d\n', x,fx,ite)
%%advantages/disadvantages
fprintf('\nBisection Method, in terms of convergence and accuracy, is better than the Method of False Position.\nThe speed is slower than the secant method since it cuts the interval in half until it reaches the root.')
fprintf('\n\nNewton''s Method is the best out of the methods used since the algorithm finishes the fastest and haves \nthe most accurate result.A disadvantage to Newton''s Method would be having a poor choice in the initial \nestimate since it would require the algorithm to run more iterations.')
fprintf('\n\nSecant Method is relatively fast and more accurate compared to the Bisection Method. Although it does not \nrequire the derivative as Newton''s Method, it does not converge faster than it.')
fprintf('\n\nMethod of False Position haves no advantages to offset the large amount of iteration it requires to end the algorithm. ')