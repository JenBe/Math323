
alpha=8;
f=@(t,x) -0.6*pi*(0.1)^2*sqrt(2*32.1)*sqrt(x)/(pi.*x.^2);

%part a: find the water lvl after 600seconds
a=0; b=600;
h=20;
N=(b-a)/20;
[t,w]=Adams4PredictCorrect(f,a,b,alpha,N);
w(N+1)

%part b: when will the tank be empty
[T,W]=Adams4PredictCorrect(f,0,1800,8,90);
z=find(abs(W)<0.5,1);
m=T(z);
m=ceil(m/60)