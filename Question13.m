% STA301 - Statistics and Probability (Lectures 1-15)
% Question 13 (Lecture 13): Box Plot and Pearson's Skewness
% Fida Hussain (FA23-BSE-066), COMSATS University Islamabad, Vehari Campus
% All formulas are coded directly - no Statistics Toolbox is needed.

clear;

x = [22 25 28 30 32 35 38 40 42 45 58 70];   % daily sales (Rs in thousands)

med = median(x);
Q1  = median(x(1:6));                 % median of lower half
Q3  = median(x(7:12));                % median of upper half
IQR = Q3 - Q1;

lowerFence = Q1 - 1.5 * IQR;
upperFence = Q3 + 1.5 * IQR;
outliers = x(x < lowerFence | x > upperFence);

mu = mean(x);
SD = std(x, 1);
pearsonSkew = 3 * (mu - med) / SD;    % Pearson's second coefficient

fprintf('Q13: Five numbers: X0 = %d, Q1 = %.1f, Median = %.1f, Q3 = %.1f, Xm = %d\n', min(x), Q1, med, Q3, max(x));
fprintf('Q13: IQR = %.1f, Fences = %.2f and %.2f, Outlier(s): ', IQR, lowerFence, upperFence);
disp(outliers);
fprintf('Q13: Mean = %.2f, SD = %.2f, Pearson skewness = %+.2f (positively skewed)\n\n', mu, SD, pearsonSkew);
