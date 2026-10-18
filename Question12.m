% STA301 - Statistics and Probability (Lectures 1-15)
% Question 12 (Lecture 12): Chebyshev, Empirical Rule, Five Numbers
% Fida Hussain (FA23-BSE-066), COMSATS University Islamabad, Vehari Campus
% All formulas are coded directly - no Statistics Toolbox is needed.

clear;

x  = [30 40 50 60 70 80 90];
mu = mean(x);
SD = std(x, 1);                       % population SD (denominator n)

for k = [2 3]
    guarantee = (1 - 1/k^2) * 100;                    % Chebyshev minimum %
    actual = sum(x >= mu - k*SD & x <= mu + k*SD) / length(x) * 100;
    fprintf('Q12: k = %d: Chebyshev guarantee = %.1f %%, Actual = %.1f %%\n', k, guarantee, actual);
end

% Empirical rule - actual percentage within 1 SD
within1 = sum(x >= mu - SD & x <= mu + SD) / length(x) * 100;
fprintf('Q12: Within 1 SD: actual = %.1f %% (empirical rule: about 68 %%)\n', within1);

% Five-number summary
Q1 = median(x(1:3));                  % median of lower half
Q3 = median(x(5:7));                  % median of upper half
fprintf('Q12: Five-number summary: X0 = %d, Q1 = %d, Median = %d, Q3 = %d, Xm = %d\n\n', ...
        min(x), Q1, median(x), Q3, max(x));
