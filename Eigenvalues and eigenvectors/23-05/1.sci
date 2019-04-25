function out = f(t, T)
    out = zeros(t);
    out(modulo(t,T) < T/2) = 1;
endfunction

T = 2*%pi;
t = 0 : 0.1 : 100;
plot(t, f(t));
gca().data_bounds =  [0, 100, -1, 2];

