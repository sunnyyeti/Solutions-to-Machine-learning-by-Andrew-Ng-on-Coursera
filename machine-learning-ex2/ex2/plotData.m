function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%




x1 = X(:,1)(find(y==1));
y1 = X(:,2)(find(y==1));
plot(x1,y1,'k+','LineWidth',2,'MarkerSize',7);
x2 = X(:,1)(find(y==0));
y2 = X(:,2)(find(y==0));
plot(x2,y2,'ko','MarkerFaceColor','y','MarkerSize',7);



% =========================================================================



hold off;

end
