function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

%c1=[];
%c2=[];
%c3=[];
%for i =1:m
%  if (idx(i) == 1)
%   c1 = [c1;X(i,:)];
%  elseif (idx(i)==2)
%    c2 = [c2;X(i,:)];
%  elseif (idx(i)==3)
%    c3 = [c3;X(i,:)];
%  end
%end

%centroidsds=[mean(c1);mean(c2);mean(c3)]

%for i=1:K
%  tmp = zeros(1,n);
%  count = 0;
%  for j = 1: m
%    if (idx(j) == i)
%      tmp += X(j,:); 
%      count ++;
%    end
%  end
%  cen = tmp ./ count;
%  centroids(i,:) = tmp ./ count;
%end

for i=1:K
  closest_number = (idx==i);
  closest_x = X.*closest_number;    
  centroid = sum(closest_x) ./ sum(closest_number);
  centroids(i,:) = centroid;
end




% =============================================================


end

