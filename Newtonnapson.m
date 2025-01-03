f = @(x) x^3 - 6*x^2 + 11*x - 6; 
df = @(x) 3*x^2 - 12*x + 11; 
x0 = 3; 
tol = 1e-6;
max_iter = 100;
fprintf('Newton-Raphson Method:\n');
fprintf('Iteration\t x\t\t f(x)\n');
for i = 1:max_iter
 f_x0 = f(x0);
 df_x0 = df(x0);
 if abs(df_x0) < 1e-12
 error('Derivative is too small. Method fails.');
 end
 x1 = x0 - f_x0 / df_x0;
 fprintf('%d\t\t %.6f\t %.6f\n', i, x1, f(x1));
 if abs(x1 - x0) < tol
 fprintf('\nRoot found: %.6f\n', x1);
 break;
 end
 x0 = x1;
end
if i == max_iter
 fprintf('\nMethod did not converge within the maximum number of iterations.\n');
end
