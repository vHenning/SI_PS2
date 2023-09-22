% Problem 1
function [e, y] = getData(dataSize)
    nSamples = int32(dataSize);
    e = randn(nSamples, 1);
    y = mySystem(e);
end
