function [r]=randomInitialization(mtx)
% RANDOMINITIALIZAION
% fill the matrix with 0 and 1 randomly
r=randi([0,1],size(mtx));



% ++++++++++++++++++++++++++++++
%     m=size(mtx,1);
%     n=size(mtx,2);
%     mtx=mtx(:);
%     randMtx=rand(numel(mtx),1);
%     pIndex=(randMtx>=0.5);
%     nIndex=(randMtx<0.5);
%     randMtx(pIndex)=1;
%     randMtx(nIndex)=0;
%     r=reshape(randMtx,m,n);
% ++++++++++++++++++++++++++++++
end