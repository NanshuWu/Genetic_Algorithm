format long g;
clear;
close all;
clc;

global chromSize;
global population;
global numLayer;
global numPara;
global optiDir;
global Generation;
global Gen;
global avgFitPerGen;
global lBorder;
global rBorder;
global elitism;

accuracy=5;
elitism=1;
lBorder=-1;
rBorder=2;
Generation=150;
optiDir=1;
population=50;
chromSize=chromoSize(accuracy,lBorder,rBorder,100);
avgFitPerGen=zeros(Generation,1);
pC=0.25;
pM=0.01;
numLayer=1;
%++++++++++For test+++++++++
% numofPara=3*numofLayer+2;
numPara=1;
%+++++++++++++++++++++++++++

mtx_b=randomInitialization(createGene());
mtx_Itr=decode(mtx_b,lBorder,rBorder);

for Gen=1:Generation
[~,allFitness,normPropTab,avgFit]=fitnessEstimate(mtx_Itr);
avgFitPerGen(Gen,1)=avgFit;
newPop_1=reproduction(mtx_b,mtx_Itr,normPropTab);
newGen_2=crossover(newPop_1,pC);
newPop_3=mutation(newGen_2,pM);
mtx_b=newPop_3;
mtx_Itr=decode(newPop_3,lBorder,rBorder);
end

mtx_i=decode(newPop_3,lBorder,rBorder);
[elite]=findElitism(mtx_i);
disp(elite(1));
disp(elite(3));
plotGA(Generation);

