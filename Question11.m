% STA301 - Statistics and Probability (Lectures 1-15)
% Question 11 (Lecture 11): Mean Deviation, Variance, SD, CV
% Fida Hussain (FA23-BSE-066), COMSATS University Islamabad, Vehari Campus
% All formulas are coded directly - no Statistics Toolbox is needed.

clear;

x = [6 8 8 10 10 12 12 14];           % study hours per week
mu = mean(x);

MD  = mean(abs(x - mu));              % mean deviation about the mean
Var = mean((x - mu).^2);              % variance
SD  = sqrt(Var);                      % standard deviation
CV  = (SD / mu) * 100;                % coefficient of variation

fprintf('Q11: Mean = %.0f hours, Mean deviation = %.0f hours\n', mu, MD);
fprintf('Q11: Variance = %.0f, SD = %.2f hours, CV = %.2f %%\n\n', Var, SD, CV);
