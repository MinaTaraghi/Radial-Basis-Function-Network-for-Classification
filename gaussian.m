function f=gaussian(input,sigma)
f=exp(-(input).^2./(2*sigma.^2));
end