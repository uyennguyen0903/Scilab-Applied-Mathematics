//lear

function y = f(x)
    y = x^2 - 2;
endfunction

x(1) = 1;
x(2) = 2;
y(1) = 1;
y(2) = 2;
for k = 2 : 100
    if abs(f(x(k))) < 1e-10
        break
    end
    tv = (f(x(k))-f(x(k-1)))/(x(k)-x(k-1))  // tv : tout interval
    x(k+1) = x(k) - f(x(k))/tv;
    y(k+1) = k+1;
end
disp(k)
disp(x)
//clf
//e_secante = abs(x-sqrt(2));
e_secante = x;
plot(y,e_secante,'-oy')  // r :  red
