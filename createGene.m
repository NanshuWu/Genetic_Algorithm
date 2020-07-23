function [dnaMatrix]=createGene()
global chromSize;
global population;
global numLayer;
global numPara;
% CREATEGENE creat gene of individual
    dnaMatrix=zeros(population*numLayer,numPara*chromSize);
end