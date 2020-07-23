function mtxConfined = decode(mtx_b,lBorder,rBorder)
global chromSize;
% DECODE decodes the strings
mtx_d=b2d(chromSize,mtx_b);
scaleFactor=(rBorder-lBorder)/((2^chromSize)-1);
mtxConfined=lBorder+mtx_d.*scaleFactor;  
end