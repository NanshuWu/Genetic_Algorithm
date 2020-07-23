function [X_poly] = powerMap(X, p)
%POLYFEATURES Maps X (1D vector) into the p-th power
%   [X_poly] = POLYFEATURES(X, p) takes a data matrix X (size 1 x m) and
%   maps each example into its polynomial features where
%   X_poly(i, :) = [X(i).^(p-1) X(i).^3 X(i).^2 X(i)   ...  0];
%
% You need to return the following variables correctly.
X_poly = zeros(numel(X), p);

% ====================== YOUR CODE HERE ======================
% Instructions: Given a vector X, return a matrix X_poly where the p-th 
%               column of X contains the values of X to the p-th power.
%
% 
for j=1:p
    X_poly(:,j)=X.^(j-1);
end
X_poly=sort(X_poly,'descend');
X_poly=X_poly';





% =========================================================================

end
