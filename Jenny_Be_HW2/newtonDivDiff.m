%%Newton's Divided Difference: Input- xval= the values of x, fval= f(x)
%%Output- FF= the main diagonal of F
function [FF]=newtonDivDiff(xval,fval)
n = length(xval);
F=zeros(n); %creates matrix F
F(:,1)=fval';
for i=2:n
    for j=i:n
        F(j,i)=(F(j,i-1)-F(j-1,i-1))/(xval(j)-xval(j-i+1));
    end
end
FF=diag(F)';
end