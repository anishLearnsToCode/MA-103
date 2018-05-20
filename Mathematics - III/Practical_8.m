syms x t;
f(x) = x^3 - 3*x^2 + 3*x;
g(x) = x^2;

plot1 = ezplot(f(x));
set(plot1, 'color', 'r');
grid;
hold on;

plot2 = ezplot(g(x));
set(plot2, 'color', 'b');
legend('x^3-3x^2+3x', 'x^2');
xlabel('X - Axis'); ylabel('Y - Axis');
title('Area Enclosed');
hold off;

H(x) = int(f(x) - g(x));
area1 = abs(H(1) - H(0));
area2 = abs(H(3) - H(1));
area = area1 + area2;
disp(area);