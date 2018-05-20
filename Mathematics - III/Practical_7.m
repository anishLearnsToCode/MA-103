syms x t;
f(x) = 1 + x^2;
d(x) = diff(f(x));
g(x) = 5 + (x-2)*d(2);

h = ezplot(f(x));
set(h, 'color', 'r');
grid;
hold on;
k = ezplot(g(x));
set(k, 'color', 'b');

roc(x) =sqrt((1 + d(x)^2))^3;
r(x) = roc(x) / diff(d(x));
disp(r(2));