A = input('Enter Matrix A : \n');
B = input('Enter Matrix B : \n');
Aug = [A B];

if(rank(A) == rank(B))
    disp('The equation is consistent');
else
    disp('The system of Equations is inconsistent');
end