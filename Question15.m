% STA301 - Statistics and Probability (Lectures 1-15)
% Question 15 (Lecture 15): Regression, Correlation, Error of Estimate
% Fida Hussain (FA23-BSE-066), COMSATS University Islamabad, Vehari Campus
% All formulas are coded directly - no Statistics Toolbox is needed.

clear;

X = [1 2 3 4 5 6];                    % hours of preparation
Y = [8 10 15 19 22 28];               % quiz marks (out of 30)
n = length(X);

b = (n*sum(X.*Y) - sum(X)*sum(Y)) / (n*sum(X.^2) - sum(X)^2);   % slope
a = (sum(Y) - b*sum(X)) / n;                                     % intercept

r = (n*sum(X.*Y) - sum(X)*sum(Y)) / ...
    sqrt((n*sum(X.^2) - sum(X)^2) * (n*sum(Y.^2) - sum(Y)^2));   % correlation

Yhat  = a + b * X;                    % fitted values
resid = Y - Yhat;                     % residuals
Syx   = sqrt(sum(resid.^2) / (n - 2));          % standard error of estimate

pred = a + b * 5.5;                   % estimate for X = 5.5 hours

fprintf('Q15: Regression line: Yhat = %.0f + %.0f X\n', a, b);
fprintf('Q15: Correlation coefficient r = %.2f\n', r);
fprintf('Q15: Standard error of estimate Sy.x = %.0f mark\n', Syx);
fprintf('Q15: Estimated marks for 5.5 hours = %.0f\n', pred);
