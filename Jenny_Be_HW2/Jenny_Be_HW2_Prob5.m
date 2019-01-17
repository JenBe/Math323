xx= [-1 -0.5 0 0.5 1 1.5 2]';
ff= [5.2426 4.8684 5.1962 5.7375 7 9.7390 14.7082]';
fd0=-1.9393;
fdn=12.6708;
[a,b,c,d]=naturalSpline(xx,ff);
%%Part A: table with natural spline
fprintf('Part A: Natural Spline \ni\t\ta(i)\t\t\t\tb(i)\t\t\t\tc(i)\t\t\t\td(i)')
for i=1:length(xx)-1
    fprintf('\n%i\t\t%f\t\t\t%f\t\t\t%f\t\t\t%f', (i-1),a(i),b(i),c(i),d(i))
end

%%Part B: table with clamped spline
[aa,bb,cc,dd]=clampedSpline(xx,ff,fd0,fdn);
fprintf('\n\nPart B: Clamped Spline \ni\t\ta(i)\t\t\t\tb(i)\t\t\t\tc(i)\t\t\t\td(i)')
for i=1:length(xx)-1
    fprintf('\n%i\t\t%f\t\t\t%f\t\t\t%f\t\t\t%f', (i-1),aa(i),bb(i),cc(i),dd(i))
end

%%Part C: plot
x=-1.5:.01:2.5;
y=(abs(x)).^3+3*sqrt(x+3);
plot(x,y)

fprintf('\nDid the extra credit instead of completing this problem.')