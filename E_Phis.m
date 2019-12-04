function Phis=E_Phis(centers,sigma,input,Cov_Matrices)
diffs = bsxfun(@minus, centers, input);

Phis=E_Gaussian(-diffs,sigma,Cov_Matrices);
end