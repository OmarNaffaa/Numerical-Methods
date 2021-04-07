% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Backward Differentiation 
% March 13, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

function retval = differentiate_backward(f, x)
  
  % Determines how far "ahead" the forward point is.
  % Can be reduced for further precision
  xInc = 0.01;
  
  dF = ( f(x - xInc) - f(x) ) / ( -xInc );
  
  retval = dF;
  
 endfunction