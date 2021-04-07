% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Secant Method Implementation
% February 4, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

function [retVal, steps] = function_secantmethod(f, p0, p1, err, maxSteps)
  
  % Initialize values
  x0 = p0; x1 = p1;
  retVal = 0; steps = 0;
  
  for i = 1 : maxSteps % NOTE: Skip an iteration since x0 and x1 are initialized above
    
    % Compute next point (x)    
    x = x1 - (f(x1) / ((f(x1)-f(x0))/(x1-x0)));
    
    % Check if calculated point is within the specified tolerance
    if (abs(f(x)) < err)
      retVal = x;
      steps = i;
      return;
    endif
    
    % Update values
    x0 = x1;
    x1 = x;
    
  endfor
  
  error("Does Not Converge");
  
endfunction  