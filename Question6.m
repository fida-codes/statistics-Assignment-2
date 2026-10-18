% STA301 - Statistics and Probability (Lectures 1-15)
% Question 6 (Lecture 6): Stem-and-Leaf Display and Mode
% Fida Hussain (FA23-BSE-066), COMSATS University Islamabad, Vehari Campus
% All formulas are coded directly - no Statistics Toolbox is needed.

clear;

data = [34 58 42 61 47 42 55 71 49 58 42 64 53 42 66 44 59 58 62 57];
data = sort(data);

disp('Q6: Stem-and-Leaf Display (Key: 4 | 2 = 42)');
for stem = 3:7
    leaves = mod(data(floor(data/10) == stem), 10);
    fprintf('%d | ', stem);
    fprintf('%d ', leaves);
    fprintf('\n');
end
fprintf('Q6: Mode = %d marks\n\n', mode(data));
