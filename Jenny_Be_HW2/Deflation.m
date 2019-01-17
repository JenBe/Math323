%%Deflation (Newtown's Method + Horner's Alg) Input: vector coefficients
%%(A), x0= estimate root, M = max iteration, Tol = machine precision Output:
%%roots
function [roots]=Deflation(A,x0,M,Tol)
AL=length(A)-1;
roots=zeros(1,AL); %makes the vector for the roots

for i=1:AL
    d = 1;
    ite=0;
    while d > Tol %find the root and stop
    while ite<M
        %finds the root: use Horner's Alg
        [fp,fprimeP]= HornerAlg(A,x0);
        x=x0-fp/fprimeP;
        d = abs(x-x0);
        x0=x; %set x as new x0 value
	ite=ite+1;
    end
    end
    roots(i)=x; %save to root vector
    [A,~]=Horner(A,roots(i)); %set A with the new vector of coefficients
end
end


