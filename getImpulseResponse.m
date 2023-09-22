function y = getImpulseResponse()
    u = zeros(50, 1);
    u(5) = 1;
    y = mySystem(u);