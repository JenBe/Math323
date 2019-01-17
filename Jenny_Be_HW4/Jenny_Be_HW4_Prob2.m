f=@(x,y) 2.*y.*sin(x)+(cos(x)).^2;
a=0; b=pi/4;
c=@(x) sin(x);
d=@(x) cos(x);

i=gaussianQuad2D(f,a,b,c,d,3,3)
ii=gaussianQuad2D(f,a,b,c,d,3,4)
iii=gaussianQuad2D(f,a,b,c,d,4,3)