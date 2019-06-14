t = linspace(0,4,1000)
plot(t,1-exp(-t.^2/2))
// cai ni la phuong trinh nghiem chinh xac, ve ra de doi chieu sai so
/////////////////////////////////////////////////////////////////
function y = solution(t)
        y = 1- exp(-t.^2/2);
endfunction

function yprime = f1(t,y)
    yprime = -t*y+t;
endfunction

function y = euler(y0,t,f)
        n = length(t);
        y = zeros(1,n);
        h = t(2) - t(1);
        y(1) = y0;
        for i = 1 : n-1 
            y(i+1) = y(i) + h * f(t(i),y(i));
        end
endfunction

t = linspace(0,4,10);
y0 = 0;
y = euler(y0,t,f1);
plot(t,y,'-r')
///////////////////////////////////////////////////////////////////
