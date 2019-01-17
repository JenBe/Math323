%%Gaussian Elimination
%%Input: augmented matrix (A)
%%Output: solution as a column vector

function [x] = gaussianElim(A)
[n,m]=size(A); x=zeros(n,1);
%GE: find first nonzero element in column
for i=1:n;
    p=isempty(A(i:n,i)); %row # for first
    if p==1
        fprintf('No unique solution.\n')
        return
    end
    p1=find(A(i:n,i),1);
    if p1~=1;
        %row swapping
        temp=A(i,:);
        A(i,:)=A(p1+i,:);
        A(p1+i,:)=temp;
        
    end
    %elmination
    for j=i+1:n
        m=A(j,i)/A(i,i);
        A(j,:)=A(j,:)-(m*A(i,:));
    end
end

if isempty(A(n,n))==1
    fprintf('No unique solution.\n')
    return
else
    x(n)=(A(n,n+1))/(A(n,n));
    for k=n-1:-1:1
        s=0;
        for l=k+1:n
            s=s+(A(k,l)*x(l));
        end
        x(k)=(A(k,n+1)-s)/A(k,k);
    end
end
