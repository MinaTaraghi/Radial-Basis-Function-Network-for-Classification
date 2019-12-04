function error_rate=eval_RBF(Centers, sigma, Ws,eval_x,eval_y,func)
classNo=4;
m = size(eval_x,1);
RBFNeuronsNo = size(Centers, 1);
for i=1:m
    
    input = eval_x(i,:);
    temp= RBF_Phis(Centers, sigma, input,func);
    Phis(i,:) = temp';
end

Phis = [ones(m, 1), Phis];
    output=Phis*Ws;
    [~,Indices]=max(output');
    diff=(Indices-1)'-eval_y;
%     sqrdiff=diff.^2;
%     error_rate=sum(sqrdiff)/m;
% error_rate=sum(abs(diff))/m;
error_rate=nnz(diff)/m;
end