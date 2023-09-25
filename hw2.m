y = getImpulseResponse();

plot(y);
input('Press button to continue');

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

% Problem 3
yPredicted = zeros(size(e, 1), 1);

for k=3:size(e,1)
    yPredicted(k) = predictor(y(k), y(k-1), e(k), theta);
end

% Shift yPredicted one to the right to be consistent with y
yPredicted = [0; yPredicted(1:size(yPredicted, 1)-1)];

xAxis = 1:size(y, 1);
plot(xAxis, [y, yPredicted]);

var(e)
var(y)
var(yPredicted)
