% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Central Differentiation 
% March 13, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

function retval = differentiate_central(f, x)
  
  % Determines how far "ahead" the forward point is.
  % Can be reduced for further precision
  increment = 0.01;
  
  dF = ( f(x + increment) - f(x - increment) ) / ( increment - (-increment) );
  
  retval = dF;
  
 endfunction