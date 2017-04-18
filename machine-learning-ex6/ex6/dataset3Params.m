function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
value_candicate = [0.01 0.03 0.1 0.3 1 3 10 30];
highest_pred = -1;
highestC = 4;
highestSigma = 4;
for i=1:length(value_candicate)
    C = value_candicate(i);
    for j=1:length(value_candicate)
        sigma = value_candicate(j);
        %fprintf("Training model C %f, sigma %f ",C,sigma);
        model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma)); 
        yval_pred = svmPredict(model,Xval);
        cur_pre = mean(double(yval_pred==yval));
        if cur_pre > highest_pred
            highest_pred = cur_pre;
            highestC = C;
            highestSigma = sigma;
        end
    end
end
C = highestC;
sigma = highestSigma;







% =========================================================================

end
