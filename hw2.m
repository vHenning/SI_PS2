[e, y] = getData(50);

% Problem 2
yMat = zeros(size(y));
phiMat = zeros(size(y,1), 3);
for k = 2:size(y,1)-1
    yMat(k,1) = y(k+1);
    phiMat(k, 1) = y(k);
    phiMat(k, 2) = y(k-1);
    phiMat(k, 3) = e(k);
end

theta = inv(phiMat.'*phiMat)*phiMat.' * yMat;
