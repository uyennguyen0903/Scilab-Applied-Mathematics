//clf;
n = 4000;
x = -2*%pi : %pi/4/n : 2*%pi;
//thay so ni dc 20 30 40 ... 200
S = zeros(x);
for p = 0 : floor(n/2)   //chia lay phan du : module
    S = S + sin((2 * p + 1) * x) / (2 * p + 1);   
end
S = 4 * S/%pi;
plot(x,S);

// pour n >> 
// S(x) = 0 sur pi/2 + kpi
