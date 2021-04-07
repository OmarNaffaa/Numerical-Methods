% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Trapezoidal Integration Method
% March 13, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

function retval = integrate_trapezoidal(f, leftBound, rightBound, numOfSteps)
  
  %
  % Perform Input Validation
  %
  if (leftBound > rightBound) % Exit if bounds are not correctly specified
    fprintf ("Left bound cannot be greater than the right bound");
    exit(1);
  elseif (numOfSteps <= 0)
    fprintf ("The number of steps must be a value greater than 0");
    exit
  endif
  
  %
  % Define Constants
  %
  h = (rightBound - leftBound) / numOfSteps;
  
  %
  % Perform Simpson Integration
  %
  retval = 0;
  
  for (i = 0 : 1 : (numOfSteps-1))
    % Determine value for a particular step
    intermediateValue = 0;
    intermediateValue = f(leftBound + i * h);
    intermediateValue += f(leftBound + i * h + h);
    intermediateValue *= h / 2;
    
    % Sum each intermediate value to determine total area
    retval += intermediateValue;
  endfor
  
endfunction