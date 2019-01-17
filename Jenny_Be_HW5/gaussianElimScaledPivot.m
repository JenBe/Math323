%%Gaussian Elimination with Scaled Partial Pivots and Backward Substitution
%%Input: augmented matrix A
%%Output: column vector of the solution
function [x]= gaussianElimScaledPivot(A)
[n,m]=size(A); x=zeros(n,1);
%find S
for r=1:n
    S(r)=max(abs(A(r,:)));
end
%GE: find first nonzero element in column
for i=1:n;
    p=isempty(A(i:n,i)); %row # for first
    if p==1
        fprintf('No unique solution.\n')
        return
    end
    
    %find the largest a/S
    for q=i:n
        p2(q)=abs(A(q,i)/S(q));
    end
    p3=max(p2);
    p1=find(p2==p3);
    
    if p1~=i;
        %row swapping
        temp=A(i,:);
        A(i,:)=A(p1,:);
        A(p1,:)=temp;
        %S swapping
        tempS=S(i);
        S(i)=S(p1);
        S(p1)=tempS;
    end
    %elmination
    for j=i+1:n
        m=A(j,i)/A(i,i);
        A(j,:)=A(j,:)-(m*A(i,:));
    end
    p2(:)=0; %reset p2
end

if isempty(A(n,n))==1
    fprintf('No unique solution.\n')
    return
else
    %backward substitution
    x(n)=(A(n,n+1))/(A(n,n));
    for k=n-1:-1:1
        s=0;
        for l=k+1:n
            s=s+(A(k,l)*x(l));
        end
        x(k)=(A(k,n+1)-s)/A(k,k);
    end
end
