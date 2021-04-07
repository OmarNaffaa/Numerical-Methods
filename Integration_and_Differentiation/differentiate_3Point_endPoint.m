% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Differentiation - 3-Point Formula - End Point
% March 13, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

function retval = differentiate_3Point_endPoint(f, x)
  
  increment = 0.01;
  h = increment;
  
  dF = (-3*f(x) + 4*f(x + increment) - f(x + (2*increment))) / (2*h);
  
  retval = dF;
  
 endfunction