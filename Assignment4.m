clear all; close all;

f = @(t,X)[X(2); -3*X(1)-4*X(2)];

x1 = linspace(-1.5,1.5,20);
x2 = linspace(-1.5,1.5,20);



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

for x20 = [-1.5 -1.0 -0.5 -0.01 0 0.01 0.5 1.0 1.5]
	[ts,ys] = ode45(f,[0,50],[0;x20]);
	plot(ys(:,1),ys(:,2))
end
hold off
