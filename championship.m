function [newPop] = championship(mtx_b)
global lBorder;
global rBorder;
global population;
global chromSize;
global numPara;
% CHAMPIONSHIP
m=size(mtx_b,1);
n=size(mtx_b,2);
newPop=zeros(m,n);
for i=1:m
% ll=randi([1,m/2]);
% rl=randi([(m/2)+1,m]);
prob=randi([1,m],[1,2]);
ll=prob(1);
rl=prob(2);
lM=mtx_b(ll,:);
rM=mtx_b(rl,:);
iM=[lM;rM];
mtx_decoded=decode(iM,lBorder,rBorder);
fitness=fitnessEstimate(mtx_decoded);
result=fitness(1,:)>fitness(2,:);

switch result
    case 1
        newPop(i,:)=mtx_b(ll,:);
    case 0
        newPop(i,:)=mtx_b(rl,:);
end

% mtx_shuffle=mtx_b(randperm(size(mtx_b, 1)), :);
% mtx_decoded=decode(mtx_shuffle,lBorder,rBorder);
% [fitness]=fitnessEstimate(mtx_decoded);
% lM=fitness(1:m/2,:);
% rM=fitness((m/2)+1:end,:);
% index=find(lM>=rM);
% newPop=mtx_b(index);
end