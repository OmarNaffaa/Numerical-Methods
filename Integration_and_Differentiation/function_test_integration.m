% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Midpoint / Trapezoid / Simpson Integration Test Function
% March 13, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

%
% Initialize function to integrate
%
f = @(x) cos(x) * cos(x);
leftBound = 0;
rightBound = pi / 4;
intervals = 100;

fplot (f, [0,pi]);
hold on;

%
% Obtain area using different methods
%
ansOne = integrate_simpson(f, leftBound, rightBound, intervals);
ansTwo = integrate_midpoint(f, leftBound, rightBound, intervals);
ansThree = integrate_trapezoidal(f, leftBound, rightBound, intervals);

%
% Display Answers
%
fprintf (["Simpson Integration Result: " num2str(ansOne, 4) "\n"]);
fprintf (["Midpoint Integration Result: " num2str(ansTwo, 4) "\n"]);
fprintf (["Trapezoid Integration Result: " num2str(ansThree, 4) "\n\n"]);