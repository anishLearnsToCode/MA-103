function[co] = charPoly(A)
[m,n] = size(A);

if(m ~= n)
    disp('Not agreable Matrix');
    co = [];
    return
end

for i=1 : (n+1)
    x(i) = (i-1) * pi/n;
    y(i) = det(A - x(i) * eye(n) );
end

co = polyfit(x, y, n);