syms x y;
[x, y] = meshgrid(-2:0.1:2, -2:0.1:2);
f = x*y*exp(-2*(x^2 + y^2));

figure(1)
mesh(x, y, f);
xlabel('X'); ylabel('Y');
grid;

figure(2)
contour(x, y, f);
xlabel('X'); ylabel('Y');

%finding the maximum value of f(x,y)
fmax = max(max(f));
%Locating Maximum Values
kmax = find(f == fmax);
pos = [x(kmax) y(kmax)];

%Plotting the Maximum Values
plot(x(kmax), y(kmax), '*');
text(x(kmax), y(kmax), 'Maximum');

%finding the minimum value of f(x,y)
fmin = min(min(f));
%locating minimum value
kmin = find(f == fmin);
pos1 = [x(kmin), y(kmin)];

%Plotting the Minimum Values
plot(x(kmin), y(kmin), '*');
text(x(kmin), y(kmin), 'Minimum');
hold off;

disp('The Maximum value of f : ' + fmax);
disp('Locating maximum values : ' ); disp(kmax);
disp('The positions of maximum values : '); disp(pos);

disp('The minimum values of f : ' + fmin);
disp('Locating minimum valus : ' ); disp(kmin);
disp('he positions of minimum values : '); disp(pos1);