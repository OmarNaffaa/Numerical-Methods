% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Newton Interpolation Method
% February 21, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

function p = interpolate_newton(x, y)
  
  sizeX = length(x);
  sizeY = length(y);
  
  p = zeros(1, sizeX);
  
  if (sizeY != sizeX)
    fprintf ("Please specify a value of y for each value of x");
    exit(1);
  endif
  
  % Initalize a sizeX by sizeX matrix with values set to 0
  dividedDiffTbl = zeros(sizeX, sizeY);
  
  % Initialize p with y-values as first column (duplicate first y-value)
  for (i = 1 : sizeX)
    dividedDiffTbl(i, 1) = y(i);
  endfor
  
  % Generate Dividied Difference Table
  for (j = 2 : sizeX)
    for (k = j : sizeY)
      dividedDiffTbl(k, j) = (dividedDiffTbl(k, j-1) - dividedDiffTbl(k-1, j-1)) / ((x(k) - x(k-j+1)));
    endfor
  endfor
  
  % Create approximation polynomial
  for (i = 1 : sizeX)
    
    % Build polynomial in expanded form
    n = 1;
    for (j = 1 : (i-1))
      m = [1, -x(j)];
      n = conv(n, m);
    endfor
    
    % Multiply expanded polynomial by its appropriate coefficient    
    p = p + [zeros(1, sizeX - length(n)), n] * dividedDiffTbl(i, i);
    
  endfor
  
endfunction