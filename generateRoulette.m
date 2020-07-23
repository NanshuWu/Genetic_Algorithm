function roulette = generateRoulette(normPropTab)
% CUMULATIVEPROPABILITY calculates the cumulative probability for each
% individual
roulette=zeros(size(normPropTab));
for i=1:size(normPropTab,1)
    if i==1
        roulette(1)=normPropTab(1);
        continue
    end
    roulette(i)=normPropTab(i)+roulette(i-1);
end
% m=size(proportion,1);
% r=zeros(m);
% for i=1:m
%     
% end
end