% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Nonlinear System of Equations - Determine Jacobiam
% April 24, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

function retVal = calc_jacobian(F, X, i, j)
  
  % Declare constant(s)
  h = 0.01;

  % Define adjusted "guesses" (used to calculate the jacobian)
  xLeft = X;
  xLeft(i) = X(i) - h;
  xRight = X;
  xRight(i) = X(i) + h;
  
  % Calculate jacobian
  retVal = ( F{j}(xRight) - F{j}(xLeft) ) / ( 2 * h );
  
endfunction