% STA301 - Statistics and Probability (Lectures 1-15)
% Question 14 (Lecture 14): Bowley, Kurtosis and Moments
% Fida Hussain (FA23-BSE-066), COMSATS University Islamabad, Vehari Campus
% All formulas are coded directly - no Statistics Toolbox is needed.

clear;

% (a) and (b): wages distribution
Q1 = 1850; Med = 2400; Q3 = 3100; P10 = 1200; P90 = 3900;

bowley = (Q3 + Q1 - 2*Med) / (Q3 - Q1);
QD = (Q3 - Q1) / 2;
K  = QD / (P90 - P10);                % percentile coefficient of kurtosis

fprintf('Q14(a): Bowley coefficient = %+.2f\n', bowley);
fprintf('Q14(b): K = %.3f (< 0.263, so leptokurtic)\n', K);

% (c) Moments of the marks
y  = [28 34 38 42 46 50 54 60];
mu = mean(y);
m1 = mean((y - mu).^1);
m2 = mean((y - mu).^2);
m3 = mean((y - mu).^3);
m4 = mean((y - mu).^4);
beta1 = m3^2 / m2^3;
beta2 = m4 / m2^2;

fprintf('Q14(c): m1 = %.0f, m2 = %.0f, m3 = %.0f, m4 = %.0f\n', m1, m2, m3, m4);
fprintf('Q14(c): beta1 = %.2f (symmetric), beta2 = %.2f (< 3, platykurtic)\n\n', beta1, beta2);
