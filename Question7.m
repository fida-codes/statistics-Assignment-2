% STA301 - Statistics and Probability (Lectures 1-15)
% Question 7 (Lecture 7): Mean, Median and Weighted Mean
% Fida Hussain (FA23-BSE-066), COMSATS University Islamabad, Vehari Campus
% All formulas are coded directly - no Statistics Toolbox is needed.

clear;

allow = [45 52 48 60 55 52 49 58 61];  % weekly allowance (Rs in hundreds)
meanAllow   = mean(allow);
medianAllow = median(allow);

marks   = [78 84 70 92];              % Calculus, Physics, English, Programming
weights = [4 3 2 3];                  % credit hours
weightedMean = sum(weights .* marks) / sum(weights);

fprintf('Q7(a): Mean allowance   = %.2f (Rs %.0f)\n', meanAllow, meanAllow*100);
fprintf('Q7(a): Median allowance = %.2f (Rs %.0f)\n', medianAllow, medianAllow*100);
fprintf('Q7(b): Weighted mean    = %.2f marks\n\n', weightedMean);
