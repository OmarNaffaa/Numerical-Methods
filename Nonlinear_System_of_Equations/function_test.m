% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Nonlinear System of Equations - Test Function
% April 24, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

clc;
clear all;

% ----------------------------------------------
% Test 1
% ----------------------------------------------
% Plot equations
ezplot (@(x,y) x.*x + y.*y - 2);
hold on;
ezplot (@(x,y) x.*x - y.*y + 1);
xlim([-2, 2]);
ylim([-2, 2]);

% Calculate solution using guess
X = [1, 1];
F{1} = @(X) X(1).*X(1) + X(2).*X(2) - 2;
F{2} = @(X) X(1).*X(1) - X(2).*X(2) + 1;

ans{1} = nonlin_solve(F, X, 1e-6);

% Display solution
fprintf (["\nSolution: " num2str(ans{1}, 4) "\n"]);