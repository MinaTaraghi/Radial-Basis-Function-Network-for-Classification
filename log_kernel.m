function f=log_kernel(input,sigma)
f=(input./sigma.^2).*log(input./sigma);
end