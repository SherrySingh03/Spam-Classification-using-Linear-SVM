Spam-Classification-using-Linear-SVM
A Spam Classifier which uses Linear Support vector machines (SVM) Algorithm to predict whether an e-mail is Spam or not. 
Assignment Project related to AndrewNG's ML Course.

The Project includes the following files:

1. getVocabList   : a function which imports the vocabulary of words typically used in Spam E-mails (vocab.txt) and assigns indexes and words to a variable vocabList.

2. readFile       : a function used to read the contents of the file "emailFile.txt" (which contains the contents of E-mail file), in order to process it.

3. processEmail   : a function which preprocesses the contents of the E-mail and compares the words to the words in vocabulary by applying a variety of 
                    steps (lower_case, stripping HTML, handling numbers, handling e-mail addresses, handling URLs, handling $ signs etc) and uses Porter 
                    Stemming algorithm in order to stem all the english words of the given content. After this, it returns the list of word_indices which are 
                    present both in the e-mail and in the vocabulary.

4. linearKernel   : a function which returns the dot product of 2 variables.

5. svmTrain       : which takes spamTrain.mat(X and Y variables), C (regularization parameter, here 0.1), kernelFunction, tolerance (here 0) and max_passes 
                    (number of iterations) as arguments in order to train a SVM Classifier and return a trained model, which would then predict if a given e-mail 
                    is Spam or not.

6. emailFeatures  : a function which takes word_indices variable (generated in processEmail) as an argument in order to create a binary feature vector x which 
                    contains the value '1' on index of word_indices, so as to return a vector that looks like : x = [ 0 0 0 0 1 0 1 0 1 0 1 0 ... 1 0 1 0 ...];

7. svmPredict     : a function which returns the converted (converts to 0 or 1) predicted value after the trained model (can be Linear or Gaussian, here, Linear 
                    model is used) gives a prediction.

8. SpamClassifier : this is the main file that trains the model using spamTrain.mat and then returns the prediction in the end using svmPredict.
