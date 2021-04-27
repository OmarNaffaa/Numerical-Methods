% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Nonlinear System of Equations - Create B-Matrix
% April 24, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

function b = create_b(F, X)

  numOfEqns = size(F, 2);
  b = zeros(numOfEqns, 1);
  
  for (i = 1 : numOfEqns)
    b(i) = -F{i}(X);
  endfor
  
endfunction