%%Richardson's Extrapolation
%%Input: f= function handle for f(x), x0= # for f'(x), h= initial step, m =
%%# of extrapolation to apply
%%Output:the approx. value of Nm(h)
function [Nm]=richardsonFD(f,x0,h,m)
N=zeros(m,m);
for i=1:m
    N(i,1)= (f(x0+h)-f(x0))/(h);
    h=h/2;
end
for k=2:m %column
      for j=k:m %row
        a=N(j,(k-1)); b=N((j-1),(k-1));
        N(j,k)=a+((a-b)/((2^(k-1))-1));
    end
end
Nm=N(m,m);