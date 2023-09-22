% Problem 1
function [e, y] = getData(dataSize)
    nSamples = int32(dataSize);
    
    e = randn(nSamples, 1);
    %e = zeros(nSamples,1);
    %e(5) = 1;
    y = zeros(nSamples, 1);
    
    for k = 2:size(y,1)-1
        y(k+1) = 0.8*y(k) + 0.2 * (y(k)-y(k-1)) + e(k);
    end
end
