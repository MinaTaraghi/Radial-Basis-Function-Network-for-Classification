function d=find_dmax(centers,nEBF)
mode='euclidean';
% 
%     if(~nEBF)
%         mode='mahalanobis';
%     end
    dists=pdist(centers,mode);
    d=max(dists);
end