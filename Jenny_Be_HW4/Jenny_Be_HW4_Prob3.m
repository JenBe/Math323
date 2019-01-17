f=@(t,y) (2-2.*t.*y)./(t.^2+1);
a=1; b=2;
alpha=1.5;
N=10;
[t,w]=euler(f,a,b,alpha,N);
F=@(t) ((2.*t)+1)./((t.^2)+1);
error=zeros(length(t),1);
fprintf('\ni:\t\tt(i)\tapproximation:\tabsolute error:\n')
for i=1:length(t)
    error(i)=abs(w(i)-F(t(i)));
    fprintf('%d\t\t%2.1f\t\t%6.5f\t\t\t%6.5f\n', i-1,t(i),w(i),error(i))
end
