%%Runge Kutta Method
%%Input:f(function handle), a,b(lower/upper limits), alpha(inital value),
%%N(number of steps)
%%Output:t(column vector, time), w(column vector, approx vector)
function [t,w] = RungeKutta4(f,a,b,alpha,N)
h=(b-a)/N;
t=zeros(N+1,1);
w=zeros(N+1,1);
T=a; W=alpha;
for i=1:N+1
    K1=h*f(T,W)
    K2=h*f(T+h/2,W+K1/2)
    K3=h*f(T+h/2,W+K2/2)
    K4=h*f(T+h,W+K3)
    
    w(i)= W;
    W=W+((K1+2*K2+2*K3+K4)/6);
    t(i)=T;
    T=a+h*i;
end
