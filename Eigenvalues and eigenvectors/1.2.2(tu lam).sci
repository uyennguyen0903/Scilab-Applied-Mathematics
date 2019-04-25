function out = f(o,t)
    T = 2*%pi/o;
    //k = 0;
    //while ((k+1)*T <= t)
    //    k = k + 1;
    //end
    //t = t - k*T;
    t = modulo(t,T);
    if (0 <= t) && (t < T/2)
        out = 1
    else 
        out = 0;
    end
endfunction

function Uprime = fRessort(t, U)
    u      = U(1:2);
    uprime = U(3:4);
    Uprime = [ uprime
               -A * u + [0; 1/m2] * f(omega,t)];
endfunction

omega = sqrt(lambda1); // thay lambda2 nua
t = linspace(0,10,1000);
U = ode(zeros(4,1), 0, t, fRessort);
clf
//anime_os(t,U,m1,m2,5,5);
plot(t, U(1:2,:));
legend("Ressort 1","Ressort 2",2);
title("Graphique des mouvements de deux ressorts en prenant ω_1.")
