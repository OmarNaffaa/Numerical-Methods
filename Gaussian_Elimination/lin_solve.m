% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Gaussian Elimination - Linear Solve
% April 3, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

function ans = lin_solve(A, b)
  
  C = gaussian_elimination(A, b);
  ans = f_backward_substitution(C);
  
endfunction