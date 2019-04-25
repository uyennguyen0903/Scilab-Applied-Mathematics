N=5000;
x = zeros(2,N);
p = [1 1 1 1]/4;
P = cumsum(p);

M1 = 1/3 * eye(2,2);
M2 = 1/3 * eye(2,2) * [cos(%pi/3) -sin(%pi/3); sin(%pi/3) cos(%pi/3)];
M3 = 1/3 * eye(2,2) * [cos(-%pi/3) -sin(-%pi/3); sin(-%pi/3) cos(-%pi/3)];
M4 = 1/3 * eye(2,2);

b1 = zeros(2,1);
b2 = [1/3;0];
b3 = [1/2;sqrt(3)/6];
b4 = [2/3;0];

for i=1:N-1
    r = rand();
    if r < P(1)
        x(:,i+1) = M1 * x(:,i) + b1;
    elseif r < P(2)
        x(:,i+1) = M2 * x(:,i) + b2;
    elseif r < P(3)
        x(:,i+1) = M3 * x(:,i) + b3;
    else
        x(:,i+1) = M4 * x(:,i) + b4;    
    end
end

clf
plot(x(1,:),x(2,:),'.','markersize',1)
isoview
