% Email to classify (change it to emailSample1.txt to get a no-spam classification)
filename = 'spamSample1.txt';

% Read and predict
% Extract Features
file_contents = readFile(filename);
word_indices  = processEmail(file_contents);
features = emailFeatures(word_indices);
p = svmPredict(model, features);

fprintf('\nProcessed %s\n\nSpam Classification: %d\n', filename, p);
fprintf('(1 indicates spam, 0 indicates not spam)\n\n');

