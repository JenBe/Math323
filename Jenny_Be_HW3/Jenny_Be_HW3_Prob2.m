f= @(x) (sin(x))^2-2.*x.*sin(x)+1;
a=0.75;
b=1.3;
l=trapezoidal(f,a,b)
i=-0.020376; % integral of f from .75 to 1.3
error= abs(i-l)