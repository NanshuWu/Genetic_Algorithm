function [newPop]=crossover(mtx_b,crossoverRate)
% CROSSOVER crossover gene of individuals
m=size(mtx_b,1);
n=size(mtx_b,2);

%++++++++++ with for++++++++++
mtx_b=mtx_b(randperm(size(mtx_b,1)),:);
pCros=repmat(crossoverRate,m,1);
pRand=rand(m,1);
isCros=(pRand<pCros);
crosPosi=randi([1,n-1],m,1);
for i=1:2:m
    if isCros(i)==0
        continue
    end
    position=crosPosi(i);
    tempA=[mtx_b(i,1:position),mtx_b(i+1,position+1:end)];
    tempB=[mtx_b(i+1,1:position),mtx_b(i,position+1:end)];
    mtx_b(i,:)=tempA;
    mtx_b(i,:)=tempB;
end
newPop=mtx_b;
% +++++++++++++++++++++++++++++++

%++++++++++Original++++++++++++++
% mtx_changerow=mtx_b(randperm(size(mtx_b,1)),:);
% mtx_transpose=mtx_changerow';
% vec=mtx_transpose(:);
% dcolumn=reshape(vec,[],2);
% cP=rand(size(dcolumn,1),1);
% sameElementIndex=(dcolumn(:,1)==dcolumn(:,2));
% pIndex=(cP<=crossoverRate);
% index=(sameElementIndex==pIndex);
% result=abs(dcolumn-index);
% result=reshape(result,n,m);
% newPop=result';
% +++++++++++++++++++++++++++++++
end