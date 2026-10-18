% STA301 - Statistics and Probability (Lectures 1-15)
% Question 2 (Lecture 2): Stratified Sampling, Sampling Error
% Fida Hussain (FA23-BSE-066), COMSATS University Islamabad, Vehari Campus
% All formulas are coded directly - no Statistics Toolbox is needed.

clear;

N = [480 420 300];        % students in Business, Computing, Arts
n = 120;                  % required sample size

n_h = (N / sum(N)) * n;   % proportional allocation

popMean    = 2.84;        % population mean CGPA
sampleMean = 2.79;        % sample mean CGPA
samplingError = sampleMean - popMean;

fprintf('Q2: Sample from Business  = %d\n', n_h(1));
fprintf('Q2: Sample from Computing = %d\n', n_h(2));
fprintf('Q2: Sample from Arts      = %d\n', n_h(3));
% Questionnaire answers = Primary data, CGPA from records = Secondary data
fprintf('Q2: Sampling error = %.2f\n\n', samplingError);
