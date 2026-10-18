% STA301 - Statistics and Probability (Lectures 1-15)
% Question 4 (Lecture 4): Continuous Frequency Distribution
% Fida Hussain (FA23-BSE-066), COMSATS University Islamabad, Vehari Campus
% All formulas are coded directly - no Statistics Toolbox is needed.

clear;

data = [2.3 4.2 6.1 8.2 10.4 3.1 4.7 6.4 8.6 11.0 ...
        3.8 5.0 6.8 9.0 11.6 4.9 6.6 7.0 8.9 5.3 ...
        5.5 7.2 9.3 5.8 7.5 5.9 7.7 9.7 6.9 7.9];   % screen time (hours)

range = max(data) - min(data);        % 11.6 - 2.3 = 9.3
h = 2;                                % class width (9.3/5 = 1.86 -> 2)

edges = [2 4 6 8 10 12];              % class edges (same bins as histcounts)
freq = zeros(1, length(edges)-1);
for k = 1:length(edges)-1            % portable: works in MATLAB and Octave
    if k < length(edges)-1
        freq(k) = sum(data >= edges(k) & data < edges(k+1));
    else
        freq(k) = sum(data >= edges(k) & data <= edges(k+1));  % last bin includes right edge
    end
end

lowerLim = [2.0 4.0 6.0 8.0 10.0];
upperLim = [3.9 5.9 7.9 9.9 11.9];
lowerBnd = lowerLim - 0.05;           % class boundaries
upperBnd = upperLim + 0.05;
midPoint = (lowerLim + upperLim) / 2; % mid-points

fprintf('Q4: Range = %.1f, Class width = %d\n', range, h);
disp('Q4: LowerBnd  UpperBnd  MidPoint   f');
disp([lowerBnd' upperBnd' midPoint' freq']);
