function visuArm(theta,l,draw)
    // MT94, Visualisation d'un bras articulé dans l'espace
    // S. Mottelet, Mer 20 mar 2019 15:34:35 CET
    M1 = [l(1)*cos(theta(1))*cos(theta(3))
         l(1)*cos(theta(1))*sin(theta(3))
         l(1)*sin(theta(1))]    
    M2 = [l*cos(theta(1:2))'*cos(theta(3))
         l*cos(theta(1:2))'*sin(theta(3))
         l*sin(theta(1:2))']    
    coords = [[0;0;0] M1 M2];
    h = findobj("tag","arm")
    if isempty(h)
        param3d(coords(1,:),coords(2,:),coords(3,:))
        set(gce(),"tag","arm","mark_style",3,"thickness",2)
        param3d(coords(1,3),coords(2,3),coords(3,3))
        set(gce(),"tag","trace","foreground",color("red"))
        set(gca(),"data_bounds",[-2 2 -2 2 -2 2],"isoview","on")
    else
        h.data = coords';
        g = findobj("tag","trace")
        if draw // on laisse une trace
            g.data = [g.data; coords(:,3)']
        else // ou pas...
            g.data = [g.data; %nan %nan %nan; coords(:,3)']
        end
    end
    sleep(20)
endfunction

for t=linspace(0,2*%pi,100)
    visuArm([%pi/4 %pi/2 t],[1 2/3],%t)
end

for t=linspace(%pi/2,0,100)
    visuArm([%pi/4 t 0],[1 2/3],%f)
end

for t=linspace(0,2*%pi,100)
    visuArm([%pi/4 0 t],[1 2/3],%t)
end
