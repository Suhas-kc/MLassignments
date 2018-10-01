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
n = size(X,2);
for i = 1:size(X,1)
    temp = 1;
    for itemp = 1:K
        atemp = 0;
        bitemp = 0;
        for col = 1:n
            atemp += (X(i,col) - centroids(temp,col))^2;
            bitemp += (X(i,col) - centroids(itemp,col))^2;
        endfor
        if (bitemp^0.5 < atemp^0.5)
            temp = itemp;
        endif
    endfor
    idx(i) = temp;
endfor



% =============================================================

end
