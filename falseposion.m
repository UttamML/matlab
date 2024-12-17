f=@(x) x^3-6*x^2+11*x-6
a=0;
b=1;
tol=1e-6
max_iter=100;
if f(a)*f(b)>0
    error('f(a)andf(b) must have opposite signs.please provide a valid interval:');
end
fprintf('false position method');
fprintf('Iteration \ta\t\tb\t\tc\t\tf(c)\n');
for i=1:max_iter
    c=b-(f(b)*(b-a))/(f(b)-f(a))
    f_c=f(c)
    fprintf('%d\t\t%.6f\t%.6f\t%.6f\t%6f\n',i,a,b,c,f_c);
    if abs (f_c)<tol
        fprintf('Root found:%6f\n',c);
        break;
    end
    if f(a)*f_c<0
        b=c
    else
        a=c
    end
end
if i==max_iter
    fprintf('method did not coverage with in the max number iteration.\n');
end