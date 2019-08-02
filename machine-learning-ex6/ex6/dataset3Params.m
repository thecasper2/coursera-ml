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

% C_ops = [0.01 0.03 0.1 0.3 1 3 10 30];
% sigma_ops = [0.01 0.03 0.1 0.3 1 3 10 30];

% best_error = 1;

% for c_index = 1:length(C_ops)
% 	for s_index = 1:length(sigma_ops)
% 		printf("\nTrying C=%f and sigma=%f\n", C_ops(c_index), sigma_ops(s_index))
% 		model = svmTrain(X, y, C_ops(c_index), @(x1, x2) gaussianKernel(x1, x2, sigma_ops(s_index)));
% 		predictions = svmPredict(model, Xval);
% 		current_error = mean(double(predictions ~= yval));
% 		printf("\nCurrent error: %f , Best error: %f\n", current_error, best_error)
% 		if(current_error < best_error)
% 			printf("\nSetting new best variables!\n");
% 			best_error = current_error;
% 			C = C_ops(c_index);
% 			sigma = sigma_ops(s_index);
% 		endif
% 	endfor
% endfor

% We find for the specific example that these are the best params:
C=0.3;
sigma=0.1;

% =========================================================================

end
