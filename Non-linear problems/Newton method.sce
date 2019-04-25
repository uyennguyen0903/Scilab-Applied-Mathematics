clear

function y = f(x)
    y = x^2 - 2;
endfunction

function y = fPrime(x)  // fprime
    y = 2*x;
endfunction

a = 1;
b = 2;
x(1) = (a+b) / 2;
for k = 1 : 100
        x(k+1) = x(k) - f(x(k))/fPrime(x(k));
end

//disp(k)
disp(x)
//clf
e_newton = abs(x-sqrt(2));
plot(e_newton,'or')  // r :  red
