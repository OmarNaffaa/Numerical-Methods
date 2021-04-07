% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Gaussian Elimination - Matrix Scaling
% April 3, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

function m = f_build_m_matrix(A, i)
  
  [numRows, numCols] = size(A);
  
  m = eye(numRows); % Build numRows x numRows identity matrix_type
  
  for (j = (i+1) : numRows)
    m(j, i) = -( A(j, i) / A(i,i) );
  endfor
  
endfunction