% STA301 - Statistics and Probability (Lectures 1-15)
% Question 8 (Lecture 8): Grouped Mean, Median, Quartiles, P90
% Fida Hussain (FA23-BSE-066), COMSATS University Islamabad, Vehari Campus
% All formulas are coded directly - no Statistics Toolbox is needed.

clear;

f   = [2 6 10 8 4];                   % classes 0-10 ... 40-50
mid = [5 15 25 35 45];                % mid-points
n   = sum(f);
cf  = cumsum(f);

meanVal = sum(f .* mid) / n;

% Median: class 20-30 (l=20, h=10, f=10, c=8), n/2 = 15
medianVal = 20 + ((n/2 - 8) / 10) * 10;
% Q1: class 10-20 (l=10, f=6, c=2), n/4 = 7.5
Q1 = 10 + ((n/4 - 2) / 6) * 10;
% Q3: class 30-40 (l=30, f=8, c=18), 3n/4 = 22.5
Q3 = 30 + ((3*n/4 - 18) / 8) * 10;
% P90: class 40-50 (l=40, f=4, c=26), 90n/100 = 27
P90 = 40 + ((90*n/100 - 26) / 4) * 10;
% Empirical mode
modeVal = 3 * medianVal - 2 * meanVal;

fprintf('Q8: Mean   = %.2f\n', meanVal);
fprintf('Q8: Median = %.2f\n', medianVal);
fprintf('Q8: Q1 = %.2f,  Q3 = %.2f,  P90 = %.2f\n', Q1, Q3, P90);
fprintf('Q8: Empirical Mode = %.2f\n\n', modeVal);
