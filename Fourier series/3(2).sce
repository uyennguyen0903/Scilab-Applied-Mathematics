n = 400;
x = 0 : %pi/4/n : 2*%pi;
lambda = 1;

k = 1 : n;
a = -2 * sin(k*(%pi-lambda))./k/%pi;

for t = 0.001 : 0.001 : 5; // rand
    S = lambda/%pi;
    for k = 1 : n
        S = S + a(k)*exp(-k^2*t)*cos(k*x);
    end
    
    drawlater
    clf
    plot(x,S);
    gca().data_bounds(3:4) = [0,1];
    drawnow
    
end
