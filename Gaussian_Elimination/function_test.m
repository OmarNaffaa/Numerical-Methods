% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Gaussian Elimination - Test Function
% April 3, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

A = [1, -0.5, 1, 0; 2, -1, -1, 1; 1, -1, 0, 0; 1, -0.5, 1, 1];
b = [4;5;2;5];

C = gaussian_elimination(A, b);
retVal = f_backward_substitution(C);

disp(C);
disp(retVal);