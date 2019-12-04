function W=train_RLS_EW(Phis,lambda,train_y,classno)
d=zeros(classno,1);
d(train_y(1)+1)=1;
[L,K]=size(Phis);
Ws0=zeros(K,classno);
P0=eye(K)/lambda;
Ws=cell(L,1);
P=cell(L,1);
alpha=cell(L,1);
g=cell(L,1);
%% Computing the first Iteration of Ws
P{1}=P0-((P0*Phis(1,:)'*Phis(1,:)*P0)/(1+Phis(1,:)*P0*Phis(1,:)'));
g{1}=P{1}*Phis(1,:)';
alpha{1}=d-Ws0'*Phis(1,:)';
Ws{1}=Ws0+g{1}*alpha{1}';
%% RLS Main
for i=2:L
    d=zeros(classno,1);
    d(train_y(i)+1)=1;
    P{i}=P{i-1}-((P{i-1}*Phis(i,:)'*Phis(i,:)*P{i-1})/(1+Phis(i,:)*P{i-1}*Phis(i,:)'));
    g{i}=P{i}*Phis(i,:)';
    alpha{i}=d-Ws{i-1}'*Phis(i,:)';
    Ws{i}=Ws{i-1}+g{i}*alpha{i}';
end
W=Ws;
end