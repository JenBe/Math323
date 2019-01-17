%%Horner's Algorithm. Input: vector of coefficients (a) and point of
%%evaluation (z0) Output: fp = f(z0) and fprimeP = f'(z0)
function [fp, fprimeP]=HornerAlg(a,z0)
[b,r]=Horner(a,z0); %%first Horner's Method to find fp
fp=r;
[bb,r] = Horner(b,z0);
%%second Horner's Method to find fprimeP
fprimeP=r;