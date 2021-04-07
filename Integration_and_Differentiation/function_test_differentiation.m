% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
% Omar Naffaa - ECE 5110
% Differentiation Test Function
% March 13, 2021
% !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

%
% Initialize function to differentiate
%
f = @(x) x^3 + 2*x - 1;
testPoint = 1;

fplot (f, [0,10]);
hold on;

%
% Obtain derivative using different methods
%
ansOne = differentiate_forward(f, testPoint);
ansTwo = differentiate_backward(f, testPoint);
ansThree = differentiate_central(f, testPoint);
ansFour = differentiate_3Point_endPoint(f, testPoint);
ansFive = differentiate_3Point_midPoint(f, testPoint);
ansSix = differentiate_2ndDegree(f, testPoint);

%
% Display Answers
%
fprintf (["Forward Differentiation Result: " num2str(ansOne, 4) "\n"]);
fprintf (["Backward Differentiation Result: " num2str(ansTwo, 4) "\n"]);
fprintf (["Central Integration Result: " num2str(ansThree, 4) "\n"]);
fprintf (["3-Point Endpoint Result: " num2str(ansFour, 4) "\n"]);
fprintf (["3-Point Midpoint Result: " num2str(ansFive, 4) "\n"]);
fprintf (["Taylor 2nd Degree Result: " num2str(ansSix, 4) "\n\n"]);