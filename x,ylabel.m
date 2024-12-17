clc
clear
close all;
x = 0:0.01:2*pi;
y_sine = sin(x);
y_cosine = cos(x);
plot(x, y_sine);
hold on;
plot(x, y_cosine);
xlabel('x');
ylabel('y');
legend('Sine', 'Cosine');