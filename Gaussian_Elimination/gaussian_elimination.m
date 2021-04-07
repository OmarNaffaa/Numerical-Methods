% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Gaussian Elimination - Implementation
% April 3, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

function retVal = gaussian_elimination(A, b)
  
  [numRows, numCols] = size(A);
  [numRowsB, numColsB] = size(b);
  
  % Input validation
  if (numRows != numCols)
    disp("Invalid matrix for 'A' passed. Rows and columns must match");
    exit(1);
  elseif (numRows != numRowsB)
    disp("Matrix 'b' must have the same rows as matrix 'A'");
    exit(1);
  endif
  
  % Perform initial matrix scaling
  C = f_scale(A, b);;
  
  for (i = 1 : (numCols - 1))
  
    % Ensure current column is not all 0s
    % (No unique solutions exist if this is the case)
    if (C(i,:) == 0)
      fprintf("No unique solutions");
      exit(1);
    endif
  
    % Determine index of maximum value in a column
    maxIndex = i;
    for (j = i : numRows)
      if (abs(C(j,i)) > abs(C(maxIndex,i)))
        maxIndex = j;
      endif
    endfor
    
    % Perform iterative Gaussian Elimination
    C = f_row_switch(C, i, maxIndex);
    M = f_build_m_matrix(C, i);
    C = M * C;
    
  endfor
  
  % Perform backward substitution for matrix coefficients
  retVal = C;
  
endfunction