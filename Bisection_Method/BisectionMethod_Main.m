%Initiate Variables
leftBound = 0;
rightBound = 1;
err = 10^-10;
maxSteps = 100;

%Initiate Equation
f = @(x) sqrt(x) - cos(x);

[retVal, stepsUsed] = BisectionMethod(f, leftBound, rightBound, err, maxSteps)