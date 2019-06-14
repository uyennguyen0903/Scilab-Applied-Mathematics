function dydt = fpendule(t,y)
    theta = y(1);
    thetaprime = y(2);
    dydt = [thetaprime;
            -g/L*sin(theta)];
endfunction

clf;
t = linspace(0,10,1000);
L = 1;
g = 9.81;
theta0 = %pi*63/64;
disp(theta0);
y = ode([theta0;0], 0, t, fpendule);
theta = y(1,:);
plot(t, theta, t, theta0*cos(t*sqrt(g/L)));
t = 'La solution linéarisée et l’’aproximation de Scilab pour theta0 = 63π/64';
title(t);
legend('ode','La solution linearisée');


