% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Differentiation - 3-Point Formula - Mid Point
% March 13, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

function retval = differentiate_3Point_midPoint(f, x)
  
  increment = 0.01;
  h = increment;
  
  dF = (-f(x - increment) + f(x + increment)) / (2*h);
  
  retval = dF;
  
 endfunction