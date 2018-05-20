A = input('Enter Matrix A : \n');
B = input('Enter Matrix B : \n');
Aug = [A B];

if(rank(A) == rank(Aug))
    Ans = linsolve(A, B);
    disp(Ans(1))
    disp(Ans(2))
    disp(Ans(3))
else
    disp('The Equation is inconsistent')
end