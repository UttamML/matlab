f = @(x) x.^2; 
a = input('Enter the lower limit (a): '); 
b = input('Enter the upper limit (b): '); 
n = input('Enter the number of subintervals: '); 
if mod(n, 3) ~= 0
    error('Number of subintervals must be a multiple of 3 for Simpson''s 3/8 rule.');
end
h = (b - a) / n;
s_odd = 0;
s_even = 0; 
for i = 1:n-1
    x = a + i * h;
    if mod(i, 3) == 0
        s_even = s_even + f(x);
    else
        s_odd = s_odd + f(x); 
    end
end
result = (3 * h / 8) * (f(a) + 3 * s_odd + 2 * s_even + f(b));
fprintf('The approximate value of the integral is: %.6f\n', result);
