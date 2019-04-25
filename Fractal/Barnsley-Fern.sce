N = 100000;
x = zeros(2,N);
p = [0.01 0.85 0.07 0.07];
P = cumsum(p);

M1 = [0 0; 0 0.16];
M2 = [0.85 0.04; -0.04 0.85];
M3 = [0.20 -0.26; 0.23 0.22];
M4 = [-0.15 0.28; 0.26 0.24];

b1 = zeros(2,1);
b2 = [0;1.60];
b3 = [0;1.60];
b4 = [0;0.44];

for i=1:N-1
    r = rand();
    //disp(r);
    if r < P(1)
        x(:,i+1) = M1 * x(:,i) + b1
    elseif r < P(2)
        x(:,i+1) = M2 * x(:,i) + b2
    elseif r < P(3)
        x(:,i+1) = M3 * x(:,i) + b3
    else 
        x(:,i+1) = M4 * x(:,i) + b4
    end
end

clf
plot(x(1,:),x(2,:),'g.','markersize',1)

