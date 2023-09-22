function [y] = mySystem(u)
    y = zeros(size(u,1),1);
    for k = 2:size(y,1)-1
        y(k+1) = 0.8*y(k) + 0.2 * (y(k)-y(k-1)) + u(k);
    end
