function[a] = createFunction(A)
syms x;
a = 0;
for i =1 : length(A)
    a = a + A(i) * x^ (length(A)+1-i);
end