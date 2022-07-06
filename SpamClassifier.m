

% Training Linear SVM using Training set
load("spamTrain.mat")
fprintf('\nTraining Linear SVM (Spam Classification)\n')
fprintf('\nAnalysing keywords in given Email content (this may take 1 to 2 minutes)\n')
vocabList = getVocabList();
C = 0.1;
model = svmTrain(X, y, C, @linearKernel);
[weight, idx] = sort(model.w, 'descend');


% Testing File Contents
filename = 'emailFile.txt';
file_contents = readFile(filename);
word_indices = processEmail(file_contents);
x = emailFeatures(word_indices);
p = svmPredict(model,x);
fprintf('\nProcessed %s\n\nSpam Classification: %d\n', filename, p);
fprintf('(1 indicates spam, 0 indicates not spam)\n\n');

