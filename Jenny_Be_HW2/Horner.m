%%Horner's method(synthetic division) Input: coefficient vector of the
%%function (a) and the point of evaluation (z0) Output: vector of
%%coefficients for the quotiently (b) and the remainder (r)
function [b,r] = Horner(a,z0)
n = length(a);
b = zeros(1,n-1); %b have the length of a-1
b(1)= a(1); % first coefficient the same
for i= 2:n-1
    b(i) = a(i) + z0*b(i-1);
end
%finding the remainder
if n==1 
	r=a(1);
	else
	r=a(n)+b(n-1)*z0;
end