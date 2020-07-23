function newPop = reproduction(mtx_b,mtx_i,normPropTab)
% REPRODUCTION choose fitter individuals to get togather to a new
% population
global elitism;
global population;
% Original ++++++++++++++++++++++++++++++++++++++++
roulette=generateRoulette(normPropTab);
randomMat=rand(1,population);
randomMat=repmat(randomMat,population,1);
% RENEWPOPULATION renews population by Roulette
index=(population-sum(randomMat<roulette))+1;
newPop=mtx_b(index,:);
%++++++++++++++++++++++++++++++++++++++++++++++++++
%++++++++++++++++++++++++++++++++++++++++++++++++++
%newPop=championship(mtx_b);
%++++++++++++++++++++++++++++++++++++++++++++++++++
switch elitism
    case 1
    [elite]=findElitism(mtx_i);
    newPop(randi(50),:)=mtx_b(elite(2),:);
end