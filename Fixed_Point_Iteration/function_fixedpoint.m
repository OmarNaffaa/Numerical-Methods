% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Fixed-Point Iteration Implementation
% January 31, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

function [retVal, steps] = function_fixedpoint(f, startPoint, err, maxSteps)
  
    % Initialize Default Return Values
    retVal = 0;
    steps = 0;
    
    % Iterative Logic
    for i = 0 : maxSteps
      
      x = f(startPoint);
      
      if (abs(x - startPoint) < err)
        retVal = x;
        steps = i;
        return;
      endif
      
      startPoint = x;
      
    endfor
    
    error("Does Not Converge");
    
endfunction  