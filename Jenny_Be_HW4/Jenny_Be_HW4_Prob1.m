f= @(x,y) 2.*y.*sin(x)+(cos(x)).^(2);
a=0; b=pi/4; 
c=@(x) sin(x); d=@(x) cos(x);
i=compSimpson2D(f,a,b,c,d,4,8)
ii=compSimpson2D(f,a,b,c,d,8,4)
iii=compSimpson2D(f,a,b,c,d,6,6)
