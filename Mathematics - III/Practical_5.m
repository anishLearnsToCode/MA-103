syms t
g(t) = sec(t);
Yc = dsolve('D2y + 4*y = 0');
y1 = cos(2*t);
y2 = sin(2*t);

uDot = diff(y1);
vDot = diff(y2);

w = [y1 y2 ; uDot vDot];
W = det(w);

w1 = [0 y2 ; g vDot];
W1 = det(w1);
w2 = [y1 0 ; uDot g];
W2 = det(w2);

uDot = W1 / W;
vDot = W2 / W;

u = int(uDot);
v = int(vDot);

Yp = u*y1 + v*y2;
Y(t) = Yc + Yp;