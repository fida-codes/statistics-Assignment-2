% STA301 - Statistics and Probability (Lectures 1-15)
% Question 3 (Lecture 3): Discrete Frequency Distribution
% Fida Hussain (FA23-BSE-066), COMSATS University Islamabad, Vehari Campus
% All formulas are coded directly - no Statistics Toolbox is needed.

clear;

X = 0:4;                  % number of orders per week
f = [6 12 11 7 4];        % number of customers
n = sum(f);

relFreq = f / n;          % relative frequencies
percent = relFreq * 100;  % percentages
angle   = relFreq * 360;  % pie-chart angles (degrees)
totalOrders = sum(f .* X);

disp('Q3:  X    f    Rel.Freq   Percent   Angle');
disp([X' f' relFreq' percent' angle']);
fprintf('Q3: Total number of orders = %d\n\n', totalOrders);
