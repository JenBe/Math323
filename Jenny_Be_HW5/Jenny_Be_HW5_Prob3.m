A=[3.3330 15920 10.333 7953;
   2.2220 16.710 9.6120 0.965;
   -1.5611 5.1792 -1.6855 2.714];
fprintf('\nPart(A):\n')
GE= gaussianElim(A)
GESPP=gaussianElimScaledPivot(A)

fprintf('Part(B):\n')
fprintf('Since the augmented matrix haves elements with large difference in values, \nthe Gaussian Elimination with Scaled Partial Pivoting is more accurate.\n')