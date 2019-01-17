%%Composite Simpson for double integrals of a function dy dx
%%Input: f (function handle of integrand function), a,b (lower and upper limit of integration), c,d (function handles
%%of the lower and upper limit of integration), n,m (the number of points
%%used in 2D composite Simpson,n = x direction, m= y direction, **note:n,m have to be even**)
%%Output: l (approximate value of the double integral)
function [l]= compSimpson2D(f,a,b,c,d,n,m)
%checking n m value are even
if mod(n,2)~=0 
    fprintf('Invaild n value. n needs to be even.')
    return
elseif mod(m,2)~=0
        fprintf('Invaild m value. m needs to be even.')
        return
end
h=(b-a)/n; %constant
lend=0;leven=0;lodds=0;
for i=0:n
    x=a+i*h;
    syms y %fix the y variable
    F=@(y) f(x,y); %makes the function only in terms of y
    cc=c(x);dd=d(x);
    q=compositeSimpson(F,cc,dd,m);
    %sorting the terms for another compositeSimpson
    if i==0 || i==n
        lend=lend+q;
    elseif mod(i,2)==1
        lodds=lodds+q;
    elseif mod(i,2)==0
        leven=leven+q;
    end
end
l=h*(lend+2*leven+4*lodds)/3;