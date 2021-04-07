% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Lagrance Interpolation Method
% February 21, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

function p = interpolate_lagrange(x, y)
  
  sizeX = length(x);
  sizeY = length(y);
  
  % Initalize a 1 by sizeX matrix with values set to 0
  p = zeros(1, sizeX);
  
  if (sizeY < sizeX)
    fprintf ("Please specify a value of y for each value of x");
    exit(1);
  endif
  
  for (i = 1 : sizeX)
    
    n = 1;
    d = y(i);
    
    if (d == 0)
      continue;
    endif
    
    % Build out each lagrange term one-by-one
    for (j = 1 : sizeX)
      if (j != i)
        m = [1, -x(j)];
        n = conv(n, m);        % "foil" numerator to write polynomial in expanded form
        d = d / (x(i) - x(j)); % iteratively determine numerator of lagrange term
      endif
    endfor
    
    % Multiply lagrange term by its corresponding y-value (d),
    % then add it to the interpolation polynomial
    p = p + n * d;
    
  endfor
  
endfunction
