function [fitness,allFitness,normPropTab,avgFit]=fitnessEstimate(mtx_i)
% FITNESSESSTIMATE esstimate the fitness of each one
global numPara;
global chromSize;
% global Gen;

fitness=mtx_i.*sin(10*pi.*mtx_i)+2.0;

%Scalling+++++++++++
% tFitness=0;
% T0=3000;
% T=T0*(0.99^(Gen-1));
% tFitness=exp(fitness/T);
% fitness=exp(fitness/T)./tFitness;
% tFitness=tFitness+fitness;
%+++++++++++++++++++
%
% x=mtx_i(:,1:size(mtx_i,2)/2);
% y=mtx_i(:,(size(mtx_i,2)/2)+1:end);
% fitness=(4-2.1*x.^2+((x.^4)/3))*x.^2+(x.*y)+(-4+4*y.^2).*y.^2;

allFitness=sum(fitness);
normPropTab=fitness./allFitness;
avgFit=mean(fitness);
% fitness=sort(fitn,'descend');
end