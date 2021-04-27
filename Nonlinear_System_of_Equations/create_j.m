% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Nonlinear System of Equations - Create Jacobian Matrix
% April 24, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

function J = create_j(F, X)

  % Generate empty jacobian matrix
  [numRows, numCols] = size(F);
  numRows = numCols;
  J = zeros(numCols);
  
  for (i = 1 : numCols)
    for (j = 1 : numRows)

      % Calculate jacobian for each cell
      J(j, i) = calc_jacobian(F, X, i, j);
      
    endfor
  endfor
  
endfunction