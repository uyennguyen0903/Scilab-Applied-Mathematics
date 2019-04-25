N=10000;
x = zeros(2,N);
p = [1 1 1]/3;
P = cumsum(p);

M1 = 0.5 * eye(2,2);
M2 = 0.5 * eye(2,2);
M3 = 0.5 * eye(2,2);

b1 = zeros(2,1);
b2 = [0.5;0];
b3 = [1;sqrt(3)]/4;

for i=1:N-1
    r = rand();
    if r < P(1)
        x(:,i+1) = M1 * x(:,i) + b1;
    elseif r < P(2)
        x(:,i+1) = M2 * x(:,i) + b2;
    else
        x(:,i+1) = M3 * x(:,i) + b3;
    end
end

clf
plot(x(1,:),x(2,:),'.','markersize',1)
