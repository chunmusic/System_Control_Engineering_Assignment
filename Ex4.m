clear all; close all;

f = @(t,X)[X(2); sin(X(1))-0.1*X(2)];

x1 = linspace(-2*pi,2*pi,20);
x2 = linspace(-2,2,20);



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

for x20 = [0 0.5 1 1.5 2 2.5]
	[ts,ys] = ode45(f,[0,50],[-pi;x20]);
	plot(ys(:,1),ys(:,2))
end
hold off
