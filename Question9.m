% STA301 - Statistics and Probability (Lectures 1-15)
% Question 9 (Lecture 9): Arithmetic, Geometric, Harmonic Mean
% Fida Hussain (FA23-BSE-066), COMSATS University Islamabad, Vehari Campus
% All formulas are coded directly - no Statistics Toolbox is needed.

clear;

x = [10 20 40 80];
n = length(x);

AM = mean(x);
GM = exp(mean(log(x)));               % = (product of x)^(1/n)
% Check by logarithms (base 10), as in the handouts:
logGM = sum(log10(x)) / n;
GM_byLog = 10^logGM;
HM = n / sum(1 ./ x);

fprintf('Q9(a): AM = %.2f,  GM = %.2f (by logs = %.2f),  HM = %.2f\n', AM, GM, GM_byLog, HM);
fprintf('Q9(a): AM >= GM >= HM is verified: %.2f > %.2f > %.2f\n', AM, GM, HM);

speeds = [20 30 40 60];               % km/h, over equal distances
avgSpeed = length(speeds) / sum(1 ./ speeds);   % harmonic mean
fprintf('Q9(b): Average speed = %.0f km/h\n\n', avgSpeed);
