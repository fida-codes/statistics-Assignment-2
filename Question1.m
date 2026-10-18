% STA301 - Statistics and Probability (Lectures 1-15)
% Question 1 (Lecture 1): Variables, Scales, Error of Measurement
% Fida Hussain (FA23-BSE-066), COMSATS University Islamabad, Vehari Campus
% All formulas are coded directly - no Statistics Toolbox is needed.

clc; clear;

% Classification of variables:
% (a) Blood group          - Qualitative,            Nominal scale
% (b) Number of visits     - Quantitative, discrete, Ratio scale
% (c) Temperature (deg C)  - Quantitative, continuous, Interval scale
% (d) Satisfaction level   - Qualitative,            Ordinal scale
% (e) Weight (kg)          - Quantitative, continuous, Ratio scale
% (f) Bed number           - Qualitative (label),    Nominal scale

observed = 74.6;          % value shown by the scale (kg)
trueVal  = 75.0;          % true weight (kg)

absError = observed - trueVal;            % absolute error
relError = absError / trueVal;            % relative error
perError = relError * 100;                % percentage error

fprintf('Q1: Absolute error = %.2f kg\n', absError);
fprintf('Q1: Relative error = %.5f\n', relError);
fprintf('Q1: Percentage error = %.2f %%\n\n', perError);
