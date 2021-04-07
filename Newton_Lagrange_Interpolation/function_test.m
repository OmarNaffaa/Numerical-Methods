% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Lagrange / Newton Interpolation Test Function
% February 21, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

% Plot coordinates given by x and y
x = [2, 3, 4, 7, 8];
y = [1, -1, 1, -1, 1];
scatter (x, y, 25, [], 'filled');

%% Interpolate using given points; store to polynomial "p"
% Newton
p = interpolate_newton(x, y);
% Lagrange
%p = interpolate_lagrange(x, y);

% Plot interpolated curve
hold on;
x2 = 2:0.1:8;
y2 = polyval (p, x2);
plot (x2, y2);
hold off;

% Print polynomial
disp (p);
