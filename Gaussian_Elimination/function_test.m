% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Gaussian Elimination - Test Function
% April 3, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

A = [
  1e-10 1 -1 1 -3; 
  1 0 2 -1 1; 
  0 -2 -1 1 -1; 
  3 1 -4 0 5; 
  1 -1 -1 -1 1
];
B = [
  7; 
  2; 
  -5; 
  6; 
  3
];

ans = lin_solve(A, B);

disp("Solution:\n");
disp(ans);
disp("\n");
