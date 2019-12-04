function [Centers, sigma, Ws] = train_RBF_EW(train_x, train_y, centersPerCategory,func,train_mode,nEBF,center_selection,useKmeans,lambda)
% disp('entered training...');
classNo=4;
m = size(train_x, 1);
Centers = [];
Cov_Matrices=cell(centersPerCategory*classNo,1);
if(useKmeans)
for c=1:classNo
    Xc = train_x((train_y == (c-1)), :);
    init_Centroids = Xc(1:centersPerCategory, :);
    [Centroids_c, memberships_c] = kMeans(Xc, init_Centroids, 100);
    
    % Remove any empty clusters.
    toRemove = [];
    
    % For each of the centroids...
    for i = 1:size(Centroids_c, 1)
        % If this centroid has no members, mark it for removal.
        if (sum(memberships_c == i) == 0)
            toRemove = [toRemove; i];
        end
    end
    
    % If there were empty clusters...
    if (~isempty(toRemove))
        % Remove the centroids of the empty clusters.
        Centroids_c(toRemove, :) = [];
        
        % Reassign the memberships (index values will have changed).
        memberships_c = findClosestCentroids(Xc, Centroids_c);
    end
    for i=1:centersPerCategory
        Cov_Matrices{i+(c-1)*centersPerCategory}=cov(Xc(memberships_c==i,:));
    end
    Centers = [Centers; Centroids_c];
    
end
else
    ind=randi(m,[centersPerCategory*classNo,1]);
    Centers=train_x(ind);
end
dmax=find_dmax(Centers,nEBF);
sigma=dmax/(2*centersPerCategory*classNo)^0.5;
RBFNeuronsNo = size(Centers, 1);

%% training
Phis = zeros(m, RBFNeuronsNo);

for i=1:m
    
    input = train_x(i,:);
    if(nEBF)
        temp= RBF_Phis(Centers, sigma, input,func);
    else
        temp=E_Phis(Centers,sigma,input,Cov_Matrices);
    end
    Phis(i,:) = temp';
end

Phis = [ones(m, 1), Phis];
Ws = zeros(RBFNeuronsNo+1, classNo);
if(train_mode==1)
for c=1:classNo
    y_c=(train_y==(c-1));
    Ws(:, c) = pinv(Phis' * Phis) * Phis' * y_c;
end
else
    Ws=train_RLS_EW(Phis,lambda,train_y,classNo);
end
end