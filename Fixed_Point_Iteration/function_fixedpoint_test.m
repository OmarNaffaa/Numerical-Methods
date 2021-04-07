% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Fixed-Point Iteration Test
% January 31, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

% Initialize Variables
startPoint = 0.9;
err = 10^-8;
maxSteps = 10^4;

f = @(x) sqrt(x); % NOTE: the absolute value of the slope of "f" must be above 0 and below 1
g = @(z) z;

% Plot Equation "f"
fplot (f, [0,2]);
hold on;
fplot (g, [0,2]);
hold off;
title ("Equations");

% Obtain solution using Fixed-Point Iteration
[retVal, stepsUsed] = function_fixedpoint(f, startPoint, err, maxSteps);
fprintf (["Solution: " num2str(retVal, 3) "\n"]);
fprintf (["Steps Used: " num2str(stepsUsed, 3) "\n"]);