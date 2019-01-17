function [Qnn]=neville(xval,fval,x)
l=length(xval);
A=zeros(l);
A(:,1)=fval';
for i=2:l %column
	for j=i:l %row
		A(j,i)=(((x-xval(j-i+1))*A(j,i-1))-((x-xval(j))*A(j-1,i-1)))/(xval(j)-xval(j-i+1));
	end
	end
Qnn=A(l,l);