% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Differentiation - 2nd Degree Taylor Exapansion
% March 13, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

function retval = differentiate_2ndDegree(f, x)
  
  increment = 0.01;
  h = increment;
  
  dF = (f(x-increment) - 2*f(x) + f(x + increment)) / (h^2);
  
  retval = dF;
  
 endfunction