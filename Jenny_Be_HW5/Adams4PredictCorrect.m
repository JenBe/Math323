%Using Adams-Bashforth 4-step explicit method and Adams-Moulton 3-step
%implicit method to approximate the solution to IVP
%Inputs: f(function handle), a,b (lower/upper limit), alpha (f(a)),
%N(number of steps)
%Outputs:t (column vector for t(i)), w (column vector for w(i))
function [t,w] = Adams4PredictCorrect(f,a,b,alpha,N)
h=(b-a)/N;

%use RungeKutta4 to get w1,w2,w3
[t,w]=RungeKutta4(f,a,b,alpha,N);
for i=4:N
%approximate w(i) with A-B 4 step
    w(i+1)=w(i)+(h/24)*(55*f(t(i),w(i))-59*f(t(i-1),w(i-1))+37*f(t(i-2),w(i-2))-9*f(t(i-3),w(i-3)));
%correction with A-M 3 step
    w(i+1)=w(i)+(h/24)*(9*f(t(i+1),w(i+1))+19*f(t(i),w(i))-5*f(t(i-1),w(i-1))+f(t(i-2),w(i-2)));
end
