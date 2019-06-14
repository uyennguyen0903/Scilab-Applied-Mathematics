n = 400;
x = 0 : %pi/4/n : 2*%pi;
lambda = 1;

S = lambda/%pi;

k = 1 : n;
a = -2 * sin(k*(%pi-lambda))./k/%pi;

t = 0.001; // rand

for k = 1 : n
    S = S + a(k)*exp(-k^2*t)*cos(k*x);
end

clf
plot(x,S);
gca().data_bounds(3:4) = [0,1];
