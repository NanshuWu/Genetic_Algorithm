function chromSize = chromoSize(accuracy,leftBorder,rightBorder,iterationUl)
% CHOOSESUBSTRINGLENGTH choose substringlength of each parameter
    for i=1:iterationUl
    if (rightBorder-leftBorder)*10^(accuracy+1) <= (2^i)-1 && (rightBorder-leftBorder)*10^(accuracy+1) > 2^(i-1)
        chromSize=i;
       break;
    end
    end
end