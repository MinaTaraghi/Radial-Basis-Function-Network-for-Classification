function f=E_Gaussian(input,sigma,Cov_Matrices)
for i=1:size(Cov_Matrices,1)

    f(i)=exp(-(input(i,:)*inv(Cov_Matrices{i})*input(i,:)')/(2*sigma^2));
end
end