% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Newton Method Implementation
% February 4, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

function [retVal, steps] = function_newtonmethod(f, fDiff, initPoint, err, maxSteps)
  
  % Initialize values
  x0 = initPoint;
  retVal = 0; steps = 0;
  
  for i = 0 : maxSteps
    
    % Compute next point (x)
    x = x0 - (f(x0) / fDiff(x0)); 
    
    % Check if calculated point is within the specified tolerance
    if (abs(f(x)) < err) 
      retVal = x;
      steps = i;
      return;
    endif
    
    x0 = x;
    
  endfor
  
  error("Does Not Converge");
  
endfunction  