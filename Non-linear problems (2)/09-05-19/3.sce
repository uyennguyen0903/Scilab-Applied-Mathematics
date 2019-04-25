function out = g(theta, m)
    out = [l(1)*cos(theta(1))+l(2)*cos(theta(2))+l(3)*cos(theta(3))-xA
           l(1)*sin(theta(1))+l(2)*sin(theta(2))+l(3)*sin(theta(3))-yA
           lambda*(theta(2)-theta(1))
           lambda*(theta(3)-theta(2))];
endfunction

l = [1 1 1];
clf;
x = [];
y = [];
for i = 0 : 2*%pi/500 : 2*%pi
    xA = 1 + 0.5*cos(i);
    yA = 1 + 0.5*sin(i);
    lambda = 0.1;
    theta0 = [0 0 0];
    [theta,v,info] = lsqrsolve(theta0,g,4);
    x = [x, l(1)*cos(theta(1))+l(2)*cos(theta(2))+l(3)*cos(theta(3))];
    y = [y, l(1)*sin(theta(1))+l(2)*sin(theta(2))+l(3)*sin(theta(3))];
    //disp(theta);
    M = [[0 0]];
    for j = 1 : 3
        M = [M; [M(j,1)+l(j)*cos(theta(j)) M(j,2)+l(j)*sin(theta(j))]];
    end;
end
plot(x,y,'o');
plot(M(:,1),M(:,2),'r-');
legend("segment","trajectoire desirée",4)



