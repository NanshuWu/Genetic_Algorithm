function [newPop]=mutation(mtx_b,mutRate)
% MUTATION 
m=size(mtx_b,1);
n=size(mtx_b,2);
pMtx=rand(m,n);
pMtx_unroll=pMtx(:);
mtx_b_unroll=mtx_b(:);
index=pMtx_unroll<mutRate;
% Inverse index value
newPop=abs(mtx_b_unroll-index);
newPop=reshape(newPop,m,n);
end