function mtrx_d2I = dMap2Interval(mtx,leftBorder,rightBorder,subStringLength)
% DMAP2INTERVAL This function map decimals to the given border
    scaleFactor=(rightBorder-leftBorder)/((2^subStringLength)-1);
    mtrx_d2I=leftBorder+mtx.*scaleFactor;
end