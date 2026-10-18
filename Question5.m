% STA301 - Statistics and Probability (Lectures 1-15)
% Question 5 (Lecture 5): Cumulative Frequencies and Median
% Fida Hussain (FA23-BSE-066), COMSATS University Islamabad, Vehari Campus
% All formulas are coded directly - no Statistics Toolbox is needed.

clear;

f = [4 6 11 9 7 3];                   % classes 10-20 ... 60-70
n = sum(f);

lessCF = cumsum(f);                            % "less than" CF
moreCF = n - [0 cumsum(f(1:end-1))];           % "more than" CF

lessThan50 = lessCF(4);               % CF at 50
fortyOrMore = moreCF(4);              % CF at 40

% Median: median class 30-40 (l=30, h=10, f=11, c=10)
l = 30; h = 10; fmed = 11; c = 10;
medianVal = l + ((n/2 - c) / fmed) * h;

disp('Q5:  f    LessThanCF   MoreThanCF');
disp([f' lessCF' moreCF']);
fprintf('Q5: Students scoring less than 50 = %d\n', lessThan50);
fprintf('Q5: Students scoring 40 or more   = %d\n', fortyOrMore);
fprintf('Q5: Median = %.2f marks\n\n', medianVal);
