% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Gaussian Elimination - Matrix Scaling
% April 3, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

function x = f_scale(A, b)
  
  [numRows, numCols] = size(A);

  % Scale each row based on the maximum element in a row "j"
  for (i = 1 : numRows)
    maxVal = max(abs(A(i,:)));

    b(i) /= maxVal;
    A(i,:) /= maxVal;
  endfor
  
  x = [A, b];
  
endfunction