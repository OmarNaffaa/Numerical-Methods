% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Newton / Secant Test Function
% February 4, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

% -----------------------------------------------
% Create Equations and Plot Graphs
% -----------------------------------------------
f = @(x) 0.5 * x^2 - 1;
fDiff = @(q) q;

warning('off', 'all');
fplot (f, [-2,2]);
title ("Equation");

% -----------------------------------------------
% Obtain solution using Newton's Method
% -----------------------------------------------
f = @(x) 0.5 * x^2 - 1;
fDiff = @(q) q;
err = 10^-12;
maxSteps = 10^3;

p0_newton = 1.3;

[retVal, stepsUsed] = function_newtonmethod(f, fDiff, p0_newton, err, maxSteps);
fprintf (["\nSolution (Newton's Method): " num2str(retVal, 3) "\n"]);
fprintf (["Steps Used (Newton's Method): " num2str(stepsUsed, 3) "\n\n"]);

% -----------------------------------------------
% Obtain solution using Secant Method
% -----------------------------------------------
f = @(x) 0.5 * x^2 - 1;
fDiff = @(q) q;
err = 10^-12;
maxSteps = 10^3;

p0_secant = 1.3; % place to the left of guessed solution
p1_secant = 1.5; % place to the right of guessed solution

[retVal2, stepsUsed2] = function_secantmethod(f, p0_secant, p1_secant, err, maxSteps);
fprintf (["\nSolution (Secant Method): " num2str(retVal2, 3) "\n"]);
fprintf (["Steps Used (Secant Method): " num2str(stepsUsed2, 3) "\n\n"]);