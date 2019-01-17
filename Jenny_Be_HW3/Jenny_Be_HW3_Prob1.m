f=@(x) x + exp(x);
f1=@(x) 1+exp(x);
x0=0;
h=0.4;
for i=1:3
    Nm=richardsonFD(f,x0,h,(2*i+1));
    error=abs(f1(x0)-Nm);
    fprintf('N%d(h)=%7.6f\t\tabsolute error=%7.6f\n',2*i+1,Nm,error)
end
