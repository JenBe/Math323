%%Euler Method 
%%Input: f(function handle), a,b(lower,upper bound), alpha (initial condition), N(number of
%%steps)
%%Output:t(column vector),w(column vector)
function [t,w] = euler(f,a,b,alpha,N)
h=(b-a)/N; %h=step size
t=zeros(N,1);
w=zeros(N,1);
w(1)=alpha;
for i=1:N+1
    t(i)=a+h*(i-1);
end
for j=2:N+1
    w(j)=w(j-1)+h*f(t(j-1),w(j-1));
end


