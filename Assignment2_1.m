
syms x(t)
Dx = diff(x);

ode = diff(x,t,2)+3*diff(x,t)+2*x == 1;

cond1 = x(0) == 0;
cond2 = Dx(0) == 0; 

conds = [cond1 cond2];

xSol(t) = dsolve(ode,conds);

xSol = simplify(xSol)


figure;
ezplot(xSol,[0 10]);

