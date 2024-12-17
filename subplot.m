clc;
clear;
close all;
x = -10:0.1:10;
subplot(2, 2, 1);
y1 = x.^2;
plot(x, y1);
xlabel('x');
ylabel('y');
title('x,y');
subplot(2, 2, 2);
y2 = sin(x);
plot(x, y2);
xlabel('x');
ylabel('y');
title('x,y');
subplot(2, 2, 3);
y3 = cos(x);
plot(x, y3);
xlabel('x');
ylabel('y');
title('x,y');
subplot(2, 2, 4);
y4 = tan(x);
plot(x,y4);
xlabel('x');
ylabel('y');
title('x,y');