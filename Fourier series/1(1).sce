clf;
// Trace f
function out = f(t, T)
    out  =  ones(t) * -1;
    tmp = modulo(t,T);
    tmp = modulo(tmp+T,T);
    out(tmp <= %pi) = 1;
endfunction

T = 2*%pi;
t = -2*%pi : 0.0001 : 2*%pi;
plot(t, f(t),'r');

//Representer S
n = 1000; 
S = zeros(t);
for p = 0 : n
    S = S + sin(( 2 * p + 1) * t) / (2 * p + 1);   
end
S = 4 * S/%pi;
plot(t,S);
title('n = 1000');
gca().data_bounds =  [-2*%pi, 2*%pi, -1.5, 1.5];

