% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Simpson Integration Method
% March 13, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

function retval = integrate_simpson(f, leftBound, rightBound, numOfSteps)
  
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
  stepSize = (rightBound - leftBound) / numOfSteps;
  h = stepSize / 2;
  
  %
  % Perform Simpson Integration
  %
  retval = 0;
  
  for (i = 0 : 1 : (numOfSteps - 1))
    % Determine value for a particular step
    intermediateValue = 0;
    intermediateValue = f(leftBound + i * stepSize);
    intermediateValue += 4 * f(leftBound + i * stepSize + h);
    intermediateValue += f(leftBound + i * stepSize + 2 * h);
    intermediateValue *= h / 3;
    
    % Sum each intermediate value to determine total area
    retval += intermediateValue;
  endfor
  
endfunction