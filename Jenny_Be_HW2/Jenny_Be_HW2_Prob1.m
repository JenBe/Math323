%%function f(z)=z^4-4z^3+7z^2-5z-2
a = [ 1 -4 7 -5 -2];
z0= 3;
[b,r]=Horner(a,z0);
b,r
