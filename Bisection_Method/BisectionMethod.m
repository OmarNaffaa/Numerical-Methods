function [retVal, steps] = bisectionTest(func, leftBound, rightBound, err, maxSteps)
  
  % Initalize Variables
  steps = 0;
  solMin = leftBound;
  solMax = rightBound;
  midPoint = (solMin / 2) + (solMax / 2);
  
  % Ensure function can be used for Bisection Method
  % Otherwise, exit
  if (func(solMin) *  func(solMax) < 0)
  
    while (abs(func(midPoint)) > err && steps < maxSteps)
      
      midPoint = (solMin / 2) + (solMax / 2);
      
      if (abs(func(midPoint)) < err)
        break;
      endif
      
      if (func(solMin) * func(midPoint) < 0)
        solMax = midPoint;
      else
        solMin = midPoint;
      endif
      
      steps = steps + 1;
      
    endwhile
  
  endif  
  
  retVal = midPoint;
  
endfunction