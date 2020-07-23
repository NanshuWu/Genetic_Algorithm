function [mtx_d] = b2d(chromoSize,mtx)
% B2D covert binary numbers to their decimal contenparts
        m=size(mtx,1);
        mtrx_reshp=reshape(mtx(:),[],chromoSize);
        pwmp=powerMap(2,chromoSize);
        mtx_d=mtrx_reshp*pwmp;
        mtx_d=reshape(mtx_d(:),m,[]);
end