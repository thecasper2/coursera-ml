function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

n_examples = size(X,1);

for i=1:n_examples % ith training example
	centroid_distances = zeros(K, 1); % initialise a vector of distances to each centroid
	for k=1:K % kth centroid
		centroid_distances(k) = sum((X(i,:) - centroids(k,:)).^2); % calculate centroid distance for ith example for all centroids
	endfor
	[closest_centroid_distance, closest_centroid_index] = min(centroid_distances); % find the index of the closest centroid
	idx(i) = closest_centroid_index; % set the c(i) value as the closest centroid index
endfor

% =============================================================

end

