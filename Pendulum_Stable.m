clear all; close all;

f = @(t,X)[X(2); X(1)-0.5*X(2)];

x1 = linspace(-pi/8,pi/8,20);
x2 = linspace(-0.5,0.5,20);


[x,y] = meshgrid(x1,x2);
u = zeros(size(x));
v = zeros(size(x));
t = 0;
for i = 1:numel(x)
    Xdot = f(t,[x(i);y(i)]);
    u(i) = Xdot(1);
    v(i) = Xdot(2);
end

quiver(x,y,u,v,'r');figure(gcf)

hold on

for x20 = [ -0.3 -0.2 -0.1 0 0.1 0.2 0.3]
    [ts,ys] = ode45(f,[0,1],[0;x20]);
    plot(ys(:,1),ys(:,2))
end
hold off
