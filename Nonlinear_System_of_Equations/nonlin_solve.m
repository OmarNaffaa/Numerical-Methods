% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Nonlinear System of Equations - Top File
% April 24, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

function X = nonlin_solve(F, X, err)
  
  # Define constant(s)
  numOfSteps = 100;
    
  while (1)
    
    % Linearize non-linear equations
    A = create_j(F, X);
    b = create_b(F, X);

    % Solve linearized equation
    C = gaussian_elimination(A, b);
    backSub_ans = f_backward_substitution(C);
  
    % Track error
    X_prev = X;
    X += backSub_ans;
    
    if ( abs(max(X - X_prev)) < err || --numOfSteps == 0)
      break;
    endif
  
  endwhile
  
endfunction