function Phis=RBF_Phis(centers, sigma, input,func)

% Subtract the input from all of the centers.
    % diffs becomes an k x n matrix where k is the number of centers
    % and n is the number of input dimensions.
    diffs = bsxfun(@minus, centers, input);
    % Take the sum of squared distances (the squared L2 distance).
    % sqrdDists becomes a k x 1 vector where k is the number of centers.
    sqrdDists = sum(diffs .^ 2, 2);
    Phis=func(sqrdDists,sigma);
end