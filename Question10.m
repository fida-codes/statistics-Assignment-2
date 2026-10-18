% STA301 - Statistics and Probability (Lectures 1-15)
% Question 10 (Lecture 10): Range and Quartile Deviation
% Fida Hussain (FA23-BSE-066), COMSATS University Islamabad, Vehari Campus
% All formulas are coded directly - no Statistics Toolbox is needed.

clear;

x = [18 22 25 29 31 34 38 42 47 52 58];   % mobile data usage (GB), sorted
n = length(x);

range = max(x) - min(x);
coeffDisp = (max(x) - min(x)) / (max(x) + min(x));

Q1 = x((n+1)/4);                      % 3rd value
Q3 = x(3*(n+1)/4);                    % 9th value
QD = (Q3 - Q1) / 2;
coeffQD = (Q3 - Q1) / (Q3 + Q1);

fprintf('Q10: Range = %d GB, Coefficient of dispersion = %.2f\n', range, coeffDisp);
fprintf('Q10: Q1 = %d, Q3 = %d, Quartile deviation = %.0f GB, its coefficient = %.2f\n\n', Q1, Q3, QD, coeffQD);
