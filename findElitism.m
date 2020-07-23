function [Elite]=findElitism(mtx_i)
% ELITISM find the fittest one
% Elite = [ fittest_y position_of_sorted_fitness_tabel x_position] 
global optiDir;

switch optiDir
    case 1
        [fittestValue, posi]=max(fitnessEstimate(mtx_i));
        xPosi=mtx_i(posi);
        Elite=[fittestValue, posi, xPosi];
    case 0
        [fittestValue, posi]=min(fitnessEstimate(mtx_i));
        xPosi=mtx_i(posi);
        Elite=[fittestValue, posi,xPosi];
    otherwise
        disp('switch error')
end