f=@(t,y) (sin(2.*t)-2.*t.*y)/(t.^2);
F=@(t) (4+cos(2)-cos(2*t))/(2.*t.^2);
a=1;b=2;
alpha=2; N=10;

%Part A: Euler's Method
[te,we]=euler(f,a,b,alpha,N);
fprintf('Part A: Euler''s Method\n')
fprintf('i:\t\tt(i)\tapproximation:\tabsolute error:\n')
for i=1:N+1
    error=abs(we(i)-F(te(i)));
    fprintf('%d\t\t%2.1f\t\t%10.9f\t\t%10.9f\n', i-1,te(i),we(i),error)
end

%Part B: Runge Kutta4
[tr,wr]=RungeKutta4(f,a,b,alpha,N);
fprintf('\nPart B: Runge-Kutta Method of 4th Order\n')
fprintf('i:\t\tt(i)\tapproximation:\tabsolute error:\n')
for i=1:N+1
    error=abs(wr(i)-F(tr(i)));
    fprintf('%d\t\t%2.1f\t\t%10.9f\t\t%10.9f\n', i-1,tr(i),wr(i),error)
end
%Part C:
fprintf('\nPart C:')
fprintf('\nRunge-Kutta Method is more accurate because it requires four \nevaluations per step while Euler''s Method only requires one. \n')
