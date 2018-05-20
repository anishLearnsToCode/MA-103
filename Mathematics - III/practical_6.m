syms g x;
g = taylor(sin(x), x, 1, 'order', 11);
h = ezplot(x,g);
set(h, 'color', 'r');

grid;
hold on;
y = sin(x);
 k = ezplot(x, y);
 set(k, 'color', 'b');
 
title('Taylor Series');
hold off;
legend('Taylor Series', 'sin(x)');